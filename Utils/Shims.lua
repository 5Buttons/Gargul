---@type GL
local _, GL = ...;

-- AddOns
GL.GetAddOnEnableState = GL.GetAddOnEnableState or GetAddOnEnableState or C_AddOns.GetAddOnEnableState;
GL.GetAddOnInfo = GetAddOnInfo or C_AddOns.GetAddOnInfo;
GL.GetAddOnMetadata = GetAddOnMetadata or C_AddOns.GetAddOnMetadata;
GL.GetNumAddOns = GetNumAddOns or C_AddOns.GetNumAddOns;
GL.IsAddOnLoaded = IsAddOnLoaded or C_AddOns.IsAddOnLoaded;

-- Container
GL.GetContainerNumSlots = GetContainerNumSlots or C_Container.GetContainerNumSlots;
GL.UseContainerItem = UseContainerItem or C_Container.UseContainerItem;

-- CurrencyInfo
GL.GetCoinTextureString = GetCoinTextureString or C_CurrencyInfo.GetCoinTextureString;

-- Item
GL.GetItemInfo = GL.GetItemInfo or GetItemInfo or C_Item.GetItemInfo;
GL.GetItemInfoInstant = GL.GetItemInfoInstant or GetItemInfoInstant or C_Item.GetItemInfoInstant;

GL.Item = GL.Item or Item;
GL.ItemLocation = GL.ItemLocation or ItemLocation;
GL.C_Item = GL.C_Item or C_Item;

-- Enums
GL.Enum = GL.Enum or Enum;

-- Time
GL.GetServerTime = GL.GetServerTime or GetServerTime;

-- Group
GL.IsInRaid = GL.IsInRaid or IsInRaid;
GL.IsInGroup = GL.IsInGroup or IsInGroup;
GL.GetNumGroupMembers = GL.GetNumGroupMembers or GetNumGroupMembers;
GL.UnitIsGroupLeader = GL.UnitIsGroupLeader or UnitIsGroupLeader;
GL.UnitIsGroupAssistant = GL.UnitIsGroupAssistant or UnitIsGroupAssistant;
GL.GetRaidRosterInfo = GL.GetRaidRosterInfo or GetRaidRosterInfo;
GL.IsMasterLooter = GL.IsMasterLooter or IsMasterLooter;

-- Loot
GL.LOOT_SLOT_ITEM = GL.LOOT_SLOT_ITEM or LOOT_SLOT_ITEM;
GL.LOOT_SLOT_CURRENCY = GL.LOOT_SLOT_CURRENCY or LOOT_SLOT_CURRENCY;
GL.GetLootSlotInfo = GL.GetLootSlotInfo or function (...) return GetLootSlotInfo(...); end;
GL.GetLootSlotType = GL.GetLootSlotType or function (...) return GetLootSlotType(...); end;
GL.GetLootSourceInfo = GL.GetLootSourceInfo or function (...) return GetLootSourceInfo(...); end;
GL.GetMasterLootCandidate = GL.GetMasterLootCandidate or function (...) return GetMasterLootCandidate(...); end;

---@return boolean
GL.isInHeroicInstance = GL.isInHeroicInstance or function ()
    local _, _, difficultyID = GetInstanceInfo();
    return GL:inTable({ 2, 174, }, difficultyID);
end;

-- Guild
GL.CanEditOfficerNote = GL.CanEditOfficerNote or function ()
    return C_GuildInfo.CanEditOfficerNote();
end;

-- Units
GL.UnitClassBase = GL.UnitClassBase or UnitClassBase;
GL.GetClassColor = GL.GetClassColor or GetClassColor;

---@param GUID string
---@return boolean
GL.isPlayerGUID = GL.isPlayerGUID or function (GUID)
    return type(GUID) == "string" and GUID:find("^Player%-") ~= nil;
end;

---@param GUID string
---@return number|nil
GL.npcIDFromGUID = GL.npcIDFromGUID or function (GUID)
    if (type(GUID) ~= "string") then
        return;
    end

    return tonumber((select(6, strsplit("-", GUID))));
end;

-- Timers
---@param seconds number
---@param func function
GL.timerAfter = function (seconds, func)
    return GL.Ace:ScheduleTimer(func, seconds);
end;

-- UI
if (not GL.isLegacy) then
    GL.BackdropTemplate = BackdropTemplateMixin and "BackdropTemplate" or nil;
end
GL.LibDD = GL.LibDD or LibStub:GetLibrary("LibUIDropDownMenu-4.0", true);

---@param name string
---@return string
GL.nameForAPI = function (name)
    if (not GL.isLegacy or type(name) ~= "string") then
        return name;
    end

    local nameOnly, realm = name:match("^(.-)%-(.+)$");
    if (not nameOnly
        or strlower((realm:gsub("[%s%-]", ""))) ~= strlower(GL.User.realm or "")
    ) then
        return name;
    end

    return nameOnly;
end;

---@return table
GL.getMasterLooterFrame = function ()
    if (GL.isLegacy) then
        return _G.DropDownList1;
    end

    return _G.MasterLooterFrame;
end;

GL.BACKDROP_DARK_DIALOG_32_32 = _G.BACKDROP_DARK_DIALOG_32_32 or {
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11, },
};

---@param name string
---@param Parent table
---@return table
GL.createMaximizeMinimizeButton = function (name, Parent)
    if (not GL.isLegacy) then
        return CreateFrame("Button", name, Parent, "MaximizeMinimizeButtonFrameTemplate");
    end

    local Container = CreateFrame("Frame", name, Parent);

    local function createButton(suffix, icon)
        local Button = CreateFrame("Button", name .. suffix, Container);
        Button:SetSize(16, 16);
        Button:SetPoint("CENTER", Container, "CENTER", 0, 0);
        Button:SetNormalTexture(("Interface\\Buttons\\UI-%sButton-Up"):format(icon));
        Button:SetPushedTexture(("Interface\\Buttons\\UI-%sButton-Down"):format(icon));
        Button:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight", "ADD");

        return Button;
    end

    Container.MinimizeButton = createButton(".MinimizeButton", "Minus");
    Container.MaximizeButton = createButton(".MaximizeButton", "Plus");
    Container.MaximizeButton:Hide();

    return Container;
end;

local frameNameCount = 0;

---@param prefix string
---@return string
GL.uniqueFrameName = function (prefix)
    frameNameCount = frameNameCount + 1;
    return ("Gargul%s%d"):format(prefix, frameNameCount);
end;

---@param Parent table
---@return table
GL.createScrollFrame = function (Parent)
    local name = GL.uniqueFrameName("ScrollFrame");

    local ScrollFrame = CreateFrame("ScrollFrame", name, Parent, "UIPanelScrollFrameTemplate");
    ScrollFrame.ScrollBar = ScrollFrame.ScrollBar or _G[name .. "ScrollBar"];

    return ScrollFrame;
end;

---@param Region table
---@return table
GL.mouseRegionFor = function (Region)
    if (Region.HookScript) then
        return Region;
    end

    if (not Region._mouseFrame) then
        local MouseFrame = CreateFrame("Frame", nil, Region:GetParent());
        MouseFrame:SetAllPoints(Region);
        MouseFrame:EnableMouse(true);
        Region._mouseFrame = MouseFrame;
    end

    return Region._mouseFrame;
end;

---@param Widget table
---@param enabled boolean
GL.setEnabled = function (Widget, enabled)
    if (enabled) then
        Widget:Enable();
    else
        Widget:Disable();
    end
end;

---@param Widget table
---@param shown boolean
GL.setShown = function (Widget, shown)
    if (shown) then
        Widget:Show();
    else
        Widget:Hide();
    end
end;

---@param FontString table
---@return number
GL.unboundedStringWidth = function (FontString)
    if (not GL.isLegacy and FontString.GetUnboundedStringWidth) then
        return FontString:GetUnboundedStringWidth();
    end

    return FontString:GetStringWidth();
end;

---@param Frame table
---@param clip boolean
GL.setClipsChildren = function (Frame, clip)
    if (not GL.isLegacy and Frame.SetClipsChildren) then
        Frame:SetClipsChildren(clip);
    end
end;
GL.SOUNDKIT = GL.SOUNDKIT or SOUNDKIT;
GL.PlaySound = GL.PlaySound or PlaySound;
GL.FlashClientIcon = GL.FlashClientIcon or FlashClientIcon;

-- Item class IDs (LE_ITEM_CLASS_* may not exist in Retail/TBC anniversary)
-- Prefer LE_* when available, else Enum.ItemClass.* (Retail), else numeric fallback
GL.LE_ITEM_CLASS_RECIPE = LE_ITEM_CLASS_RECIPE or (GL.Enum and GL.Enum.ItemClass and GL.Enum.ItemClass.Recipe) or 9;
GL.LE_ITEM_CLASS_QUESTITEM = LE_ITEM_CLASS_QUESTITEM or (GL.Enum and GL.Enum.ItemClass and GL.Enum.ItemClass.Questitem) or 12;
GL.LE_ITEM_CLASS_MISCELLANEOUS = LE_ITEM_CLASS_MISCELLANEOUS or (GL.Enum and GL.Enum.ItemClass and GL.Enum.ItemClass.Miscellaneous) or 15;

-- Loot slot types (LOOT_SLOT_* absent in Retail; Enum.LootSlotType.Money may exist)
-- Numeric value 2 per wowpedia GetLootSlotType
GL.LOOT_SLOT_MONEY = LOOT_SLOT_MONEY or (GL.Enum and GL.Enum.LootSlotType and GL.Enum.LootSlotType.Money) or 2;

-- Item bind types (Enum.ItemBind.* may not exist in all clients)
-- Numeric values: None=0, OnAcquire=1, Quest=4 (verified in-game)
GL.LE_ITEM_BIND_NONE = (GL.Enum and GL.Enum.ItemBind and GL.Enum.ItemBind.None) or 0;
GL.LE_ITEM_BIND_ON_ACQUIRE = (GL.Enum and GL.Enum.ItemBind and GL.Enum.ItemBind.OnAcquire) or 1;
GL.LE_ITEM_BIND_QUEST = (GL.Enum and GL.Enum.ItemBind and GL.Enum.ItemBind.Quest) or 4;

-- ItemMiscellaneousSubclass.CompanionPet (numeric value 2 per wowpedia)
GL.LE_ITEM_MISCELLANEOUS_SUBCLASS_COMPANION_PET = (GL.Enum and GL.Enum.ItemMiscellaneousSubclass and GL.Enum.ItemMiscellaneousSubclass.CompanionPet) or 2;

-- PartyInfo
GL.InviteUnit = InviteUnit or C_PartyInfo.InviteUnit;

-- UI reload: C_UI.Reload exists from 1.13.2+, ReloadUI is legacy alias
GL.ReloadUI = C_UI and C_UI.Reload or ReloadUI;

---@param method string
---@param player? string
---@param threshold? string
---
---@test /script _G.Gargul.SetLootMethod("master", _G.Gargul.User.name, "common");
GL.SetLootMethod = function (method, player, threshold)
    if (not GL.User.isInGroup) then
        return print(ERR_NOT_IN_GROUP);
    end

    local Methods = {
        freeforall = 0,
        roundrobin = 1,
        master = 2,
        group = 3,
        needbeforegreed = 4,
        personalloot = 5,
    };

    local eventID = "SetLootMethodLootMethodChangedListener";
    GL.Events:unregister(eventID);

    local unregisterEventTimer = "SetLootMethodUnregisterEvent";
    local delayedSetThresholdTimer = "SetLootMethodSetThresholdDelay";
    GL:cancelTimer{ unregisterEventTimer, delayedSetThresholdTimer };

    if (UnitAffectingCombat("player")) then
        return GL:afterCombatDo(GL.SetLootMethod(method, player, threshold));
    end

    if (threshold) then
        local skipSetLootMethod = (function ()
            local currentLootMethod = GL.GetLootMethod();
            if (currentLootMethod == method
                or currentLootMethod == Methods[method]
            ) then
                GL.SetLootThreshold(threshold);
                return true;
            end

            GL.Events:register(eventID, "PARTY_LOOT_METHOD_CHANGED", function ()
                GL.Events:unregister(eventID);

                GL:after(.5, delayedSetThresholdTimer, function ()
                    GL.SetLootThreshold(threshold);
                end);
            end);

            GL:after(1, unregisterEventTimer, function ()
                GL.Events:unregister(eventID);
            end);

            return false;
        end)();

        if (skipSetLootMethod) then
            return;
        end
    end

    if (_G.SetLootMethod) then
        return SetLootMethod(method, player);
    end

    C_PartyInfo.SetLootMethod(Methods[method], player);
end;

---@param threshold string
---@param retry? boolean
---
---@test /script _G.Gargul.SetLootThreshold("legendary");
GL.SetLootThreshold = function (threshold, retry)
    local eventID = "SetLootThresholdLootMethodChangedListener";
    GL.Events:unregister(eventID);

    local getThresholdTimerID = "GetLootThresholdRetryTimer";
    local setThresholdTimerID = "SetLootThresholdRetryTimer";
    GL:cancelTimer{ getThresholdTimerID, setThresholdTimerID };

    local Thresholds = {
        poor = 0,
        common = 1,
        uncommon = 2,
        rare = 3,
        epic = 4,
        legendary = 5,
        artifact = 6,
        heirloom = 7,
        wowtoken = 8,
    };

    if (not retry) then
        GL.Events:register(eventID, "PARTY_LOOT_METHOD_CHANGED", function ()
            GL:cancelTimer(setThresholdTimerID);

            if (GetLootThreshold() ~= threshold) then
                retry = true;
                GL.SetLootThreshold(threshold, retry);
            end
        end);

        retry = true;
        GL:after(.5, setThresholdTimerID, function ()
            GL.SetLootThreshold(threshold, retry);
        end);
    else
        GL:after(.5, getThresholdTimerID, function ()
            if (GetLootThreshold() ~= Thresholds[threshold]) then
                GL:error(("Unable to set loot threshold to %s"):format(threshold));
            end
        end);
    end

    local method = SetLootThreshold and SetLootThreshold or C_PartyInfo.SetLootThreshold;
    method(Thresholds[threshold]);
end

--- More reboust, client-agnostic implementation which always includes a raid index for ease of use
---
---@test /dump _G.Gargul.GetLootMethod();
---
--- Only when loot master is enabled
---@test /dump GetRaidRosterInfo(select(2, _G.Gargul.GetLootMethod()));
GL.GetLootMethod = function ()
    if (GL.User.isMasterLooter and GL.User.raidIndex) then
        return "master", GL.User.raidIndex;
    end

    local method, masterLootPartyID, masterLooterRaidID = GetLootMethod();

    if (method ~= "master") then
        return method;
    end

    if (masterLooterRaidID) then
        return method, masterLooterRaidID;
    end

    if (masterLootPartyID) then
        return method, masterLootPartyID + 1;
    end

    return method;
end;
