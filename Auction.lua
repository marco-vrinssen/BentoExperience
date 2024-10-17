-- POST ITEMS ON THE AUCTIONHOUSE WITH SPACEBAR

local KeyPressFrame = CreateFrame("Frame")

local function OnKeyPress(self, key)
    if key == "SPACE" then
        if AuctionHouseFrame and AuctionHouseFrame:IsShown() then
            local commoditiesSellFrame = AuctionHouseFrame.CommoditiesSellFrame
            local itemsSellFrame = AuctionHouseFrame.ItemsSellFrame

            if (commoditiesSellFrame and commoditiesSellFrame:IsShown()) or (itemsSellFrame and itemsSellFrame:IsShown()) then
                if commoditiesSellFrame and commoditiesSellFrame:IsShown() then
                    commoditiesSellFrame.PostButton:Click()
                elseif itemsSellFrame and itemsSellFrame:IsShown() then
                    itemsSellFrame.PostButton:Click()
                end
                self:SetPropagateKeyboardInput(false)
                return
            end
        end
    end
    self:SetPropagateKeyboardInput(true)
end

KeyPressFrame:SetScript("OnKeyDown", OnKeyPress)
KeyPressFrame:EnableKeyboard(true)
KeyPressFrame:SetPropagateKeyboardInput(true)