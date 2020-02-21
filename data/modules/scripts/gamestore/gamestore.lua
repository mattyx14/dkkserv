--[[
  Items have been updated so that if the offer type is not one of the types: OFFER_TYPE_OUTFIT, OFFER_TYPE_OUTFIT_ADDON,
  OFFER_TYPE_MOUNT, OFFER_TYPE_NAMECHANGE, OFFER_TYPE_SEXCHANGE, OFFER_TYPE_PROMOTION, OFFER_TYPE_EXPBOOST,
  OFFER_TYPE_PREYSLOT, OFFER_TYPE_PREYBONUS, OFFER_TYPE_TEMPLE, OFFER_TYPE_BLESSINGS, OFFER_TYPE_PREMIUM,
  OFFER_TYPE_ALLBLESSINGS
]]

-- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config

-- Premium

GameStore.Categories = {
	-- Blessings
	{
		icons = { "Category_Blessings.png" },
		name = "Blessings",
		offers = {
			{
				icons = { "Heart_of_the_Mountain.png" },
				name = "Heart of the Mountain",
				description = "Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:\n\n -1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n -2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n- only usable by purchasing character \n- maximum amount that can be owned by character: 5\n- added directly to the Record of Blessings \n- characters with a red or black skull will always lose all equipment upon death",
				price = 25,
				id = 7,
				type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
			}, 
			{
				icons = { "Blood_of_the_Mountain.png" },
				name = "Blood of the Mountain",
				description = "Reduces your character's chance to lose any items as well as the amount of your character's experience and skill loss upon death:\n\n -1 blessing = 8.00% less Skill / XP loss, 30% equipment protection\n -2 blessing = 16.00% less Skill / XP loss, 55% equipment protection\n- 3 blessing = 24.00% less Skill / XP loss, 75% equipment protection\n- 4 blessing = 32.00% less Skill / XP loss, 90% equipment protection\n- 5 blessing = 40.00% less Skill / XP loss, 100% equipment protection\n- 6 blessing = 48.00% less Skill / XP loss, 100% equipment protection\n- 7 blessing = 56.00% less Skill / XP loss, 100% equipment protection\n- only usable by purchasing character \n- maximum amount that can be owned by character: 5\n- added directly to the Record of Blessings \n- characters with a red or black skull will always lose all equipment upon death",
				price = 25,
				id = 8,
				type = GameStore.OfferTypes.OFFER_TYPE_BLESSINGS,
			}
		},
		rookgaard = true,
		state = GameStore.States.STATE_NONE,
	},
	{
		-- Base outfit has addon = 0 or no defined addon. By default addon is set to 0.
		description = "Buy your character one more of the classy outfits offered here.",
		icons = { "Category_Outfits.png" },
		name = "Outfits",
		offers = {
			{
				icons = { "Outfit_Retro_Citizen_Male.png", "Outfit_Retro_Citizen_Female.png" },
				name = "Retro Citizen",
				price = 870,
				sexId = {female = 975,  male = 974},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nDo you still remember your first stroll through the streets of Thais? For old times' sake, walk the paths of Nostalgia as a Retro Citizen!",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Hunter_Male.png", "Outfit_Retro_Hunter_Female.png" },
				name = "Retro Hunter",
				price = 870,
				sexId = {female = 973,  male = 972},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nWhenever you pick up your bow and spears, you walk down memory lane and think of your early days? Treat yourself with the fashionable Retro Hunter outfit and hunt some good old monsters from your childhood.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Knight_Male.png", "Outfit_Retro_Knight_Female.png" },
				name = "Retro Knight",
				price = 870,
				sexId = {female = 971,  male = 970},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nWho needs a fancy looking sword with bling-bling and ornaments? Back in the days, we survived without such unnecessary accessories! Time to show those younkers what a Retro Knight is made of.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Mage_Male.png", "Outfit_Retro_Mage_Female.png" },
				name = "Retro Wizzard",
				price = 870,
				sexId = {female = 969, male = 968},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nDress up as a Retro Mage and you will always cut a fine figure on the battleground while eliminating your enemies with your magical powers the old-fashioned way.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Nobleman_Male.png", "Outfit_Retro_Nobleman_Female.png" },
				name = "Retro Noblewoman",
				price = 870,
				sexId = { female = 967, male = 966},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nKing Tibianus has invited you to a summer ball and you have nothing to wear for this special event? Do not worry, the Retro Noble(wo)man outfit makes you a real eye catcher on every festive occasion.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Summoner_Male.png", "Outfit_Retro_Summoner_Female.png" },
				name = "Retro Summoner",
				price = 870,
				sexId = {female = 965, male = 964},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nWhile the Retro Mage usually throws runes and mighty spells directly at the enemies, the Retro Summoner outfit might be the better choice for Tibians that prefer to send mighty summons to the battlefield to keep their enemies at distance.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			},
			{
				icons = { "Outfit_Retro_Warrior_Male.png", "Outfit_Retro_Warrior_Female.png" },
				name = "Retro Warrior",
				price = 870,
				sexId = {female = 963, male = 962},
				description = "- only usable by purchasing character\n- colours can be changed using the Outfit dialog\n\nYou are fearless and strong as a behemoth but have problems finding the right outfit for your adventures? The Retro Warrior outfit is a must-have for all fashion-conscious old-school Tibians out there.",
				type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT,
			}
		},
		rookgaard = true,
		state = GameStore.States.STATE_NONE,
	},
	-- Extras						
	{
		description = "Buy an Extra Services.",
		icons = { "Category_Extras.png" },
		name = "Extra",
		offers = {
			-- Extras Services
			{
				icons = { "Name_Change.png" },
				name = "Name Change",
				price = 100,
				id = 65002,
				description = "Tired of your current character name? Purchase a new one!\n\n\n- only usable by purchasing character\n- relog required after purchase to finalise the name change",
				type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE,
			}, 
			{
				icons = { "Sex_Change.png" },
				name = "Sex Change",
				price = 100,
				id = 65003,
				description = "Turns your female character into a male one - or vice versa.\n\n\n- only usable by purchasing character\n- activated at purchase\n- you will keep all outfits you have purchased or earned in quest",
				type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE,
			},																		
			-- Usefull Things
			{
				icons = { "Gold_Pouch.png" },
				name = "Gold Pouch",
				id = 26377,
				count = 1,
				number = 1,
				price = 500,
				description = "Carries as many gold, platinum or crystal coins as your capacity allows, however, no other items.\n\n\n- only usable by purchasing character\n- will be sent to your Store inbox and can only be stored there and in depot box\n- can only be purchased once\n- use it to open it\n- always placed on the first position of your Store inbox",
				type = GameStore.OfferTypes.OFFER_TYPE_ITEM,
			},								
			{
				icons = { "Permanent_Prey_Slot.png" },
				name = "Permanent Prey Slot",
				id = 65007,
				price = 500,
				description = "Get an additional prey slot to activate additional prey!\n\n- only usable by purchasing character\n- maximum amount that can be owned by character: 3\n- added directly to Prey dialog",
				type = GameStore.OfferTypes.OFFER_TYPE_PREYSLOT,
			},								
			{
				icons = { "Prey_Bonus_Reroll.png" },
				name = "5x Prey Willcard",
				id = 65008,
				count = 20,
				price = 100,
				description = "Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.\n\n- only usable by purchasing character\n- added directly to Prey dialog\n- maximum amount that can be owned by character: 50",
				type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
			},
			{
				icons = { "Prey_Bonus_Reroll.png" },
				name = "20x Prey Willcard",
				id = 65009,
				count = 40,
				price = 180,
				description = "Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.\n\n- only usable by purchasing character\n- added directly to Prey dialog\n- maximum amount that can be owned by character: 50",
				type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
			},
			{
				icons = { "Temple_Teleport.png" },
				name = "Temple Teleport",
				id = 29019,
				count = 1,
				price = 50,
				description = "Teleports you instantly to your home temple.\n\n- only usable by purchasing character\n- use it to teleport you to your home temple\n- cannot be used while having a battle sign or a protection zone block\n- does not work in no-logout zones or close to a character's home temple",
				type = GameStore.OfferTypes.OFFER_TYPE_ITEM,
			},
			-- Boost
			{
				icons = { "XP_Boost.png" },
				name = "XP Boost",
				price = 30,
				id = 65010,
				type = GameStore.OfferTypes.OFFER_TYPE_EXPBOOST,
				description = "Purchase a boost that increases the experience points your character gains from hunting by 50%!\n\n\n- only usable by purchasing character\n- lasts for 1 hour hunting time\n- paused if stamina falls under 14 hours\n- can be purchased up to 5 times between 2 server saves\n- price increases with every purchase\n- cannot be purchased if an XP boost is already active",
			}
		},
		rookgaard = true,
		state = GameStore.States.STATE_NONE,
	},
}


-- Each outfit must be uniquely identified to distinguish between addons.
-- Here we dynamically assign ids for outfits. These ids must be unique.
local runningId = 45000
for k, category in ipairs(GameStore.Categories) do
  if category.name == "Outfits" and category.offers then
    for m, offer in ipairs(category.offers) do
      offer.id = runningId
      runningId = runningId + 1

      if not offer.type then
        offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
      end
    end
  end
end
