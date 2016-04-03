local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'brown bag'}, 1987, 20, 'brown bag')
shopModule:addBuyableItem({'brown backpack'}, 1988, 20, 'brown backpack')
shopModule:addBuyableItem({'present box'}, 1990, 20, 'present box')
shopModule:addBuyableItem({'green bag'}, 1991, 5, 'green bag')
shopModule:addBuyableItem({'yellow bag'}, 1992, 5, 'yellow bag')
shopModule:addBuyableItem({'red bag'}, 1993, 5, 'red bag')
shopModule:addBuyableItem({'purple bag'}, 1994, 5, 'purple bag')
shopModule:addBuyableItem({'blue bag'}, 1995, 5, 'blue bag')
shopModule:addBuyableItem({'grey bag'}, 1996, 5, 'grey bag')
shopModule:addBuyableItem({'golden bag'}, 1997, 5, 'golden bag')
shopModule:addBuyableItem({'green backpack'}, 1998, 20, 'green backpack')
shopModule:addBuyableItem({'yellow backpack'}, 1999, 20, 'yellow backpack')
shopModule:addBuyableItem({'red backpack'}, 2000, 20, 'red backpack')
shopModule:addBuyableItem({'purple backpack'}, 2001, 20, 'purple backpack')
shopModule:addBuyableItem({'blue backpack'}, 2002, 20, 'blue backpack')
shopModule:addBuyableItem({'grey backpack'}, 2003, 20, 'grey backpack')
shopModule:addBuyableItem({'golden backpack'}, 2004, 20, 'golden backpack')
shopModule:addBuyableItem({'beach backpack'}, 5949, 20, 'beach backpack')
shopModule:addBuyableItem({'beach bag'}, 5950, 20, 'beach bag')
shopModule:addBuyableItem({'camouflage bag'}, 3939, 20, 'camouflage bag')
shopModule:addBuyableItem({'camouflage backpack'}, 3940, 20, 'camouflage backpack')
shopModule:addBuyableItem({'pirate backpack'}, 5926, 20, 'pirate backpack')
shopModule:addBuyableItem({'pirate bag'}, 5927, 5, 'pirate bag')
shopModule:addBuyableItem({'fur backpack'}, 7342, 20, 'fur backpack')
shopModule:addBuyableItem({'fur bag'}, 7343, 20, 'fur bag')
shopModule:addBuyableItem({'backpack of holding'}, 2365, 500000, 'backpack of holding')
shopModule:addBuyableItem({'jewelled backpack'}, 5801, 300000, 'jewelled backpack')
shopModule:addBuyableItem({'brocade backpack'}, 9774, 10000, 'brocade backpack')
shopModule:addBuyableItem({'brocade bag'}, 9775, 10000, 'brocade bag')

-- Tools
shopModule:addBuyableItem({'blessed wooden stake'}, 5942, 1000000, 'blessed wooden stake')
shopModule:addBuyableItem({'obsidian knife'}, 5908, 1000000, 'obsidian knife')
shopModule:addBuyableItem({'rope'}, 2120, 50, 'rope')
shopModule:addBuyableItem({'scythe'}, 2550, 50, 'scythe')
shopModule:addBuyableItem({'pick'}, 2553, 50, 'pick')
shopModule:addBuyableItem({'shovel'}, 2554, 50, 'shovel')
shopModule:addBuyableItem({'fishing rod'}, 2580, 150, 'fishing rod')
shopModule:addBuyableItem({'torch'}, 2050, 2, 'torch')

-- Others
shopModule:addBuyableItem({'football'}, 2109, 111, 'football')
shopModule:addBuyableItem({'basket'}, 1989, 6, 'basket')
shopModule:addBuyableItem({'watch'}, 2036, 20, 'watch')

-- Seller product Monsters
shopModule:addSellableItem({'Acorns'}, 11213, 1245, 'Acorn')
shopModule:addSellableItem({'Ancient Stones'}, 10549, 1900, 'Ancient Stone')
shopModule:addSellableItem({'Antlers'}, 11214, 1150, 'Antlers')
shopModule:addSellableItem({'Badger Furs'}, 11216, 1125, 'Badger Fur')
shopModule:addSellableItem({'Black Hoods'}, 10562, 2950, 'Black Hood')
shopModule:addSellableItem({'Bloody Pinces'}, 10550, 1350, 'Bloody Pincers')
shopModule:addSellableItem({'Boggy Dreads'}, 10584, 2100, 'Boggy Dreads')
shopModule:addSellableItem({'Bone Shoulderplates'}, 11321, 3150, 'Bone Shoulderplate')
shopModule:addSellableItem({'Bony Tails'}, 11194, 2110, 'Bony Tail')
shopModule:addSellableItem({'Book of Necromantic Rituals'}, 11237, 4180, 'Book of Necromantic Rituals')
shopModule:addSellableItem({'Book of Prayers'}, 10563, 2120, 'Book of Prayers')
shopModule:addSellableItem({'Broken Gladiator Shields'}, 10573, 2180, 'Broken Gladiator Shield')
shopModule:addSellableItem({'Broken Halberds'}, 11335, 1100, 'Broken Halberd')
shopModule:addSellableItem({'Bunch of Troll Hairs'}, 10606, 1150, 'Bunch of Troll Hair')
shopModule:addSellableItem({'Bundle of Cursed Straws'}, 10605, 2800, 'Bundle of Cursed Straw')
shopModule:addSellableItem({'Carniphila Seeds'}, 11217, 1350, 'Carniphila Seeds')
shopModule:addSellableItem({'Carrion Worm Fangs'}, 11192, 2135, 'Carrion Worm Fang')
shopModule:addSellableItem({'Centipede Legs'}, 11218, 1128, 'Centipede Leg')
shopModule:addSellableItem({'Cobra Tongues'}, 10551, 3115, 'Cobra Tongue')
shopModule:addSellableItem({'Compass'}, 11219, 1145, 'Compass')
shopModule:addSellableItem({'Corrupted Flags'}, 11326, 1700, 'Corrupted Flag')
shopModule:addSellableItem({'Crab Pincers'}, 11189, 1235, 'Crab Pincers')
shopModule:addSellableItem({'Cultish Masks'}, 10555, 1280, 'Cultish Mask')
shopModule:addSellableItem({'Cultish Robes'}, 10556, 1150, 'Cultish Robe')
shopModule:addSellableItem({'Cursed Shoulder Spikes'}, 11327, 1320, 'Cursed Shoulder Spikes')
shopModule:addSellableItem({'Cyclops Toes'}, 10574, 1255, 'Cyclops Toe')
shopModule:addSellableItem({'Dark Rosarys'}, 11220, 1148, 'Dark Rosary')
shopModule:addSellableItem({'Demonic Skeletal Hands'}, 10564, 1280, 'Demonic Skeletal Hand')
shopModule:addSellableItem({'Dragon Priest Wandtips'}, 11361, 2175, 'Dragon Priest\'s Wandtip')
shopModule:addSellableItem({'Elder Beholder Tentacles'}, 11193, 1150, 'Elder Beholder Tentacle')
shopModule:addSellableItem({'Elvish Talismans'}, 10552, 3145, 'Elvish Talisman')
shopModule:addSellableItem({'Essence of a Bad Dreams'}, 11223, 1360, 'Essence of a Bad Dream')
shopModule:addSellableItem({'Fiery Hearts'}, 10553, 375, 'Fiery Heart')
shopModule:addSellableItem({'Frosty Ear of a Trolls'}, 10565, 1130, 'Frosty Ear of a Troll')
shopModule:addSellableItem({'Frosty Hearts'}, 10578, 3280, 'Frosty Heart')
shopModule:addSellableItem({'Frost Giant Pelts'}, 10575, 1160, 'Frost Giant Pelt')
shopModule:addSellableItem({'Gauze Bandages'}, 10566, 1290, 'Gauze Bandage')
shopModule:addSellableItem({'Gear Crystals'}, 10572, 1200, 'Gear Crystal')
shopModule:addSellableItem({'Gear Wheels'}, 9690, 2100, 'Gear Wheel')
shopModule:addSellableItem({'Ghastly Dragon Heads'}, 11366, 1700, 'Ghastly Dragon Head')
shopModule:addSellableItem({'Ghostly Tissues'}, 10607, 3190, 'Ghostly Tissue')
shopModule:addSellableItem({'Giant Eyes'}, 11197, 380, 'Giant Eye')
shopModule:addSellableItem({'Half Digested Piece of Meats'}, 11200, 1155, 'Half-Digested Piece of Meat')
shopModule:addSellableItem({'Half Eaten Brains'}, 10576, 1385, 'Half-Eaten Brain')
shopModule:addSellableItem({'Hellhound Slobbers'}, 10554, 1500, 'Hellhound Slobber')
shopModule:addSellableItem({'Hellspawn Tails'}, 11221, 1775, 'Hellspawn Tail')
shopModule:addSellableItem({'High Guard Flags'}, 11332, 2550, 'High Guard Flag')
shopModule:addSellableItem({'High Guard Shoulderplates'}, 11333, 1130, 'High Guard Shoulderplates')
shopModule:addSellableItem({'Hydra Heads'}, 11199, 2600, 'Hydra Head')
shopModule:addSellableItem({'Lancer Beetle Shells'}, 11372, 1380, 'Lancer Beetle Shell')
shopModule:addSellableItem({'Legionnaire Flags'}, 11334, 1500, 'Legionnaire Flags')
shopModule:addSellableItem({'Lions Manes'}, 10608, 1260, 'Lion\'s Mane')
shopModule:addSellableItem({'Lump of Dirst'}, 10609, 1310, 'Lump of Dirt')
shopModule:addSellableItem({'Lump of Earths'}, 11222, 1130, 'Lump of Earth')
shopModule:addSellableItem({'Mammoth Tusks'}, 11238, 1100, 'Mammoth Tusk')
shopModule:addSellableItem({'Metal Spikes'}, 11215, 1320, 'Metal Spike')
shopModule:addSellableItem({'Mutated Bat Ears'}, 10579, 1420, 'Mutated Bat Ear')
shopModule:addSellableItem({'Mutated Flesh'}, 11225, 2230, 'Mutated Flesh')
shopModule:addSellableItem({'Mutated Rat Tails'}, 10585, 1150, 'Mutated Rat Tail')
shopModule:addSellableItem({'Mystical Hourglass'}, 10577, 2700, 'Mystical Hourglass')
shopModule:addSellableItem({'Nettle Blossom'}, 11231, 1175, 'Nettle Blossom')
shopModule:addSellableItem({'Orc Tooths'}, 11115, 2450, 'Orc Tooth')
shopModule:addSellableItem({'Petrified Screams'}, 11337, 1650, 'Petrified Scream')
shopModule:addSellableItem({'Piece of Crocodile Leathers'}, 11196, 1115, 'Piece of Crocodile Leather')
shopModule:addSellableItem({'Piece of Dead Brains'}, 10580, 2420, 'Piece of Dead Brain')
shopModule:addSellableItem({'Piece of Hellfire Armors'}, 10581, 1550, 'Piece of Hellfire Armor')
shopModule:addSellableItem({'Piece of Scarab Shells'}, 10558, 1345, 'Piece of Scarab Shell')
shopModule:addSellableItem({'Pig Foots'}, 10610, 2110, 'Pig Foot')
shopModule:addSellableItem({'Poisonous Slimes'}, 10557, 2350, 'Poisonous Slime')
shopModule:addSellableItem({'Polar Bear Paws'}, 10567, 1230, 'Polar Bear Paw')
shopModule:addSellableItem({'Rotten Piece of Cloths'}, 11208, 1330, 'Rotten Piece of Cloth')
shopModule:addSellableItem({'Sabretooths'}, 11228, 2400, 'Sabretooth')
shopModule:addSellableItem({'Sandcrawler Shells'}, 11373, 1420, 'Sandcrawler Shell')
shopModule:addSellableItem({'Scarab Pincers'}, 10548, 1280, 'Scarab Pincers')
shopModule:addSellableItem({'Scorpion Tails'}, 10568, 3125, 'Scorpion Tail')
shopModule:addSellableItem({'Scythe Legs'}, 11229, 2450, 'Scythe Leg')
shopModule:addSellableItem({'Sea Serpent Scales'}, 10583, 1820, 'Sea Serpent Scale')
shopModule:addSellableItem({'Shaggy Tails'}, 11324, 2325, 'Shaggy Tail')
shopModule:addSellableItem({'Shiny Stones'}, 11227, 1500, 'Shiny Stone')
shopModule:addSellableItem({'Silky Furs'}, 11209, 1135, 'Silky Fur')
shopModule:addSellableItem({'Skunk Tails'}, 11191, 2250, 'Skunk Tail')
shopModule:addSellableItem({'Snake Skins'}, 10611, 1400, 'Snake Skin')
shopModule:addSellableItem({'Spiked Iron Balls'}, 11325, 2100, 'Spiked Iron Ball')
shopModule:addSellableItem({'Spooky Blue Eyes'}, 10559, 1195, 'Spooky Blue Eye')
shopModule:addSellableItem({'Stone Wings'}, 11195, 1100, 'Stone Wing')
shopModule:addSellableItem({'Strand of Medusa Hairs'}, 11226, 1100, 'Strand of Medusa Hair')
shopModule:addSellableItem({'Striped Furs'}, 11210, 1250, 'Striped Fur')
shopModule:addSellableItem({'Sulphurous Stones'}, 11232, 2400, 'Sulphurous Stone')
shopModule:addSellableItem({'Swamp Grasss'}, 10603, 1120, 'Swamp Grass')
shopModule:addSellableItem({'Tarantula Eggs'}, 11198, 2380, 'Tarantula Egg')
shopModule:addSellableItem({'Tattered Piece of Robes'}, 10601, 120, 'Tattered Piece of Robe')
shopModule:addSellableItem({'Terramite Legs'}, 11371, 2220, 'Terramite Legs')
shopModule:addSellableItem({'Terramite Shells'}, 11369, 1170, 'Terramite Shell')
shopModule:addSellableItem({'Terrorbird Beaks'}, 11190, 1295, 'Terrorbird Beak')
shopModule:addSellableItem({'Thick Furs'}, 11224, 150, 'Thick Fur')
shopModule:addSellableItem({'Thorns'}, 10560, 2500, 'Thorn')
shopModule:addSellableItem({'Undead Hearts'}, 11367, 2700, 'Undead Heart')
shopModule:addSellableItem({'Unholy Bons'}, 11233, 1780, 'Unholy Bone')
shopModule:addSellableItem({'Vampire Teeths'}, 10602, 175, 'Vampire Teeth')
shopModule:addSellableItem({'War Crystals'}, 10571, 2960, 'War Crystal')
shopModule:addSellableItem({'Warmaster Wristguards'}, 11322, 1600, 'Warmaster\'s Wristguards')
shopModule:addSellableItem({'Warwolf Furs'}, 11235, 3230, 'Warwolf Fur')
shopModule:addSellableItem({'Waver Wantips'}, 11314, 1250, 'Waver\'s Wantip')
shopModule:addSellableItem({'Werewolf Furs'}, 11234, 2380, 'Werewolf Fur')
shopModule:addSellableItem({'Wolf Paw'}, 5897, 800, 'Wolf\'s Paw')
shopModule:addSellableItem({'Widow Mandibles'}, 11328, 1110, 'Widow\'s Mandibles')
shopModule:addSellableItem({'Winged Tails'}, 11230, 2800, 'Winged Tails')
shopModule:addSellableItem({'Winter Wolf Furs'}, 11212, 1320, 'Winter Wolf Fur')
shopModule:addSellableItem({'Witch Brooms'}, 10569, 1460, 'Witch Broom')
shopModule:addSellableItem({'Wools'}, 11236, 2415, 'Wool')
shopModule:addSellableItem({'Wyrm Scales'}, 10582, 1400, 'Wyrm Scale')
shopModule:addSellableItem({'Wyvern Talismans'}, 10561, 1265, 'Wyvern Talismans')
shopModule:addSellableItem({'Zaogun Shoulderplates'}, 11331, 2150, 'Zaogun\'s Shoulderplates')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
