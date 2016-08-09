-- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config
GameStore.Categories = {
	-- You can use default key [...] or ["..."] or name (=)
	--[[ example = ]] {	name = "DarkKonia Store",
		state = GameStore.States.STATE_NEW,
		icons = {"extraserv.png"},
		offers = {
			-- Stackable Item Example : thingId = itemId
			-- {name = "Crystal Coin", thingId = 2160, count = 200, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 150, icons = {"Product_CC.png"}, description = "Become rich!"},
			-- Normal Item Example : thingId = itemId
			-- {name = "Sword", thingId = 2376, count = 3, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 150, icons = {"Product_CC.png"}, description = "Become rich!"},
			-- Outfit Example : thingId = lookType
			{name = "Dream Warden Outfit", thingId = {male = 577, female = 578}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 250, icons = {"warden.png"}},
			-- Addon Example : thingId = lookType, addon = ( 1 = addon 1, 2 = addon 2, 3 = both addons)
			-- {name = "Dream Warden Addon 1", thingId = {male=577,female=578}, addon = 1, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON, price = 320, icons = {"Product_DreamWarden_Addon1"}},
			-- Mount Example : thingId = mountId
			{name = "Titanica", thingId = 7, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 620, icons = {"Titanica.png"}, description = "This mount looks so hot!"},
			-- NameChange example
			{name = "Character Name Change", type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE, price = 500, icons = {"changename.png"}},
			-- Sexchange example
			{name = "Character Sex Change", type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE, price = 200, icons = {"changesex.png"}},
			-- Promotion example
			{name = "First Promotion", thingId = 1--[[ed/ms/rp/ek]], type = GameStore.OfferTypes.OFFER_TYPE_PROMOTION, price = 300, icons = {"promo.png"}}
		}
	},
}

-- For Explanation and information
-- view the readme.md file in github or via markdown viewer.

-- Non-Editable
local runningId = 1
for k, category in ipairs(GameStore.Categories) do
	if category.offers then
		for m, offer in ipairs(category.offers) do
			offer.id = runningId
			runningId = runningId + 1
			
			if not offer.type then
				offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
			end
		end
	end
end
