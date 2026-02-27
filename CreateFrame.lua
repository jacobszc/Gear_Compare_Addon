
---- create a frame for which to spawn a wiki off of to display our info on whether an item is an upgrade or not ---------------

print(ITEM_MOD_INTELLECT_SHORT)


local frame = CreateFrame("Frame", "GearCompareFrame", UIParent)

-- Frame has all methods of 3 parents. Object -> UiObject -> Region -> Frame


frame:SetWidth(300)
frame:SetHeight(150)
frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0) -- inherited from region and sets frame to be postioned exactly the same as parent 

-- setX methods are inherited from region

local bg = frame:CreateTexture(nil, "BACKGROUND")
bg:SetAllPoints(frame)
bg:SetTexture(1, 0, 0, 0.2) 

------------ get the stats of the equiped item that we hover over and possibly hold a key--------------------------------------------------------------------------------

-- get stats of hover over item in bag ---

local item = GetContainerItemLink(bag,slot)


    local link = GetInventoryItemLink("player", i)

    if link then
        local stats = GetItemStats(link)

        if stats then
            DEFAULT_CHAT_FRAME:AddMessage(
                "Your item has " ..
                tostring(stats["ITEM_MOD_INTELLECT_SHORT"] or 0) ..
                " " .. ITEM_MOD_INTELLECT_SHORT .. "."
            )
        end
    end
