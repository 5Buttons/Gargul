---@type GL
local _, GL = ...;

---@param bagID number
---@param slot number
---@return any
function GL:getContainerItemInfo(bagID, slot)
    if (GL.isLegacy) then
        local icon, count, locked, quality, readable, lootable, link = GetContainerItemInfo(bagID, slot);

        if (not icon) then
            return nil;
        end

        return icon, count, locked, quality, readable, lootable, link, false, false,
        link and tonumber(link:match("item:(%d+)")), nil;
    end

    if (C_Container and C_Container.GetContainerItemInfo) then
        local Info = C_Container.GetContainerItemInfo(bagID, slot);

        if (not Info) then
            return nil;
        end

        return Info.iconFileID, Info.stackCount, Info.isLocked, Info.quality, Info.isReadable,
        Info.hasLoot, Info.hyperlink, Info.isFiltered, Info.hasNoValue, Info.itemID, Info.isBound;
    end

    if (GetContainerItemInfo) then
        return GetContainerItemInfo(bagID, slot)
    end

    return nil;
end
