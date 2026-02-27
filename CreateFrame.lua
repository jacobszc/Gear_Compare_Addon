
local frame = CreateFrame("Frame", "GearCompareFrame", UIParent)




-- Frame has all methods of 3 parents. Object -> UiObject -> Region -> Frame

frame:EnableMouse(true)
frame:SetWidth(300)
frame:SetHeight(150)
frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0) -- inherited from region and sets frame to be postioned exactly the same as parent 
frame:EnableMouse(true)
frame:SetScript("OnEnter", MyFrame_OnEnter)
frame:SetScript("OnLeave", MyFrame_OnLeave)

-- setX methods are inherited from region

local bg = frame:CreateTexture(nil, "BACKGROUND")
bg:SetAllPoints(frame)
bg:SetTexture(1, 0, 0, 0.2) 

------------ get the stats of the equiped item that we hover over and possibly hold a key--------------------------------------------------------------------------------

-- get stats of hover over item in bag ---

GameTooltip:HookScript("OnTooltipSetItem", function(self)
    local name, link = self:GetItem()
    if link then
        print("Hovered item:", link)
    end
end)

