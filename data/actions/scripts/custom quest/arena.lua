

function onUse(cid, item, frompos, item2, topos)
isthere = getPlayerStorageValue(cid,5000)
chance = math.random(0,189)
if item.actionid == 5001 then
if chance == 0 then
monster = "Red Stuffums"
elseif chance == 1 then
monster = "Red Amazon"
elseif chance == 2 then
monster = "Red Ancient"
elseif chance == 3 then
monster = "Red Assassin"
elseif chance == 4 then
monster = "Red Badger"
elseif chance == 5 then
monster = "Red Bandit"
elseif chance == 6 then
monster = "Red Banshee"
elseif chance == 7 then
monster = "Red Bat"
elseif chance == 8 then
monster = "Red Bear"
elseif chance == 9 then
monster = "Red Behemoth"
elseif chance == 10 then
monster = "Red Beholder"
elseif chance == 11 then
monster = "Red Black Knight"
elseif chance == 12 then
monster = "Red Black Sheep"
elseif chance == 13 then
monster = "Red Blue Djinn"
elseif chance == 14 then
monster = "Red Bone Beast"
elseif chance == 15 then
monster = "Red Bug"
elseif chance == 16 then
monster = "Red Butterfly"
elseif chance == 17 then
monster = "Red Carniphila"
elseif chance == 18 then
monster = "Red CaveRat"
elseif chance == 19 then
monster = "Red Centipede"
elseif chance == 20 then
monster = "Red Chicken"
elseif chance == 21 then
monster = "Red Cobra"
elseif chance == 22 then
monster = "Red Crab"
elseif chance == 23 then
monster = "Red Crocodile"
elseif chance == 24 then
monster = "Red Crypt Shambler"
elseif chance == 25 then
monster = "Red Cyclops"
elseif chance == 26 then
monster = "Red Dark Monk"
elseif chance == 28 then
monster = "Red Deer"
elseif chance == 29 then
monster = "Red Demon"
elseif chance == 30 then
monster = "Red Demon Skeleton"
elseif chance == 31 then
monster = "Red Dog"
elseif chance == 32 then
monster = "Red Dragon"
elseif chance == 33 then
monster = "Red Dragon Lord"
elseif chance == 34 then
monster = "Red Dwarf"
elseif chance == 35 then
monster = "Red Dwarf Geomancer"
elseif chance == 36 then
monster = "Red Dwarf Guard"
elseif chance == 37 then
monster = "Red Dwarf Soldier"
elseif chance == 38 then
monster = "Red Dworc Fleshhunter"
elseif chance == 39 then
monster = "Red Dworc Venomsniper"
elseif chance == 40 then
monster = "Red Dworc Voodoomaster"
elseif chance == 41 then
monster = "Red Efreet"
elseif chance == 42 then
monster = "Red Elder Beholder"
elseif chance == 43 then
monster = "Red Elephant"
elseif chance == 44 then
monster = "Red Elf"
elseif chance == 45 then
monster = "Red Elf Arcanist"
elseif chance == 46 then
monster = "Red Elf Scout"
elseif chance == 47 then
monster = "Red Fire Devil"
elseif chance == 48 then
monster = "Red Fire Elemental"
elseif chance == 49 then
monster = "Red Flamingo"
elseif chance == 50 then
monster = "Red Frost Troll"
elseif chance == 51 then
monster = "Red Gargoyle"
elseif chance == 52 then
monster = "Red Gazer"
elseif chance == 53 then
monster = "Red Ghost"
elseif chance == 54 then
monster = "Red Ghoul"
elseif chance == 55 then
monster = "Red Giant Spider"
elseif chance == 56 then
monster = "Red Goblin"
elseif chance == 57 then
monster = "Red Green Djinn"
elseif chance == 58 then
monster = "Red Hero"
elseif chance == 59 then
monster = "Red Hunter"
elseif chance == 60 then
monster = "Red Hyaena"
elseif chance == 61 then
monster = "Red Hydra"
elseif chance == 62 then
monster = "Red Kongra"
elseif chance == 63 then
monster = "Red Larva"
elseif chance == 64 then
monster = "Red Lich"
elseif chance == 65 then
monster = "Red Lion"
elseif chance == 66 then
monster = "Red Lizard Sentinel"
elseif chance == 67 then
monster = "Red Lizard Snakecharmer"
elseif chance == 68 then
monster = "Red Lizard Templar"
elseif chance == 69 then
monster = "Red Magicthrower"
elseif chance == 70 then
monster = "Red Marid"
elseif chance == 71 then
monster = "Red Merlkin"
elseif chance == 72 then
monster = "Red Minotaur"
elseif chance == 73 then
monster = "Red Minotaur Archer"
elseif chance == 74 then
monster = "Red Minotaur Guard"
elseif chance == 75 then
monster = "Red Minotaur Mage"
elseif chance == 76 then
monster = "Red Monk"
elseif chance == 77 then
monster = "Red Mummy"
elseif chance == 78 then
monster = "Red Necromancer"
elseif chance == 79 then
monster = "Red Orc"
elseif chance == 80 then
monster = "Red Orc Berserker"
elseif chance == 81 then
monster = "Red Orc Leader"
elseif chance == 82 then
monster = "Red Orc Rider"
elseif chance == 83 then
monster = "Red Orc Shaman"
elseif chance == 84 then
monster = "Red Orc Spearman"
elseif chance == 85 then
monster = "Red Orc Warlord"
elseif chance == 86 then
monster = "Red Orc Warrior"
elseif chance == 87 then
monster = "Red Panda"
elseif chance == 88 then
monster = "Red Parrot"
elseif chance == 89 then
monster = "Red Pig"
elseif chance == 90 then
monster = "Red Poison Spider"
elseif chance == 91 then
monster = "Red Polar Bear"
elseif chance == 92 then
monster = "Red Priestess"
elseif chance == 93 then
monster = "Red Rabbit"
elseif chance == 94 then
monster = "Red Rat"
elseif chance == 95 then
monster = "Red Rotworm"
elseif chance == 96 then
monster = "Red Scarab"
elseif chance == 97 then
monster = "Red Scorpion"
elseif chance == 98 then
monster = "Red Sheep"
elseif chance == 99 then
monster = "Red Sibang"
elseif chance == 100 then
monster = "Red Silver"
elseif chance == 101 then
monster = "Red Skeleton"
elseif chance == 102 then
monster = "Red Skunk"
elseif chance == 103 then
monster = "Red Spider"
elseif chance == 104 then
monster = "Red Slime"
elseif chance == 105 then
monster = "Red Smuggler"
elseif chance == 106 then
monster = "Red Snake"
elseif chance == 107 then
monster = "Red Spider"
elseif chance == 108 then
monster = "Red Spit Nettle"
elseif chance == 109 then
monster = "Red Stalker"
elseif chance == 110 then
monster = "Red Stone Golem"
elseif chance == 111 then
monster = "Red Swamp Troll"
elseif chance == 112 then
monster = "Red Tarantula"
elseif chance == 113 then
monster = "Red Terror Bird"
elseif chance == 114 then
monster = "Red Tiger"
elseif chance == 115 then
monster = "Red Training Monk"
elseif chance == 116 then
monster = "Red Troll"
elseif chance == 117 then
monster = "Red Valkyrie"
elseif chance == 118 then
monster = "Red Vampire"
elseif chance == 119 then
monster = "Red War Wolf"
elseif chance == 120 then
monster = "Red Warlock"
elseif chance == 121 then
monster = "Red Wasp"
elseif chance == 122 then
monster = "Red Wild Warrior"
elseif chance == 123 then
monster = "Red Winter Wolf"
elseif chance == 124 then
monster = "Red Witch"
elseif chance == 125 then
monster = "Red Wolf"
elseif chance == 126 then
monster = "Red Yeti"
elseif chance == 127 then
monster = "Red Azure Frog"
elseif chance == 128 then
monster = "Red Crimson Frog"
elseif chance == 129 then
monster = "Red Coral Frog"
elseif chance == 130 then
monster = "Red Green Frog"
elseif chance == 131 then
monster = "Red Orchid Frog"
elseif chance == 132 then
monster = "Red Carrion Worm"
elseif chance == 133 then
monster = "Red Thornback Tortoise"
elseif chance == 134 then
monster = "Red Tortoise"
elseif chance == 135 then
monster = "Red Enlightened of the Cult"
elseif chance == 136 then
monster = "Red Acolyte of the Cult"
elseif chance == 137 then
monster = "Red Adept of the Cult"
elseif chance == 138 then
monster = "Red Novice of the Cult"
elseif chance == 139 then
monster = "Red Blood Crab"
elseif chance == 140 then
monster = "Red Toad"
elseif chance == 141 then
monster = "Red Mammoth"
elseif chance == 142 then
monster = "Red Quara Predator"
elseif chance == 143 then
monster = "Red Quara Constrictor"
elseif chance == 144 then
monster = "Red Quara Hydromancer"
elseif chance == 145 then
monster = "Red Quara Mantassin"
elseif chance == 146 then
monster = "Red Quara Pincher"
elseif chance == 147 then
monster = "Red Ferumbras"
elseif chance == 148 then
monster = "Red Island Troll"
elseif chance == 149 then
monster = "Red Pirate Marauder"
elseif chance == 150 then
monster = "Red Pirate Cutthroat"
elseif chance == 151 then
monster = "Red Pirate Skeleton"
elseif chance == 152 then
monster = "Red Pirate Ghost"
elseif chance == 153 then
monster = "Red Pirate Corsair"
elseif chance == 154 then
monster = "Red Pirate Buccaneer"
elseif chance == 155 then
monster = "Red Seagull"
elseif chance == 156 then
monster = "Red Demodras"
elseif chance == 157 then
monster = "Red Orsh"
elseif chance == 158 then
monster = "Red The Old Widow"
elseif chance == 159 then
monster = "Red Murius"
elseif chance == 160 then
monster = "Red Grorlam"
elseif chance == 161 then
monster = "Red Omruc"
elseif chance == 162 then
monster = "Red Morguthis"
elseif chance == 163 then
monster = "Red Thalas"
elseif chance == 164 then
monster = "Red Dipthrah"
elseif chance == 165 then
monster = "Red Ashmunrah"
elseif chance == 166 then
monster = "Red Mahrdis"
elseif chance == 167 then
monster = "Red Vashresamun"
elseif chance == 168 then
monster = "Red Rahemos"
elseif chance == 169 then
monster = "Red Betrayed Wraith"
elseif chance == 170 then
monster = "Red Blightwalker"
elseif chance == 171 then
monster = "Red Dark Torturer"
elseif chance == 172 then
monster = "Red Defiler"
elseif chance == 173 then
monster = "Red Destroyer"
elseif chance == 174 then
monster = "Red Diabolic Imp"
elseif chance == 175 then
monster = "Red Fury"
elseif chance == 176 then
monster = "Red Hand of Cursed Fate"
elseif chance == 177 then
monster = "Red Hellfire Fighter"
elseif chance == 178 then
monster = "Red Hellhound"
elseif chance == 179 then
monster = "Red Juggernaut"
elseif chance == 180 then
monster = "Red Lost Soul"
elseif chance == 181 then
monster = "Red Morgaroth"
elseif chance == 182 then
monster = "Red Nightmare"
elseif chance == 183 then
monster = "Red Phantasm"
elseif chance == 184 then
monster = "Red Plaguesmith"
elseif chance == 185 then
monster = "Red Plaguesmith"
elseif chance == 186 then
monster = "Red Spectre"
elseif chance == 187 then
monster = "Red Undead Dragon"
elseif chance == 188 then
monster = "Red Wyvern"
elseif chance == 189 then
monster = "Red Minishabaal"
end
rmpos = {x=188, y=1446, z=10}
if isthere == 0 then
setPlayerStorageValue(cid, 5000, 1)
doSummonCreature(monster, rmpos)
else
doPlayerSendTextMessage(cid,19,"You are in the middle of a match!")
end




elseif item.actionid == 5002 then
if chance == 0 then
monster2 = "Green Stuffums"
elseif chance == 1 then
monster2 = "Green Amazon"
elseif chance == 2 then
monster2 = "Green Ancient"
elseif chance == 3 then
monster2 = "Green Assassin"
elseif chance == 4 then
monster2 = "Green Badger"
elseif chance == 5 then
monster2 = "Green Bandit"
elseif chance == 6 then
monster2 = "Green Banshee"
elseif chance == 7 then
monster2 = "Green Bat"
elseif chance == 8 then
monster2 = "Green Bear"
elseif chance == 9 then
monster2 = "Green Behemoth"
elseif chance == 10 then
monster2 = "Green Beholder"
elseif chance == 11 then
monster2 = "Green Black Knight"
elseif chance == 12 then
monster2 = "Green Black Sheep"
elseif chance == 13 then
monster2 = "Green Blue Djinn"
elseif chance == 14 then
monster2 = "Green Bone Beast"
elseif chance == 15 then
monster2 = "Green Bug"
elseif chance == 16 then
monster2 = "Green Butterfly"
elseif chance == 17 then
monster2 = "Green Carniphila"
elseif chance == 18 then
monster2 = "Green CaveRat"
elseif chance == 19 then
monster2 = "Green Centipede"
elseif chance == 20 then
monster2 = "Green Chicken"
elseif chance == 21 then
monster2 = "Green Cobra"
elseif chance == 22 then
monster2 = "Green Crab"
elseif chance == 23 then
monster2 = "Green Crocodile"
elseif chance == 24 then
monster2 = "Green Crypt Shambler"
elseif chance == 25 then
monster2 = "Green Cyclops"
elseif chance == 26 then
monster2 = "Green Dark Monk"
elseif chance == 28 then
monster2 = "Green Deer"
elseif chance == 29 then
monster2 = "Green Demon"
elseif chance == 30 then
monster2 = "Green Demon Skeleton"
elseif chance == 31 then
monster2 = "Green Dog"
elseif chance == 32 then
monster2 = "Green Dragon"
elseif chance == 33 then
monster2 = "Green Dragon Lord"
elseif chance == 34 then
monster2 = "Green Dwarf"
elseif chance == 35 then
monster2 = "Green Dwarf Geomancer"
elseif chance == 36 then
monster2 = "Green Dwarf Guard"
elseif chance == 37 then
monster2 = "Green Dwarf Soldier"
elseif chance == 38 then
monster2 = "Green Dworc Fleshhunter"
elseif chance == 39 then
monster2 = "Green Dworc Venomsniper"
elseif chance == 40 then
monster2 = "Green Dworc Voodoomaster"
elseif chance == 41 then
monster2 = "Green Efreet"
elseif chance == 42 then
monster2 = "Green Elder Beholder"
elseif chance == 43 then
monster2 = "Green Elephant"
elseif chance == 44 then
monster2 = "Green Elf"
elseif chance == 45 then
monster2 = "Green Elf Arcanist"
elseif chance == 46 then
monster2 = "Green Elf Scout"
elseif chance == 47 then
monster2 = "Green Fire Devil"
elseif chance == 48 then
monster2 = "Green Fire Elemental"
elseif chance == 49 then
monster2 = "Green Flamingo"
elseif chance == 50 then
monster2 = "Green Frost Troll"
elseif chance == 51 then
monster2 = "Green Gargoyle"
elseif chance == 52 then
monster2 = "Green Gazer"
elseif chance == 53 then
monster2 = "Green Ghost"
elseif chance == 54 then
monster2 = "Green Ghoul"
elseif chance == 55 then
monster2 = "Green Giant Spider"
elseif chance == 56 then
monster2 = "Green Goblin"
elseif chance == 57 then
monster2 = "Green Green Djinn"
elseif chance == 58 then
monster2 = "Green Hero"
elseif chance == 59 then
monster2 = "Green Hunter"
elseif chance == 60 then
monster2 = "Green Hyaena"
elseif chance == 61 then
monster2 = "Green Hydra"
elseif chance == 62 then
monster2 = "Green Kongra"
elseif chance == 63 then
monster2 = "Green Larva"
elseif chance == 64 then
monster2 = "Green Lich"
elseif chance == 65 then
monster2 = "Green Lion"
elseif chance == 66 then
monster2 = "Green Lizard Sentinel"
elseif chance == 67 then
monster2 = "Green Lizard Snakecharmer"
elseif chance == 68 then
monster2 = "Green Lizard Templar"
elseif chance == 70 then
monster2 = "Green Marid"
elseif chance == 71 then
monster2 = "Green Merlkin"
elseif chance == 72 then
monster2 = "Green Minotaur"
elseif chance == 73 then
monster2 = "Green Minotaur Archer"
elseif chance == 74 then
monster2 = "Green Minotaur Guard"
elseif chance == 75 then
monster2 = "Green Minotaur Mage"
elseif chance == 76 then
monster2 = "Green Monk"
elseif chance == 77 then
monster2 = "Green Mummy"
elseif chance == 78 then
monster2 = "Green Necromancer"
elseif chance == 79 then
monster2 = "Green Orc"
elseif chance == 80 then
monster2 = "Green Orc Berserker"
elseif chance == 81 then
monster2 = "Green Orc Leader"
elseif chance == 82 then
monster2 = "Green Orc Rider"
elseif chance == 83 then
monster2 = "Green Orc Shaman"
elseif chance == 84 then
monster2 = "Green Orc Spearman"
elseif chance == 85 then
monster2 = "Green Orc Warlord"
elseif chance == 86 then
monster2 = "Green Orc Warrior"
elseif chance == 87 then
monster2 = "Green Panda"
elseif chance == 88 then
monster2 = "Green Parrot"
elseif chance == 89 then
monster2 = "Green Pig"
elseif chance == 90 then
monster2 = "Green Poison Spider"
elseif chance == 91 then
monster2 = "Green Polar Bear"
elseif chance == 92 then
monster2 = "Green Priestess"
elseif chance == 93 then
monster2 = "Green Rabbit"
elseif chance == 94 then
monster2 = "Green Rat"
elseif chance == 95 then
monster2 = "Green Rotworm"
elseif chance == 96 then
monster2 = "Green Scarab"
elseif chance == 97 then
monster2 = "Green Scorpion"
elseif chance == 98 then
monster2 = "Green Sheep"
elseif chance == 99 then
monster2 = "Green Sibang"
elseif chance == 100 then
monster2 = "Green Silver"
elseif chance == 101 then
monster2 = "Green Skeleton"
elseif chance == 102 then
monster2 = "Green Skunk"
elseif chance == 103 then
monster2 = "Green Spider"
elseif chance == 104 then
monster2 = "Green Slime"
elseif chance == 105 then
monster2 = "Green Smuggler"
elseif chance == 106 then
monster2 = "Green Snake"
elseif chance == 107 then
monster2 = "Green Spider"
elseif chance == 108 then
monster2 = "Green Spit Nettle"
elseif chance == 109 then
monster2 = "Green Stalker"
elseif chance == 110 then
monster2 = "Green Stone Golem"
elseif chance == 111 then
monster2 = "Green Swamp Troll"
elseif chance == 112 then
monster2 = "Green Tarantula"
elseif chance == 113 then
monster2 = "Green Terror Bird"
elseif chance == 114 then
monster2 = "Green Tiger"
elseif chance == 115 then
monster2 = "Green Training Monk"
elseif chance == 116 then
monster2 = "Green Troll"
elseif chance == 117 then
monster2 = "Green Valkyrie"
elseif chance == 118 then
monster2 = "Green Vampire"
elseif chance == 119 then
monster2 = "Green War Wolf"
elseif chance == 120 then
monster2 = "Green Warlock"
elseif chance == 121 then
monster2 = "Green Wasp"
elseif chance == 122 then
monster2 = "Green Wild Warrior"
elseif chance == 123 then
monster2 = "Green Winter Wolf"
elseif chance == 124 then
monster2 = "Green Witch"
elseif chance == 125 then
monster2 = "Green Wolf"
elseif chance == 126 then
monster2 = "Green Yeti"
elseif chance == 127 then
monster2 = "Green Azure Frog"
elseif chance == 128 then
monster2 = "Green Crimson Frog"
elseif chance == 129 then
monster2 = "Green Coral Frog"
elseif chance == 130 then
monster2 = "Green Green Frog"
elseif chance == 131 then
monster2 = "Green Orchid Frog"
elseif chance == 132 then
monster2 = "Green Carrion Worm"
elseif chance == 133 then
monster2 = "Green Thornback Tortoise"
elseif chance == 134 then
monster2 = "Green Tortoise"
elseif chance == 135 then
monster2 = "Green Enlightened of the Cult"
elseif chance == 136 then
monster2 = "Green Acolyte of the Cult"
elseif chance == 137 then
monster2 = "Green Adept of the Cult"
elseif chance == 138 then
monster2 = "Green Novice of the Cult"
elseif chance == 139 then
monster2 = "Green Blood Crab"
elseif chance == 140 then
monster2 = "Green Toad"
elseif chance == 141 then
monster2 = "Green Mammoth"
elseif chance == 142 then
monster2 = "Green Quara PGreenator"
elseif chance == 143 then
monster2 = "Green Quara Constrictor"
elseif chance == 144 then
monster2 = "Green Quara Hydromancer"
elseif chance == 145 then
monster2 = "Green Quara Mantassin"
elseif chance == 146 then
monster2 = "Green Quara Pincher"
elseif chance == 147 then
monster2 = "Green Ferumbras"
elseif chance == 148 then
monster2 = "Green Island Troll"
elseif chance == 149 then
monster2 = "Green Pirate Marauder"
elseif chance == 150 then
monster2 = "Green Pirate Cutthroat"
elseif chance == 151 then
monster2 = "Green Pirate Skeleton"
elseif chance == 152 then
monster2 = "Green Pirate Ghost"
elseif chance == 153 then
monster2 = "Green Pirate Corsair"
elseif chance == 154 then
monster2 = "Green Pirate Buccaneer"
elseif chance == 155 then
monster2 = "Green Seagull"
elseif chance == 156 then
monster2 = "Green Demodras"
elseif chance == 157 then
monster2 = "Green Orsh"
elseif chance == 158 then
monster2 = "Green The Old Widow"
elseif chance == 159 then
monster2 = "Green Murius"
elseif chance == 160 then
monster2 = "Green Grorlam"
elseif chance == 161 then
monster2 = "Green Omruc"
elseif chance == 162 then
monster2 = "Green Morguthis"
elseif chance == 163 then
monster2 = "Green Thalas"
elseif chance == 164 then
monster2 = "Green Dipthrah"
elseif chance == 165 then
monster2 = "Green Ashmunrah"
elseif chance == 166 then
monster2 = "Green Mahrdis"
elseif chance == 167 then
monster2 = "Green Vashresamun"
elseif chance == 168 then
monster2 = "Green Rahemos"
elseif chance == 169 then
monster2 = "Green Betrayed Wraith"
elseif chance == 170 then
monster2 = "Green Blightwalker"
elseif chance == 171 then
monster2 = "Green Dark Torturer"
elseif chance == 172 then
monster2 = "Green Defiler"
elseif chance == 173 then
monster2 = "Green Destroyer"
elseif chance == 174 then
monster2 = "Green Diabolic Imp"
elseif chance == 175 then
monster2 = "Green Fury"
elseif chance == 176 then
monster2 = "Green Hand of Cursed Fate"
elseif chance == 177 then
monster2 = "Green Hellfire Fighter"
elseif chance == 178 then
monster2 = "Green Hellhound"
elseif chance == 179 then
monster2 = "Green Juggernaut"
elseif chance == 180 then
monster2 = "Green Lost Soul"
elseif chance == 181 then
monster2 = "Green Morgaroth"
elseif chance == 182 then
monster2 = "Green Nightmare"
elseif chance == 183 then
monster2 = "Green Phantasm"
elseif chance == 184 then
monster2 = "Green Plaguesmith"
elseif chance == 185 then
monster2 = "Green Plaguesmith"
elseif chance == 186 then
monster2 = "Green Spectre"
elseif chance == 187 then
monster2 = "Green Undead Dragon"
elseif chance == 188 then
monster2 = "Green Wyvern"
elseif chance == 189 then
monster2 = "Green Minishabaal"
end
gmpos = {x=195, y=1446, z=10}
if isthere == 0 then
setPlayerStorageValue(cid, 5000, 1)
doSummonCreature(monster2, gmpos)
else
doPlayerSendTextMessage(cid,19,"You are in the middle of a match!")
end
elseif item.actionid == 5003 then
abcpos = {x=getPlayerPosition(cid).x, y=getPlayerPosition(cid).y+4, z=getPlayerPosition(cid).z}
doTeleportThing(0,cid,abcpos,0)
setPlayerStorageValue(cid, 5000, 0)
end
	return 1

end