---@type GL
local _, GL = ...;

--[[
    3.3.5a (WotLK, interface 30300) compatibility layer

    Everything in here only runs on the 3.3.5a client. Implementations live in the GL namespace only,
    we never touch globals: other compatibility addons (like !!!ClassicAPI) define globals with
    different semantics (e.g. GetServerTime = GetTime) which we don't want to inherit.

    Utils/Shims.lua falls back to the modern client APIs for everything not defined here.
]]

GL.isLegacy = select(4, GetBuildInfo()) < 30400;

if (not GL.isLegacy) then
    return;
end

-- Capture the native implementations before anything else can wrap them
local nativeGetItemInfo = GetItemInfo;
local nativeUnitClass = UnitClass;

--[[ ENUMS ]]

--- Modern enum values used throughout the codebase. !!!ClassicAPI's Enum uses auction house numbering, hence our own copy
GL.Enum = {
    BagIndex = {
        Backpack = 0,
        Bag_1 = 1,
        Bag_2 = 2,
        Bag_3 = 3,
        Bag_4 = 4,
        Bank = -1,
        Keyring = -2,
        BankBag_1 = 5,
        BankBag_7 = 11,
    },
    ItemArmorSubclass = {
        Generic = 0,
        Cloth = 1,
        Leather = 2,
        Mail = 3,
        Plate = 4,
        Cosmetic = 5,
        Shield = 6,
        Libram = 7,
        Idol = 8,
        Totem = 9,
        Sigil = 10,
        Relic = 11,
    },
    ItemBind = {
        None = 0,
        OnAcquire = 1,
        OnEquip = 2,
        OnUse = 3,
        Quest = 4,
        ToWoWAccount = 7,
    },
    ItemClass = {
        Consumable = 0,
        Container = 1,
        Weapon = 2,
        Gem = 3,
        Armor = 4,
        Reagent = 5,
        Projectile = 6,
        Tradegoods = 7,
        ItemEnhancement = 8,
        Recipe = 9,
        Quiver = 11,
        Questitem = 12,
        Key = 13,
        Miscellaneous = 15,
        Glyph = 16,
    },
    ItemMiscellaneousSubclass = {
        Junk = 0,
        Reagent = 1,
        CompanionPet = 2,
        Holiday = 3,
        Other = 4,
        Mount = 5,
    },
    LootSlotType = {
        None = 0,
        Item = 1,
        Money = 2,
        Currency = 3,
    },
    UICursorType = {
        Default = 0,
        Item = 1,
        Money = 2,
    },
};

--[[ TIME ]]

--- GetServerTime doesn't exist on 3.3.5a, time() is the closest thing to a shared epoch timestamp
GL.GetServerTime = time;

--[[ ADDONS ]]

--- 3.3.5a has no enable state API, derive it from GetAddOnInfo (modern signature: character, addon)
---@return number 0 = disabled, 2 = enabled
GL.GetAddOnEnableState = function (character, addon)
    if (addon == nil) then
        addon = character;
    end

    local enabled = select(4, GetAddOnInfo(addon));
    return enabled and 2 or 0;
end;

--[[ GROUP ]]

GL.IsInRaid = function ()
    return GetNumRaidMembers() > 0;
end;

GL.IsInGroup = function ()
    return GetNumRaidMembers() > 0 or GetNumPartyMembers() > 0;
end;

GL.GetNumGroupMembers = function ()
    local raidMembers = GetNumRaidMembers();
    if (raidMembers > 0) then
        return raidMembers;
    end

    local partyMembers = GetNumPartyMembers();
    return partyMembers > 0 and partyMembers + 1 or 0;
end;

--- Returns the raid rank of the given unit (2 = leader, 1 = assistant, 0 = member), nil when not in a raid
---@param unit string
---@return number|nil
local function raidRank(unit)
    for index = 1, GetNumRaidMembers() do
        if (UnitIsUnit("raid" .. index, unit)) then
            return select(2, GetRaidRosterInfo(index));
        end
    end
end

GL.UnitIsGroupLeader = function (unit)
    unit = unit or "player";

    if (GetNumRaidMembers() > 0) then
        return raidRank(unit) == 2;
    end

    return UnitIsPartyLeader(unit) and true or false;
end;

GL.UnitIsGroupAssistant = function (unit)
    unit = unit or "player";

    return GetNumRaidMembers() > 0 and raidRank(unit) == 1;
end;

--- Is the given party unit ("player", "party1".."party4") the master looter?
---@param unit string
---@return boolean
local function partyUnitIsMasterLooter(unit)
    local method, partyMaster = GetLootMethod();

    if (method ~= "master" or not partyMaster) then
        return false;
    end

    return UnitIsUnit(unit, partyMaster == 0 and "player" or "party" .. partyMaster) and true or false;
end

local nativeGetRaidRosterInfo = GetRaidRosterInfo;

--- Modern clients return party members through GetRaidRosterInfo as well, 3.3.5a only does so in raids
--- Party index 1 is the player, 2 through 5 are party1 through party4
---@param index number
---@return string|nil, number, number, number, string, string, string, boolean, boolean, string, boolean
GL.GetRaidRosterInfo = function (index)
    if (GetNumRaidMembers() > 0) then
        return nativeGetRaidRosterInfo(index);
    end

    if (type(index) ~= "number" or index < 1 or index > GetNumPartyMembers() + 1) then
        return;
    end

    -- Without a party there's no roster at all
    if (GetNumPartyMembers() < 1) then
        return;
    end

    local unit = index == 1 and "player" or "party" .. (index - 1);
    local name, realm = UnitName(unit);

    if (not name) then
        return;
    end

    if (realm and realm ~= "") then
        name = name .. "-" .. realm;
    end

    local class, classFile = nativeUnitClass(unit);

    return name,
        UnitIsPartyLeader(unit) and 2 or 0,
        1,
        UnitLevel(unit),
        class,
        classFile,
        nil,
        UnitIsConnected(unit) and true or false,
        UnitIsDeadOrGhost(unit) and true or false,
        nil,
        partyUnitIsMasterLooter(unit);
end;

--- IsMasterLooter doesn't exist on 3.3.5a
---@return boolean
GL.IsMasterLooter = function ()
    local method, partyMaster, raidMaster = GetLootMethod();

    if (method ~= "master") then
        return false;
    end

    -- In raids, comparing names is the only reliable way across subgroups
    if (raidMaster) then
        return nativeGetRaidRosterInfo(raidMaster) == UnitName("player");
    end

    return partyMaster == 0;
end;

--- 3.3.5a returns 1/nil
---@return boolean
GL.CanEditOfficerNote = function ()
    return CanEditOfficerNote() and true or false;
end;

--[[ LOOT ]]

GL.LOOT_SLOT_ITEM = 1;
GL.LOOT_SLOT_MONEY = 2;
GL.LOOT_SLOT_CURRENCY = 3;

--- Modern return order: icon, name, quantity, currencyID, quality, locked, isQuestItem, questID, isActive
--- 3.3.5a returns: icon, name, quantity, quality, locked
---@param slot number
GL.GetLootSlotInfo = function (slot)
    local icon, name, quantity, quality, locked = _G.GetLootSlotInfo(slot);

    return icon, name, quantity, nil, quality, locked;
end;

---@param slot number
---@return number
GL.GetLootSlotType = function (slot)
    if (_G.LootSlotIsItem(slot)) then
        return GL.LOOT_SLOT_ITEM;
    end

    if (_G.LootSlotIsCoin(slot)) then
        return GL.LOOT_SLOT_MONEY;
    end

    return 0;
end;

--- 3.3.5a can't tell where loot came from. We use the GUID of the dead unit we're targeting, or a
--- unique ID per loot window otherwise. It's remembered until the loot window closes
local currentLootSourceGUID;
local LootSourceResetFrame = CreateFrame("Frame");
LootSourceResetFrame:RegisterEvent("LOOT_CLOSED");
LootSourceResetFrame:SetScript("OnEvent", function ()
    currentLootSourceGUID = nil;
end);

---@return string
GL.GetLootSourceInfo = function ()
    if (not currentLootSourceGUID) then
        if (UnitExists("target") and UnitIsDead("target")) then
            currentLootSourceGUID = UnitGUID("target");
        end

        currentLootSourceGUID = currentLootSourceGUID or ("Legacy-Loot-%.3f"):format(GetTime());
    end

    return currentLootSourceGUID;
end;

--- The modern API takes a loot slot as well, 3.3.5a only takes the candidate index
---@param _ number slot
---@param index number
---@return string|nil
GL.GetMasterLootCandidate = function (_, index)
    return _G.GetMasterLootCandidate(index);
end;

--- 3.3.5a difficulty indexes: dungeons 1 = normal, 2 = heroic. Raids 1/2 = 10/25 normal, 3/4 = 10/25 heroic.
--- Dynamic raids (ICC/RS) keep their size index and report heroic through dynamicDifficulty instead
---@return boolean
GL.isInHeroicInstance = function ()
    local _, instanceType, difficultyIndex, _, _, dynamicDifficulty, isDynamic = GetInstanceInfo();

    if (instanceType == "party") then
        return difficultyIndex == 2;
    end

    if (instanceType == "raid") then
        if (isDynamic) then
            return dynamicDifficulty == 1;
        end

        return (difficultyIndex or 0) >= 3;
    end

    return false;
end;

--[[ UNITS / CLASSES ]]

local ClassFileToID = {
    WARRIOR = 1,
    PALADIN = 2,
    HUNTER = 3,
    ROGUE = 4,
    PRIEST = 5,
    DEATHKNIGHT = 6,
    SHAMAN = 7,
    MAGE = 8,
    WARLOCK = 9,
    DRUID = 11,
};

--- 3.3.5a's UnitClassBase returns (localizedClass, classFile), the modern one returns (classFile, classID)
---@param unit string
---@return string|nil, number|nil
GL.UnitClassBase = function (unit)
    local _, classFile = nativeUnitClass(unit);

    if (not classFile) then
        return;
    end

    return classFile, ClassFileToID[classFile];
end;

--- Modern signature: classFile → r, g, b, hexColor ("ffrrggbb")
---@param classFile string
---@return number, number, number, string
GL.GetClassColor = function (classFile)
    local Color = RAID_CLASS_COLORS[classFile or ""];

    if (not Color) then
        return 1, 1, 1, "ffffffff";
    end

    return Color.r, Color.g, Color.b, ("ff%02x%02x%02x"):format(Color.r * 255, Color.g * 255, Color.b * 255);
end;

--- 3.3.5a GUIDs look like 0x0000000000123456. The low three bits of the 3rd hex digit hold the unit type (0 = player)
---@param GUID string
---@return boolean
GL.isPlayerGUID = function (GUID)
    if (type(GUID) ~= "string" or not GUID:match("^0x%x+$")) then
        return false;
    end

    return bit.band(tonumber(GUID:sub(1, 5)) or -1, 0x007) == 0;
end;

--- Extract the creature/NPC ID from a 3.3.5a GUID
---@param GUID string
---@return number|nil
GL.npcIDFromGUID = function (GUID)
    if (type(GUID) ~= "string" or not GUID:match("^0x%x+$")) then
        return;
    end

    local unitType = bit.band(tonumber(GUID:sub(1, 5)) or -1, 0x007);

    -- 3 = creature, 5 = vehicle
    if (unitType ~= 3 and unitType ~= 5) then
        return;
    end

    return tonumber(GUID:sub(9, 12), 16);
end;

--[[ ITEMS ]]

--- Modern classID per (3.3.5a) auction house class index, see GetAuctionItemClasses()
local AuctionClassIndexToClassID = { 2, 4, 1, 0, 16, 7, 6, 11, 9, 3, 15, 12 };

--- Modern subclassIDs per auction house subclass index, where they differ from index - 1
local AuctionSubClassIndexToSubClassID = {
    [2] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 13, 14, 15, 16, 18, 19, 20 }, -- Weapon
    [4] = { 0, 1, 2, 3, 4, 6, 7, 8, 9, 10 }, -- Armor
    [0] = { 5, 1, 2, 3, 7, 6, 4, 8 }, -- Consumable
};

--- Localized type => classID and "classID.localizedSubType" => subClassID, built lazily
local ItemTypeToClassID, ItemSubTypeToSubClassID;

local function buildItemClassLookup()
    ItemTypeToClassID, ItemSubTypeToSubClassID = {}, {};

    for classIndex, className in ipairs({ GetAuctionItemClasses() }) do
        local classID = AuctionClassIndexToClassID[classIndex];

        if (classID) then
            ItemTypeToClassID[className] = classID;

            for subClassIndex, subClassName in ipairs({ GetAuctionItemSubClasses(classIndex) }) do
                local SubClassIDs = AuctionSubClassIndexToSubClassID[classID];
                local subClassID = SubClassIDs and SubClassIDs[subClassIndex] or subClassIndex - 1;

                ItemSubTypeToSubClassID[classID .. "." .. subClassName] = subClassID;
            end
        end
    end
end

--- Translate GetItemInfo's localized type/subtype into modern class and subclass IDs
---@param itemType string
---@param itemSubType string
---@return number|nil, number|nil
GL.getItemClassIDs = function (itemType, itemSubType)
    if (not ItemTypeToClassID) then
        buildItemClassLookup();
    end

    local classID = ItemTypeToClassID[itemType or ""];

    if (not classID) then
        return;
    end

    return classID, ItemSubTypeToSubClassID[classID .. "." .. tostring(itemSubType)];
end;

local ScanTooltip;

--- Get a hidden tooltip for reading item details the 3.3.5a API doesn't expose
---@return table
GL.getScanTooltip = function ()
    if (not ScanTooltip) then
        ScanTooltip = CreateFrame("GameTooltip", "GargulLegacyScanTooltip", nil, "GameTooltipTemplate");
    end

    ScanTooltip:SetOwner(WorldFrame, "ANCHOR_NONE");
    ScanTooltip:ClearLines();

    return ScanTooltip;
end;

local BindTypeByItemID = {};

--- 3.3.5a GetItemInfo has no bindType return, read it from the tooltip instead (requires a cached item)
---@param itemLink string
---@return number|nil
GL.getItemBindType = function (itemLink)
    local itemID = tonumber(tostring(itemLink):match("item:(%d+)"));

    if (not itemID) then
        return;
    end

    if (BindTypeByItemID[itemID] ~= nil) then
        return BindTypeByItemID[itemID];
    end

    local Tooltip = GL.getScanTooltip();
    Tooltip:SetHyperlink("item:" .. itemID);

    local numLines = Tooltip:NumLines();

    -- The item is not cached yet, don't remember anything
    if (numLines < 1) then
        return;
    end

    local BindTexts = {
        { ITEM_BIND_ON_PICKUP, GL.Enum.ItemBind.OnAcquire },
        { ITEM_SOULBOUND, GL.Enum.ItemBind.OnAcquire },
        { ITEM_BIND_ON_EQUIP, GL.Enum.ItemBind.OnEquip },
        { ITEM_BIND_ON_USE, GL.Enum.ItemBind.OnUse },
        { ITEM_BIND_QUEST, GL.Enum.ItemBind.Quest },
        { ITEM_BIND_TO_ACCOUNT, GL.Enum.ItemBind.ToWoWAccount },
        { ITEM_ACCOUNTBOUND, GL.Enum.ItemBind.ToWoWAccount },
    };

    local bindType = GL.Enum.ItemBind.None;
    for line = 2, math.min(numLines, 5) do
        local FontString = _G["GargulLegacyScanTooltipTextLeft" .. line];
        local text = FontString and FontString:GetText();

        for _, BindText in ipairs(BindTexts) do
            if (text and BindText[1] and text == BindText[1]) then
                bindType = BindText[2];
                break;
            end
        end

        if (bindType ~= GL.Enum.ItemBind.None) then
            break;
        end
    end

    BindTypeByItemID[itemID] = bindType;

    return bindType;
end;

--- Modern-shaped GetItemInfo: appends classID, subClassID, bindType, expansionID, setID and isCraftingReagent
---@return ...
GL.GetItemInfo = function (item)
    if (item == nil) then
        return;
    end

    local name, link, quality, itemLevel, requiredLevel, itemType, itemSubType, stackCount, equipLoc, texture, sellPrice = nativeGetItemInfo(item);

    if (not name) then
        return;
    end

    local classID, subClassID = GL.getItemClassIDs(itemType, itemSubType);

    return name, link, quality, itemLevel, requiredLevel, itemType, itemSubType, stackCount, equipLoc,
        texture, sellPrice, classID, subClassID, GL.getItemBindType(link), 2, nil, false;
end;

--- 3.3.5a has no way to get item info without the item being cached. When it's not cached we only return the ID
---@return number|nil, string|nil, string|nil, string|nil, string|nil, number|nil, number|nil
GL.GetItemInfoInstant = function (item)
    if (item == nil) then
        return;
    end

    local itemID = tonumber(item) or tonumber(tostring(item):match("item:(%-?%d+)"));

    -- An item name was provided, that only works for cached items
    if (not itemID) then
        local link = select(2, nativeGetItemInfo(item));
        itemID = link and tonumber(link:match("item:(%d+)"));

        if (not itemID) then
            return;
        end
    end

    local _, _, _, _, _, itemType, itemSubType, _, equipLoc, texture = nativeGetItemInfo(itemID);

    if (not itemType) then
        return itemID;
    end

    local classID, subClassID = GL.getItemClassIDs(itemType, itemSubType);

    return itemID, itemType, itemSubType, equipLoc, texture, classID, subClassID;
end;

--[[ ITEM LOCATIONS (bags only) ]]

GL.ItemLocation = {
    CreateFromBagAndSlot = function (_, bag, slot)
        return { bagID = bag, slotIndex = slot, };
    end,
};

---@param Location table
---@return string|nil
local function locationLink(Location)
    if (type(Location) ~= "table" or not Location.bagID) then
        return;
    end

    return GetContainerItemLink(Location.bagID, Location.slotIndex);
end

--- C_Item stand-in for the location based functions we use. Item GUIDs don't exist on 3.3.5a, we use
--- "Legacy-bag-slot-itemID" instead: unique at any given time but no longer valid once the item moves
GL.C_Item = {
    DoesItemExist = function (Location)
        return locationLink(Location) ~= nil;
    end,
    GetItemLink = locationLink,
    GetItemID = function (Location)
        local link = locationLink(Location);
        return link and tonumber(link:match("item:(%d+)"));
    end,
    GetItemGUID = function (Location)
        local itemID = GL.C_Item.GetItemID(Location);

        if (not itemID) then
            return;
        end

        return ("Legacy-%d-%d-%d"):format(Location.bagID, Location.slotIndex, itemID);
    end,
    GetItemQuality = function (Location)
        local link = locationLink(Location);
        return link and select(3, nativeGetItemInfo(link));
    end,
    GetItemIcon = function (Location)
        return (GetContainerItemInfo(Location.bagID, Location.slotIndex));
    end,
    GetDetailedItemLevelInfo = function (item)
        return (select(4, nativeGetItemInfo(item)));
    end,
    GetItemNameByID = function (item)
        return (nativeGetItemInfo(item));
    end,
};

--[[ ITEM OBJECTS (stand-in for Blizzard's ItemMixin) ]]

local ItemObject = {};
ItemObject.__index = ItemObject;

function ItemObject:IsItemEmpty()
    return self.itemID == nil;
end

function ItemObject:GetItemID()
    return self.itemID;
end

function ItemObject:GetItemLink()
    return self.itemLink or select(2, nativeGetItemInfo(self.itemID));
end

function ItemObject:GetItemName()
    return (nativeGetItemInfo(self.itemLink or self.itemID));
end

function ItemObject:GetItemIcon()
    return select(10, nativeGetItemInfo(self.itemLink or self.itemID));
end

function ItemObject:GetItemQuality()
    return select(3, nativeGetItemInfo(self.itemLink or self.itemID));
end

function ItemObject:GetCurrentItemLevel()
    return select(4, nativeGetItemInfo(self.itemLink or self.itemID));
end

function ItemObject:IsItemDataCached()
    return self.itemID ~= nil and nativeGetItemInfo(self.itemID) ~= nil;
end

--- Items waiting for server data: itemID => { callbacks }
local PendingItems = {};
local PendingSince = {};
local ITEM_LOAD_TIMEOUT = 10;
local ItemLoader;

--- Ask the server for item data, 3.3.5a does this when a tooltip shows an uncached item
---@param itemID number
local function requestItem(itemID)
    local Tooltip = GL.getScanTooltip();
    Tooltip:SetHyperlink("item:" .. itemID);
end

local function checkPendingItems()
    local now = GetTime();

    for itemID, Callbacks in pairs(PendingItems) do
        local cached = nativeGetItemInfo(itemID) ~= nil;

        if (cached or now - PendingSince[itemID] > ITEM_LOAD_TIMEOUT) then
            PendingItems[itemID] = nil;
            PendingSince[itemID] = nil;

            -- Like ContinueOnItemLoad, callbacks only fire for items that actually loaded
            if (cached) then
                for _, callback in ipairs(Callbacks) do
                    pcall(callback);
                end
            end
        end
    end

    if (not next(PendingItems)) then
        ItemLoader:Hide();
    end
end

---@param callback function
function ItemObject:ContinueOnItemLoad(callback)
    if (self:IsItemEmpty()) then
        return;
    end

    if (self:IsItemDataCached()) then
        callback();
        return;
    end

    if (not ItemLoader) then
        local throttle = 0;
        ItemLoader = CreateFrame("Frame");
        ItemLoader:Hide();
        ItemLoader:SetScript("OnUpdate", function (_, elapsed)
            throttle = throttle + elapsed;

            if (throttle >= .1) then
                throttle = 0;
                checkPendingItems();
            end
        end);
    end

    if (not PendingItems[self.itemID]) then
        PendingItems[self.itemID] = {};
        PendingSince[self.itemID] = GetTime();
        requestItem(self.itemID);
    end

    tinsert(PendingItems[self.itemID], callback);
    ItemLoader:Show();
end

GL.Item = {
    CreateFromItemID = function (_, itemID)
        return setmetatable({ itemID = tonumber(itemID), }, ItemObject);
    end,
    CreateFromItemLink = function (_, itemLink)
        local itemID = tonumber(tostring(itemLink):match("item:(%-?%d+)"));

        -- Callers sometimes pass an item ID as a string (e.g. "45470" from SoftRes data)
        if (not itemID) then
            return setmetatable({ itemID = tonumber(itemLink), }, ItemObject);
        end

        return setmetatable({ itemID = itemID, itemLink = itemLink, }, ItemObject);
    end,
    CreateFromBagAndSlot = function (_, bag, slot)
        local itemLink = GetContainerItemLink(bag, slot);
        local itemID = itemLink and tonumber(itemLink:match("item:(%d+)"));
        return setmetatable({ itemID = itemID, itemLink = itemLink, }, ItemObject);
    end,
};

--[[ UI ]]

--- Frames have SetBackdrop natively on 3.3.5a, there's no BackdropTemplate
GL.BackdropTemplate = nil;

--- 3.3.5a sounds are played by name
GL.SOUNDKIT = {
    GS_TITLE_OPTION_EXIT = "gsTitleOptionExit",
    IG_MAINMENU_OPTION_CHECKBOX_OFF = "igMainMenuOptionCheckBoxOff",
    IG_MAINMENU_OPTION_CHECKBOX_ON = "igMainMenuOptionCheckBoxOn",
    RAID_WARNING = "RaidWarning",
};

local SoundNameByID = {
    [799] = "gsTitleOptionExit",
    [856] = "igMainMenuOptionCheckBoxOn",
    [857] = "igMainMenuOptionCheckBoxOff",
    [8959] = "RaidWarning",
};

---@param sound number|string
GL.PlaySound = function (sound, ...)
    sound = SoundNameByID[sound] or sound;

    if (type(sound) ~= "string") then
        return;
    end

    return PlaySound(sound, ...);
end;

--- Not available on 3.3.5a
GL.FlashClientIcon = function () end;

--- LibUIDropDownMenu-4.0 doesn't load on 3.3.5a. This stand-in mimics its method-style API
--- (LibDD:UIDropDownMenu_SetWidth(...) etc.) by forwarding to the native UIDropDownMenu functions
GL.LibDD = setmetatable({
    Create_UIDropDownMenu = function (_, name, parent)
        -- The 3.3.5a dropdown functions concatenate the frame name, it must have one
        name = name or GL.uniqueFrameName("DropDown");
        local DropDown = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate");

        -- 3.3.5a's template only names its children ($parentText etc.), modern code expects parentKeys
        for _, key in pairs({ "Text", "Button", "Icon", "Left", "Middle", "Right", }) do
            DropDown[key] = DropDown[key] or _G[name .. key];
        end

        return DropDown;
    end,
}, {
    __index = function (LibDD, key)
        local native = _G[key];

        if (type(native) ~= "function") then
            return;
        end

        local method = function (_, ...)
            return native(...);
        end;

        rawset(LibDD, key, method);
        return method;
    end,
});
