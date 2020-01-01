--[[
  Items have been updated so that if the offer type is not one of the types: OFFER_TYPE_OUTFIT, OFFER_TYPE_OUTFIT_ADDON,
  OFFER_TYPE_MOUNT, OFFER_TYPE_NAMECHANGE, OFFER_TYPE_SEXCHANGE, OFFER_TYPE_PROMOTION, OFFER_TYPE_EXPBOOST,
  OFFER_TYPE_PREYSLOT, OFFER_TYPE_PREYBONUS, OFFER_TYPE_TEMPLE, OFFER_TYPE_BLESSINGS, OFFER_TYPE_PREMIUM,
  OFFER_TYPE_ALLBLESSINGS (it was not a non-item) then:
  1) If the offer's name didn't exist in items.xml then the offer has been removed.
    These items were removed from the shop because the name didn't exist in items.xml
    [ "Alchemistic Scales", "Alchemist Table", "Pile of Alchemist Books", "Alchemist Cup Board", "Torch of Change", "Ferumbras Bust", "Queen Eloise Bust", "Arrival At Thais Painting", "Tibia Street Painting", "Ferumbras Portrait", "SupremeHealth Potion", "Health Keg", "Strong Health Keg", "Great Health Keg", "Ultimate Health Keg", "Supreme Health Keg", "Mana Keg", "Strong Mana Keg", "Great Mana Keg", "Ultimate Mana Keg", "Ultimate Spirit Keg", "Disintegrate Rune", "Paralyse Rune", "Alchemistic Scales", "Alchemist Table", "Pile of Alchemist Books", "Alchemist Cup Board", "Torch of Change", "Ferumbras Bust", "Queen Eloise Bust", "Arrival At Thais Painting", "Tibia Street Painting", "Ferumbras Portrait", "Demon Pit", "Venoream Table Clock", "StoneTiles", "Bath Tube", "Daily Reward Shrine", "Health Cask", "Strong Health Cask", "Great Health Cask", "Ultimate Health Cask", "Supreme Health Cask", "Mana Cask", "Strong Mana Cask", "Great Mana Cask", "Ultimate Mana Cask", "Great Spirit Cask", "Ultimate Spirit Cask", "Skull Lamp", "Fish Tank", "Lit Protectress Lamp", "Lit Predator Lamp", "LordlyTapestry", "All-Seeing Tapestry", "Gold Pouch" ]
  2) If the offer's name did exist in items.xml then the thingId of the offer has been updated
     so that it matches the item id in items.xml.
]]

-- Parser
dofile('data/modules/scripts/gamestore/init.lua')
-- Config
GameStore.Categories = { 
  {
      description = "Buy an Extra Services.",
      icons = { "Category_ExtraServices.png" },
      name = "Extra Services",
      offers = { 
            {
            icons = { "namechanger.png" },
            name = "Name Change",
            price = 250,
            id = 65542,
            description = "Tired of your current character name? Purchase a new one!\n\n\n- only usable by purchasing character\n- relog required after purchase to finalise the name change",
            type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE,
            }, 
            {
            icons = { "sexchanger.png" },
            name = "Sex Change",
            price = 120,
            id = 65543,
            description = "Turns your female character into a male one - or vice versa.\n\n\n- only usable by purchasing character\n- activated at purchase\n- you will keep all outfits you have purchased or earned in quest",
            type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE,
            } 
          },
    rookgaard = true,
    state = GameStore.States.STATE_NONE,
   }, 
 {
   description = "Buy your character a boost to speed up your character development.",
   icons = { "Category_Boosts.png" },
   name = "Boosts",
   offers = { 
        {
                icons = { "xpboosticon.png" },
                name = "XP Boost",
                price = 30,
                id = 65541,
                type = GameStore.OfferTypes.OFFER_TYPE_EXPBOOST,
                description = "Purchase a boost that increases the experience points your character gains from hunting by 50%!\n\n\n- only usable by purchasing character\n- lasts for 1 hour hunting time\n- paused if stamina falls under 14 hours\n- can be purchased up to 5 times between 2 server saves\n- price increases with every purchase\n- cannot be purchased if an XP boost is already active",
        } 
      },
   rookgaard = true,
   state = GameStore.States.STATE_NONE,
 }, 
 {
   description = "Buy your character one or more of the helpful items offered here.",
   icons = { "Category_Convenience.png" },
   name = "Useful Things",
   offers = { {
                icons = { "Product_UsefulThings_PreyBonusReroll.png" },
                name = "5x Prey Willcard",
                id = 65540,
                count = 5,
                type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
                price = 50,
        description = "Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.\n\n- only usable by purchasing character\n- added directly to Prey dialog\n- maximum amount that can be owned by character: 50",
              },
              {
                icons = { "Product_UsefulThings_PreyBonusReroll.png" },
                name = "20x Prey Willcard",
                id = 65539,
                count = 20,
                type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS,
                price = 200,
        description = "Use Prey Wildcards to reroll the bonus of an active prey, to lock your active prey or to select a prey of your choice.\n\n- only usable by purchasing character\n- added directly to Prey dialog\n- maximum amount that can be owned by character: 50",
              },
              {
                icons = { "Product_Transportation_TempleTeleport.png" },
                name = "Temple Teleport",
                id = 29019,
                count = 1,
                type = GameStore.OfferTypes.OFFER_TYPE_ITEM,
                price = 15,
        description = "Teleports you instantly to your home temple.\n\n- only usable by purchasing character\n- use it to teleport you to your home temple\n- cannot be used while having a battle sign or a protection zone block\n- does not work in no-logout zones or close to a character's home temple",
              },
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
