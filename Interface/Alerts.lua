---@type GL
local _, GL = ...;

local FADE_IN = .2;
local HOLD = 4.05;
local FADE_OUT = 1.5;
local MAX_VISIBLE = 4;
local SPACING = 4;

---@class AlertInterface
GL.Interface.Alerts = {
    Active = {},
    Queue = {},
    Pool = {},
};

local Alerts = GL.Interface.Alerts;

function Alerts:layout()
    local offset = 0;

    for _, Alert in ipairs(self.Active) do
        Alert:ClearAllPoints();
        Alert:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 220 + offset);
        offset = offset + Alert:GetHeight() + SPACING;
    end
end

---@param Alert table
function Alerts:release(Alert)
    Alert:Hide();
    Alert:SetScript("OnUpdate", nil);
    Alert:SetScript("OnClick", nil);
    Alert:SetScript("OnEnter", nil);
    Alert:SetScript("OnLeave", nil);

    for index, ActiveAlert in ipairs(self.Active) do
        if (ActiveAlert == Alert) then
            tremove(self.Active, index);
            break;
        end
    end

    tinsert(self.Pool, Alert);
    self:layout();

    local Next = tremove(self.Queue, 1);
    if (Next) then
        self:show(unpack(Next));
    end
end

---@return table
function Alerts:acquire()
    local Alert = tremove(self.Pool);

    if (Alert) then
        return Alert;
    end

    Alert = CreateFrame("Button", nil, UIParent);
    Alert:SetFrameStrata("DIALOG");
    Alert:SetSize(249, 50);

    local Background = Alert:CreateTexture(nil, "BACKGROUND");
    Background:SetTexture("Interface\\AddOns\\Gargul\\Assets\\Textures\\alert_default");
    Background:SetTexCoord(0.0078125, 0.91796875, 0.0234375, 0.8828125);
    Background:SetAllPoints();
    Alert.Background = Background;

    local Icon = Alert:CreateTexture(nil, "BORDER");
    Icon:SetSize(38, 38);
    Icon:SetPoint("LEFT", Alert, "LEFT", 16, 0);
    Alert.Icon = Icon;

    local Label = Alert:CreateFontString(nil, "ARTWORK", "GameFontNormal");
    Label:SetJustifyH("LEFT");
    Label:SetPoint("TOPLEFT", Icon, "TOPRIGHT", 10, 2);
    Alert.Label = Label;

    local Message = Alert:CreateFontString(nil, "ARTWORK", "GameFontHighlightLarge");
    Message:SetJustifyH("LEFT");
    Alert.Message = Message;

    return Alert;
end

---@param frameType string
function Alerts:show(frameType, ...)
    if (#self.Active >= MAX_VISIBLE) then
        tinsert(self.Queue, { frameType, ... });
        return;
    end

    local Alert = self:acquire();
    Alert.Label:SetText("");
    Alert.Message:ClearAllPoints();

    if (frameType == "Item") then
        local itemID, title, message = ...;

        Alert:SetSize(249, 71);
        Alert.Icon:SetTexture("Interface\\AddOns\\Gargul\\Assets\\Icons\\softres");
        Alert.Message:SetPoint("BOTTOMLEFT", Alert.Icon, "BOTTOMRIGHT", 10, 2);
        Alert.Message:SetText(message or "");

        GL:onItemLoadDo(itemID, function (Details)
            local longestLength = math.max(strlen(Details.name), strlen(message or ""));

            Alert.Label:SetText(title or Details.link);
            Alert.Icon:SetTexture(Details.icon);

            Alert:SetScript("OnEnter", function ()
                Alert.hovered = true;
                GameTooltip:SetOwner(Alert, "ANCHOR_TOP");
                GameTooltip:SetHyperlink(Details.link);
                GameTooltip:Show();
            end);

            Alert:SetScript("OnLeave", function ()
                Alert.hovered = false;
                GameTooltip:Hide();
            end);

            Alert:SetWidth(249 + (longestLength * 3));
        end);
    else
        local Details = GL:tableMerge({
            message = "",
            icon = "Interface\\AddOns\\Gargul\\Assets\\Icons\\gargul",
            hex = "",
        }, (...) or {});

        Alert:SetSize(249, 50);
        Alert.Icon:SetTexture(Details.icon);
        Alert.Message:SetPoint("LEFT", Alert.Icon, "RIGHT", 10, 0);
        Alert.Message:SetText(Details.message);

        if (type(Details.onClick) == "function") then
            Alert:SetScript("OnClick", function ()
                Details.onClick();
                self:release(Alert);
            end);
        end

        Alert:SetScript("OnEnter", function () Alert.hovered = true; end);
        Alert:SetScript("OnLeave", function () Alert.hovered = false; end);
    end

    local elapsed = 0;
    Alert.hovered = false;
    Alert:SetAlpha(0);
    Alert:SetScript("OnUpdate", function (_, delta)
        if (Alert.hovered) then
            elapsed = math.min(elapsed, FADE_IN + HOLD);
            Alert:SetAlpha(1);
            return;
        end

        elapsed = elapsed + delta;

        if (elapsed < FADE_IN) then
            Alert:SetAlpha(elapsed / FADE_IN);
        elseif (elapsed < FADE_IN + HOLD) then
            Alert:SetAlpha(1);
        elseif (elapsed < FADE_IN + HOLD + FADE_OUT) then
            Alert:SetAlpha(1 - ((elapsed - FADE_IN - HOLD) / FADE_OUT));
        else
            self:release(Alert);
        end
    end);

    tinsert(self.Active, Alert);
    self:layout();
    Alert:Show();
end

---@param frameType string GargulNotification|Item
---@return boolean
function Alerts:fire(frameType, ...)
    if (frameType == "GargulNotification" or frameType == "Item") then
        self:show(frameType, ...);
    end

    return true;
end
