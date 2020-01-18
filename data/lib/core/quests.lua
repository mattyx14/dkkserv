if not Quests then
	Quests = {
		[1] = {
			name = "Outfit and Addon Quests", startstorageid = Storage.OutfitQuest.DefaultStart, startstoragevalue = 1,
			missions = {
				[1] = {
					name = "Citizen Addon: Backpack", storageid = Storage.OutfitQuest.Citizen.MissionBackpack, startvalue = 1, endvalue = 2,
					states = {
						[1] = "Collect 100 pieces of minotaur leather and bring it to either Citizen to have them make a backpack addon for you.",
						[2] = "You delivered 100 pieces of minotaur leather. Some time is needed to make the backpack for you though. You should check back later and ask either Citizen for your backpack.",
					},
				},
				[2] = {
					name = "Citizen Addon: Feather Hat", storageid = Storage.OutfitQuest.Citizen.MissionHat, startvalue = 1, endvalue = 2,
					states = {
						[1] = "Collect a legion helmet, 100 chicken feathers and 50 honeycombs and bring them to either Citizen to have them make a feather hat addon for you.",
						[2] = "You got the Outfit!",
					},
				},
				[3] = {
					name = "Hunter Outfit Quest", storageid = Storage.OutfitQuest.HunterHatAddon, startvalue = 1, endvalue = 5,
					states = {
						[1] = "Ivan sends you to Agard Town to bring her the Crossbow from the Cult.",
						[2] = "Bring Ivan 100 pieces of lizard leather and 100 pieces of red dragon leather.",
						[3] = "Bring Ivan 5 enchanted chicken wings.",
						[4] = "Bring Ivan one piece of royal steel, draconian steel and hell steel each.",
						[5] = "You got the Outfit!",
					},
				},
				[4] = {
					name = "Knight Addon: Helmet", storageid = Storage.OutfitQuest.Knight.MissionHelmet, startvalue = 1, endvalue = 6,
					states = {
						[1] = "Your current task is to bring 100 perfect behemoth fangs to Wendy.",
						[2] = "Your current task is to retrieve the helmet of Ramsay the Reckless from Anshara. These pesky mino steal everything they can get their dirty hands on.",
						[3] = "Your current task is to obtain a flask of warrior's sweat, which can be magicially extracted from headgear worn by a true warrior, but only in small amounts.",
						[4] = "Your current task is to bring royal steel to Wendy. Royal steel can only be refined by very skilled smiths.",
						[5] = "You have delivered all items required for the helmet addon.",
						[6] = "Sam is currently creating the helmet for you. Be patient and don't forget to check on it later!",
					},
				},
				[5] = {
					name = "Warrior Addon: Shoulder Spike", storageid = Storage.OutfitQuest.WarriorShoulderAddon, startvalue = 1, endvalue = 7,
					states = {
						[1] = "Your current task is to bring 100 hardened bones to Henrry in Carlin. They can sometimes be extracted from creatures that consist only of - you guessed it, bones. You need an obsidian knife though.",
						[2] = "Your current task is to bring 100 turtle shells to Henrry in Carlin. Turtles can be found on some idyllic islands which have recently been discovered.",
						[3] = "Your current task is to show that you have fighting spirit. Maybe someone grants you a wish...?",
						[4] = "Your current task is to obtain a dragon claw. You cannot get this special claw from any common dragons in Tibia. It requires a special one, a lord among the lords.",
						[5] = "You have delivered all items requried for the shoulder spike addon. Go talk to Cornelia and tell her Henrry sent you. She will be glad to create the should spikes.",
						[6] = "Cornelia is currently creating the should spikes for you. Be patient and don't forget to check on it later!",
						[7] = "You have obtained the shoulder spike addon.",
					},
				},
			}
		},
		[2] = {
			name = "Forgotten Knowledge", startstorageid = Storage.ForgottenKnowledge.Tomes, startstoragevalue = 1,
			missions = {
				[1] = {
					name = "Circle of the Black Sphinx", storageid = Storage.ForgottenKnowledge.LadyTenebrisKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You defeated the rogue Lady Tenebris.",
					},
				},
				[2] = {
					name = "Bane of the Cosmic Force", storageid = Storage.ForgottenKnowledge.LloydKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You calmed poor, misguided Lloyd. All he wanted was protection from the outside world. Luckily he seems to have learned his lesson... or has he?",
					},
				},
				[3] = {
					name = "The Desecrated Glade", storageid = Storage.ForgottenKnowledge.ThornKnightKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You defeated the Thorn Knight and shattered the root of evil with all your might. The honour of being a guardian of the glade indeed comes with pride as well as responsibility.",
					},
				},
				[4] = {
					name = "The Unwary Mage", storageid = Storage.ForgottenKnowledge.DragonkingKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "With help of Ivalisse from the temple of the Astral Shapers in Sohan Town and her father, you averted the Dragon King's menace deep in the Mer Jungle.",
					},
				},
				[5] = {
					name = "Dragon in Distress", storageid = Storage.ForgottenKnowledge.HorrorKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You saved the Dragon Mother's egg and she melted the ice wall that blocked your way.",
					},
				},
				[6] = {
					name = "Time is a Window", storageid = Storage.ForgottenKnowledge.TimeGuardianKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You defeated the Time Guardian and are free to return to your own time. For some creatures in this world, it seems neither past nor future are an obstacle.",
					},
				},
				[7] = {
					name = "Deep wathers", storageid = Storage.MisidiaQuest.JaulKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "You defeated the Jaul and and purifies the waters of their evil. For some creatures in this world, it seems neither past nor future are an obstacle.",
					},
				},
				[8] = {
					name = "Final Fight", storageid = Storage.ForgottenKnowledge.LastLoreKilled, startvalue = 0, endvalue = 1522018605,
					states = {
						[1] = "Description Fault.",
					},
				},
			}
		},
		[3] = {
			name = "The Explorer Society", startstorageid = Storage.ExplorerSociety.QuestLine, startstoragevalue = 1,
			missions = {
				[1] = {
					name = "Joining the Explorers", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 1, endvalue = 4,
					states = {
						[1] = "The mission should be simple to fulfil. You have to seek out Uzgod in Kazordoon and get the pickaxe for us. Or just find dwarven pickaxe on your own...",
						[2] = "Get into Dwacatra and bring family brooch back to Uzgod.",
						[3] = "Bring the pickaxe back to the Explorer Society representative.",
					},

				},

				[2] = {
					name = "The Ice Delivery", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 5, endvalue = 7,
					states = {
						[5] = "Take this ice pick and use it on a block of ice in the caves beneath Folda. Get some ice and bring it here as fast as you can. If the ice melt away, report on your ice delivery mission anyway.",
						[6] = "You have 10 minutes before the icicle defrosts. Run back to the Explorer Society representative!",
					},

				},

				[3] = {
					name = "The Butterfly Hunt", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 8, endvalue = 16,
					states = {
						[8] = "This preparation kit will allow you to collect a PURPLE butterfly you have killed. Just use it on the fresh corpse of a PURPLE butterfly.",
						[9] = "Return the prepared butterfly to Explorer Society representative.",
						[10] = "Ask for another butterfly hunt.",
						[11] = "This preparation kit will allow you to collect a BLUE butterfly you have killed. Just use it on the fresh corpse of a BLUE butterfly.",
						[12] = "Return the prepared butterfly to Explorer Society representative.",
						[13] = "Ask for another butterfly hunt.",
						[14] = "This preparation kit will allow you to collect a RED butterfly you have killed. Just use it on the fresh corpse of a RED butterfly.",
						[15] = "Return the prepared butterfly to Explorer Society representative.",
					},

				},

				[4] = {
					name = "The Plant Collection", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 17, endvalue = 26,
					states = {
						[17] = "Take botanist's container. Use it on a jungle bells plant to collect a sample.",
						[18] = "Report about your plant collection to Explorer Society representative.",
						[19] = "Ask for plant collection when you are ready to continue.",
						[20] = "Use botanist's container on a witches cauldron to collect a sample.",
						[21] = "Report about your plant collection to Explorer Society representative.",
						[22] = "Ask for plant collection when you are ready to continue.",
						[23] = "Use this botanist's container on a giant jungle rose to obtain a sample.",
						[24] = "Report about your plant collection to Explorer Society representative.",
					},

				},

				[5] = {
					name = "The Lizard Urn", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 27, endvalue = 29,
					states = {
						[27] = "In the south-east of Tiquanda is a small settlement of the lizard people. Beneath the newly constructed temple there, the lizards hide the urn. Acquire an ancient urn which is some sort of relic to the lizard people of Tiquanda.",
						[28] = "Bring the Funeral Urn back to the Explorer Society.",
					},

				},

				[6] = {
					name = "The Bonelord Secret", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 30, endvalue = 32,
					states = {
						[30] = "Travel to the city of Darashia and then head north-east for the pyramid. If any documents are left, you probably find them in the catacombs beneath.",
						[31] = "Bring the Wrinkled Parchment back to the Explorer Society representative.",
					},

				},

				[7] = {
					name = "The Orc Powder", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 33, endvalue = 35,
					states = {
						[33] = "As far as we can tell, the orcs maintain some sort of training facility in some hill in the north-east of their city. There you should find lots of their war wolves and hopefully also some of the orcish powder.",
						[34] = "Bring the Strange Powder to the Explorer Society representative to complete your mission.",
					},

				},

				[8] = {
					name = "The Elven Poetry", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 36, endvalue = 38,
					states = {
						[36] = "This mission is easy but nonetheless vital. Travel Hellgate beneath Ab'Dendriel and get the book.",
						[37] = "Bring back an elven poetry book to the Explorer Society representative.",
					},

				},

				[9] = {
					name = "The Memory Stone", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 39, endvalue = 41,
					states = {
						[39] = "In the ruins of north-western Edron you should be able to find a memory stone. ",
						[40] = "Bring back a memory stone to the Explorer Society representative.",
					},

				},

				[10] = {
					name = "The Rune Writings", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 42, endvalue = 47,
					states = {
						[42] = "Somewhere under the ape infested city of Banuta, one can find dungeons that were once inhabited by lizards. Look there for an atypical structure that would rather fit to Ankrahmun and its Ankrahmun Tombs. Copy the runes you will find on this structure.",
						[43] = "Report back to the Explorer Society representative.",
					},

				},

				[11] = {
					name = "The Ectoplasm", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 45, endvalue = 47,
					states = {
						[45] = "Take ectoplasm container and use it on a ghost that was recently slain.",
						[46] = "Return back to the Explorer Society representative with the collected ectoplasm.",
					},

				},

				[12] = {
					name = "The Spectral Dress", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 48, endvalue = 50,
					states = {
						[48] = "The queen of the banshees lives in the so called Ghostlands, south west of Carlin. Try to get a spectral dress from her.",
						[49] = "Report to the Explorer Society with the spectral dress.",
					},

				},

				[13] = {
					name = "The Spectral Stone", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 51, endvalue = 55,
					states = {
						[51] = "Please travel to our second base and ask them to mail us their latest research reports. Then return here and ask about new missions.",
						[52] = "Tell our fellow explorer that the papers are in the mail already.",
						[53] = "Take the spectral essence and use it on the strange carving in this building as well as on the corresponding tile in our second base.",
						[54] = "Good! Now use the spectral essence on the strange carving in our second base.",
					},

				},

				[14] = {
					name = "The Astral Portals", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 56, endvalue = 56,
					states = {
						[56] = "Both carvings are now charged and harmonised. You are able to travel in zero time from one base to the other, but you need to have an orichalcum pearl in your possession to use it as power source.",
					},

				},

				[15] = {
					name = "The Island of Dragons", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 57, endvalue = 58,
					states = {
						[57] = "Travel to Okolnir and try to find a proof for the existence of dragon lords there in the old times. I think old Buddel might be able to bring you there.",
						[58] = "Report back to Lurik with the dragon scale.",
					},

				},

				[16] = {
					name = "The Ice Music", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 60, endvalue = 61,
					states = {
						[60] = "There is a cave on Hrodmir, north of the southernmost barbarian camp Krimhorn. In this cave, there are a waterfall and a lot of stalagmites. Take the resonance crystal and use it on the stalagmites in the cave to record the sound of the wind.",
						[61] = "Report back to Lurik.",
						[62] = "Now you may use the Astral Bridge from Liberty Bay to Svargrond.",
					},

				},

				[17] = {
					name = "The Undersea Kingdom", storageid = Storage.ExplorerSociety.CalassaQuest, startvalue = 1, endvalue = 2,
					states = {
						[1] = "Captain Max will bring you to Calassa whenever you are ready. Please try to retrieve the missing logbook which must be in one of the sunken shipwrecks.",
						[2] = "Report about your Calassa mission to Berenice in Liberty Bay.",
					},

				},

			},
		},
		[4] = {
			name = "Killing in the Name of...", startstorageid = 100157, startstoragevalue = 1,
			missions = {
				[1] = {
					name = "Paw and Fur: Member", storageid = 2500, startvalue = 0, endvalue = 10, description = function(player)return string.format("You are member of the Paw and Fur hunting elite. You currently have %d Paw and Fur points.", (math.max(player:getStorageValue(2500), 0))) end,
				},
				[2] = {
					name = "Paw and Fur: Ranger", storageid = 2500, startvalue = 11, endvalue = 40, description = function(player)return string.format("You are Ranger of the Paw and Fur hunting elite. You currently have %d Paw and Fur points.", (math.max(player:getStorageValue(2500), 0))) end,
				},
				[3] = {
					name = "Paw and Fur: Big Game Hunter", storageid = 2500, startvalue = 41, endvalue = 69, description = function(player)return string.format("You are Big Game Hunter in the Paw and Fur hunting elite. You currently have %d Paw and Fur points.", (math.max(player:getStorageValue(2500), 0))) end,
				},
				[4] = {
					name = "Paw and Fur: Trophy Hunter", storageid = 2500, startvalue = 70, endvalue = 99, description = function(player)return string.format("You are Trophy Hunter in the Paw and Fur hunting elite. You currently have %d Paw and Fur points. Ask Elite Hunter for 'special task' he might have something for you.", (math.max(player:getStorageValue(2500), 0))) end,
				},
				[5] = {
					name = "Paw and Fur: Elite Hunter", storageid = 2500, startvalue = 100, endvalue = 9999, description = function(player)return string.format("You have obtained the highest possible rank in the Paw and Fur hunting elite, you are Elite Hunter. You currently have %d Paw and Fur points. Ask Elite Hunter for 'special task' he might have something for you.", (math.max(player:getStorageValue(2500), 0))) end,
				},
				[6] = {
					name = "Paw and Fur: Tiquandas Revenge", storageid = Storage.KillingInTheNameOf.TiquandasRevengeTeleport, startvalue = 1, endvalue = 2,
					states = {
						[1] = "Elite Hunter told you that there is Tiquandas Revenge hiding somewhere in the jungle of Port Hope. Go find its hideout and kill it.",
						[2] = "You have slained the Tiquandas Revenge.",
					},

				},
				[7] = {
					name = "Paw and Fur: Demodras", storageid = Storage.KillingInTheNameOf.DemodrasTeleport, startvalue = 1, endvalue = 2,
					states = {
						[1] = "Elite Hunter wanted you to go look for Demodras'  hideout. He also mentioned that it might be somewhere under the Plains of Havoc.",
						[2] = "You have slained the Demodras.",
					},
				},
				[8] = {
					name = "Paw and Fur: The Snapper", storageid = 34100, startvalue = 1, endvalue = 2, description = "Grizzly told you about the Snapper, a crocodile that already killed many citizens of Port Hope. Try find its hideout and kill it.",
				},
				[9] = {
					name = "Paw and Fur: Hide", storageid = 34101, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[10] = {
					name = "Paw and Fur: Deathbine", storageid = 34102, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[11] = {
					name = "Paw and Fur: The Bloodtusk", storageid = 34103, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[12] = {
					name = "Paw and Fur: Shardhead", storageid = 34104, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[13] = {
					name = "Paw and Fur: Esmerelda", storageid = 34105, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[14] = {
					name = "Paw and Fur: Fleshcrawler", storageid = 34106, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[15] = {
					name = "Paw and Fur: Ribstride", storageid = 34107, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[16] = {
					name = "Paw and Fur: Bloodweb", storageid = 34108, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[17] = {
					name = "Paw and Fur: Thul", storageid = 34109, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[18] = {
					name = "Paw and Fur: The Old Widow", storageid = 34110, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[19] = {
					name = "Paw and Fur: Hemming", storageid = 34111, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[20] = {
					name = "Paw and Fur: Tormentor", storageid = 34112, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[21] = {
					name = "Paw and Fur: Flameborn", storageid = 34113, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[22] = {
					name = "Paw and Fur: Fazzrah", storageid = 34114, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[23] = {
					name = "Paw and Fur: Tromphonyte", storageid = 34115, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[24] = {
					name = "Paw and Fur: Sulphur Scuttler", storageid = 34116, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[25] = {
					name = "Paw and Fur: Bruise Payne", storageid = 34117, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[26] = {
					name = "Paw and Fur: The Many", storageid = 34118, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[27] = {
					name = "Paw and Fur: The Noxious Spawn", storageid = 34119, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[28] = {
					name = "Paw and Fur: Gorgo", storageid = 34120, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[29] = {
					name = "Paw and Fur: Stonecracker", storageid = 34121, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[30] = {
					name = "Paw and Fur: Leviathan", storageid = 34122, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[31] = {
					name = "Paw and Fur: Kerberos", storageid = 34123, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[32] = {
					name = "Paw and Fur: Ethershreck", storageid = 34124, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[33] = {
					name = "Paw and Fur: Paiz the Pauperizer", storageid = 34125, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[34] = {
					name = "Paw and Fur: Bretzecutioner", storageid = 34126, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[35] = {
					name = "Paw and Fur: Zanakeph", storageid = 34127, startvalue = 1, endvalue = 2, description = "Try find its hideout and kill it.",
				},
				[36] = {
					name = "Edron City - Elite Hunting: Trolls", storageid = 1501, startvalue = 0, endvalue = 100, description = function(player)return string.format("You already hunted %d/100 Trolls.", (math.max(player:getStorageValue(1501), 0))) end,
				},
				[37] = {
					name = "Edron City - Elite Hunting: Goblins", storageid = 1502, startvalue = 0, endvalue = 150, description = function(player)return string.format("You already hunted %d/150 Goblins.", (math.max(player:getStorageValue(1502), 0))) end,
				},
				[38] = {
					name = "Paw and Fur: Minotaurs", storageid = 65002, startvalue = 0, endvalue = 5000, description = function(player)return string.format("You already hunted %d/5000 Minotaurs.", (math.max(player:getStorageValue(65002), 0))) end,
				},
				[39] = {
					name = "Paw and Fur: Necromancers and Priestess", storageid = 65001, startvalue = 0, endvalue = 4000, description = function(player)return string.format("You already hunted %d/4000 Necromancers and Priestess.", (math.max(player:getStorageValue(65001), 0))) end,
				},
				[40] = {
					name = "Paw and Fur: Crocodiles", storageid = 65003, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 crocodiles.", (math.max(player:getStorageValue(65003), 0))) end,
				},
				[41] = {
					name = "Paw and Fur: Badgers", storageid = 65004, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 badgers.", (math.max(player:getStorageValue(65004), 0))) end,
				},
				[42] = {
					name = "Paw and Fur: Tarantulas", storageid = 65005, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 tarantulas.", (math.max(player:getStorageValue(65005), 0))) end,
				},
				[43] = {
					name = "Paw and Fur: Carniphilas", storageid = 65006, startvalue = 0, endvalue = 150, description = function(player)return string.format("You already hunted %d/150 carniphilas.", (math.max(player:getStorageValue(65006), 0))) end,
				},
				[44] = {
					name = "Paw and Fur: Stone Golems", storageid = 65007, startvalue = 0, endvalue = 200, description = function(player)return string.format("You already hunted %d/200 stone golems.", (math.max(player:getStorageValue(65007), 0))) end,
				},
				[45] = {
					name = "Paw and Fur: Mammoths", storageid = 65008, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 mammoths.", (math.max(player:getStorageValue(65008), 0))) end,
				},
				[46] = {
					name = "Paw and Fur: Gnarlhounds", storageid = 65009, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 gnarlhounds.", (math.max(player:getStorageValue(65009), 0))) end,
				},
				[47] = {
					name = "Paw and Fur: Terramites", storageid = 65010, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 terramites.", (math.max(player:getStorageValue(65010), 0))) end,
				},
				[48] = {
					name = "Paw and Fur: Apes", storageid = 65011, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 apes.", (math.max(player:getStorageValue(65011), 0))) end,
				},
				[49] = {
					name = "Paw and Fur: Thornback Tortoises", storageid = 65012, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 thornback tortoises.", (math.max(player:getStorageValue(65012), 0))) end,
				},
				[50] = {
					name = "Paw and Fur: Gargoyles", storageid = 65013, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 gargoyles.", (math.max(player:getStorageValue(65013), 0))) end,
				},
				[51] = {
					name = "Paw and Fur: Ice Golems", storageid = 65014, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 ice golems.", (math.max(player:getStorageValue(65014), 0))) end,
				},
				[52] = {
					name = "Paw and Fur: Quara Scouts", storageid = 65015, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 quara scouts.", (math.max(player:getStorageValue(65015), 0))) end,
				},
				[53] = {
					name = "Paw and Fur: Mutated Rats", storageid = 65016, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 mutated rats.", (math.max(player:getStorageValue(65016), 0))) end,
				},
				[54] = {
					name = "Paw and Fur: Ancient Scarabs", storageid = 65017, startvalue = 0, endvalue = 250, description = function(player)return string.format("You already hunted %d/250 ancient scarabs.", (math.max(player:getStorageValue(65017), 0))) end,
				},
				[55] = {
					name = "Paw and Fur: Wyverns", storageid = 65018, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 wyverns.", (math.max(player:getStorageValue(65018), 0))) end,
				},
				[56] = {
					name = "Paw and Fur: Lancer Beetles", storageid = 65019, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 lancer beetles.", (math.max(player:getStorageValue(65019), 0))) end,
				},
				[57] = {
					name = "Paw and Fur: Wailing Widows", storageid = 65020, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 wailing widows.", (math.max(player:getStorageValue(65020), 0))) end,
				},
				[58] = {
					name = "Paw and Fur: Killer Caimans", storageid = 65021, startvalue = 0, endvalue = 250, description = function(player)return string.format("You already hunted %d/250 killer caimans.", (math.max(player:getStorageValue(65021), 0))) end,
				},
				[59] = {
					name = "Paw and Fur: Bonebeasts", storageid = 65022, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 bonebeasts.", (math.max(player:getStorageValue(65022), 0))) end,
				},
				[60] = {
					name = "Paw and Fur: Crystal Spiders", storageid = 65023, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 crystal spiders.", (math.max(player:getStorageValue(65023), 0))) end,
				},
				[61] = {
					name = "Paw and Fur: Mutated Tigers", storageid = 65024, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 mutated tigers.", (math.max(player:getStorageValue(65024), 0))) end,
				},
				[62] = {
					name = "Paw and Fur: Underwater Quara", storageid = 65025, startvalue = 0, endvalue = 600, description = function(player)return string.format("You already hunted %d/600 underwater quara.", (math.max(player:getStorageValue(65025), 0))) end,
				},
				[63] = {
					name = "Paw and Fur: Giant Spiders", storageid = 65026, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 giant spiders.", (math.max(player:getStorageValue(65026), 0))) end,
				},
				[64] = {
					name = "Paw and Fur: Werewolves", storageid = 65027, startvalue = 0, endvalue = 300, description = function(player)return string.format("You already hunted %d/300 werewolves.", (math.max(player:getStorageValue(65027), 0))) end,
				},
				[65] = {
					name = "Paw and Fur: Nightmares", storageid = 65028, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 nightmares.", (math.max(player:getStorageValue(65028), 0))) end,
				},
				[66] = {
					name = "Paw and Fur: Hellspawns", storageid = 65029, startvalue = 0, endvalue = 600, description = function(player)return string.format("You already hunted %d/600 hellspawns.", (math.max(player:getStorageValue(65029), 0))) end,
				},
				[67] = {
					name = "Paw and Fur: High Class Lizards", storageid = 65030, startvalue = 0, endvalue = 800, description = function(player)return string.format("You already hunted %d/800 high class lizards.", (math.max(player:getStorageValue(65030), 0))) end,
				},
				[68] = {
					name = "Paw and Fur: Stampors", storageid = 65031, startvalue = 0, endvalue = 600, description = function(player)return string.format("You already hunted %d/600 stampors.", (math.max(player:getStorageValue(65031), 0))) end,
				},
				[69] = {
					name = "Paw and Fur: Brimstone Bugs", storageid = 65032, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 brimstone bugs.", (math.max(player:getStorageValue(65032), 0))) end,
				},
				[70] = {
					name = "Paw and Fur: Mutated Bats", storageid = 65033, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 mutated bats.", (math.max(player:getStorageValue(65033), 0))) end,
				},
				[71] = {
					name = "Paw and Fur: Hydras", storageid = 65034, startvalue = 0, endvalue = 650, description = function(player)return string.format("You already hunted %d/650 hydras.", (math.max(player:getStorageValue(65034), 0))) end,
				},
				[72] = {
					name = "Paw and Fur: Serpent Spawns", storageid = 65035, startvalue = 0, endvalue = 800, description = function(player)return string.format("You already hunted %d/800 serpent spawns.", (math.max(player:getStorageValue(65035), 0))) end,
				},
				[73] = {
					name = "Paw and Fur: Medusas", storageid = 65036, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 medusas.", (math.max(player:getStorageValue(65036), 0))) end,
				},
				[74] = {
					name = "Paw and Fur: Behemoths", storageid = 65037, startvalue = 0, endvalue = 700, description = function(player)return string.format("You already hunted %d/700 behemoths.", (math.max(player:getStorageValue(65037), 0))) end,
				},
				[75] = {
					name = "Paw and Fur: Sea Serpents and Young Sea Serpents", storageid = 65038, startvalue = 0, endvalue = 900, description = function(player)return string.format("You already hunted %d/900 sea serpents and young sea serpents.", (math.max(player:getStorageValue(65038), 0))) end,
				},
				[76] = {
					name = "Paw and Fur: Hellhounds", storageid = 65039, startvalue = 0, endvalue = 250, description = function(player)return string.format("You already hunted %d/250 hellhounds.", (math.max(player:getStorageValue(65039), 0))) end,
				},
				[77] = {
					name = "Paw and Fur: Ghastly Dragons", storageid = 65040, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 ghastly dragons.", (math.max(player:getStorageValue(65040), 0))) end,
				},
				[78] = {
					name = "Paw and Fur: Drakens", storageid = 65041, startvalue = 0, endvalue = 900, description = function(player)return string.format("You already hunted %d/900 drakens.", (math.max(player:getStorageValue(65041), 0))) end,
				},
				[79] = {
					name = "Paw and Fur: Destroyers", storageid = 65042, startvalue = 0, endvalue = 650, description = function(player)return string.format("You already hunted %d/650 destroyers.", (math.max(player:getStorageValue(65042), 0))) end,
				},
				[80] = {
					name = "Paw and Fur: Undead Dragons", storageid = 65043, startvalue = 0, endvalue = 400, description = function(player)return string.format("You already hunted %d/400 undead dragons.", (math.max(player:getStorageValue(65043), 0))) end,
				},
				[81] = {
					name = "Paw and Fur: Demons", storageid = 65044, startvalue = 0, endvalue = 6666, description = function(player)return string.format("You already hunted %d/6666 demons.", (math.max(player:getStorageValue(65044), 0))) end,
				},
				[82] = {
					name = "Paw and Fur: Green Djinns or Efreets", storageid = 65045, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 green djinns or efreets.", (math.max(player:getStorageValue(65045), 0))) end,
				},
				[83] = {
					name = "Paw and Fur: Blue Djinns or Marids", storageid = 65046, startvalue = 0, endvalue = 500, description = function(player)return string.format("You already hunted %d/500 blue djinns or marids.", (math.max(player:getStorageValue(65046), 0))) end,
				},
				[84] = {
					name = "Paw and Fur: Pirates", storageid = 65047, startvalue = 0, endvalue = 3000, description = function(player)return string.format("You already hunted %d/3000 pirates.", (math.max(player:getStorageValue(65047), 0))) end,
				},
				[85] = {
					name = "Paw and Fur: Pirates Second", storageid = 65048, startvalue = 0, endvalue = 3000, description = function(player)return string.format("You already hunted %d/3000 pirates.", (math.max(player:getStorageValue(65048), 0))) end,
				},
				[86] = {
					name = "Turmoil of War", storageid = 65049, startvalue = 0, endvalue = 5000, description = function(player)return string.format("Budrik asked you to kill 5000 minotaurs for him. You already killed %d minotaurs.", (math.max(player:getStorageValue(65049), 0))) end,
				},
				[87] = {
					name = "Paw and Fur: Necromancers and Priestess", storageid = 65050, startvalue = 0, endvalue = 4000, description = function(player)return string.format("You already hunted %d/4000 necromancers and priestess.", (math.max(player:getStorageValue(65050), 0))) end,
				},
			}
		},
	}
end

if not LastQuestlogUpdate then
	LastQuestlogUpdate = {}
end

-- Text functions
function evaluateText(value, player)
	if type(value) == "function" then
		return tostring(value(player))
	end

	return tostring(value)
end

-- Game functions
function Game.isValidQuest(questId)
	return (Quests and Quests[questId])
end

function Game.isValidMission(questId, missionId)
	return (Game.isValidQuest(questId) and Quests[questId].missions and Quests[questId].missions[missionId])
end

function Game.getQuest(questId)
	if Game.isValidQuest(questId) then
		return Quests[questId]
	end
	return false
end

function Game.getQuestIdByName(name)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest and quest.name:lower() == name:lower() then
			return questId
		end
	end
	return false
end

function Game.getMission(questId, missionId)
	if Game.isValidMission(questId, missionId) then
		return Quests[questId].missions[missionId]
	end
	return false
end

function Game.isQuestStorage(key, value, oldValue)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.startstorageid == key and quest.startstoragevalue == value then
				return true
			end

			if quest.missions then
				for missionId = 1, #quest.missions do
					local mission = Game.getMission(questId, missionId)
					if mission then
						if mission.storageid == key and value >= mission.startvalue and value <= mission.endvalue then
							return mission.description or oldValue < mission.storageid or oldValue > mission.endvalue;
						end
					end
				end
			end
		end
	end
	return false
end

function Game.getQuestsCount(player)
	local count = 0
	if Quests then
		for id = 1, #Quests do
			if player:questIsStarted(id) then
				count = count + 1
			end
		end
	end
	return count
end

function Game.getMissionsCount(player, questId)
	local quest = Game.getQuest(questId)
	local count = 0
	if quest then
		local missions = quest.missions
		if missions then
			for missionId = 1, #missions do
				if player:missionIsStarted(questId, missionId) then
					count = count + 1
				end
			end
		end
	end
	return count
end

function Game.addQuest(quest)
	local findQuest = Game.getQuestIdByName(quest.name)
	if findQuest then
		Quests[findQuest] = quest
		return findQuest
	end

	local questId = #Quests + 1
	Quests[questId] = quest
	return questId
end

-- Player functions

function Player.questIsStarted(self, questId)
	local quest = Game.getQuest(questId)
	if quest and self:getStorageValue(quest.startstorageid) ~= -1 or self:getStorageValue(quest.startstorageid) >= quest.startstoragevalue then
		return true
	end
	return false
end

function Player.missionIsStarted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageid)
		if value == -1 or value < mission.startvalue or (not mission.ignoreendvalue and value > mission.endvalue) then
			return false
		end

		return true
	end
	return false
end

function Player.questIsCompleted(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		if missions then
			-- if(self:missionIsCompleted(questId, #missions))then
				-- return true
			-- end
			for missionId = 1, #missions do
				if not self:missionIsCompleted(questId, missionId) then
					return false
				end
			end
		end
		return true
	end
	return false
end

function Player.missionIsCompleted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageid)
		if value == -1 then
			return false
		end

		if mission.ignoreendvalue then
			return value >= mission.endvalue
		end

		return value == mission.endvalue
	end
	return false
end

function Player.getMissionName(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if self:missionIsCompleted(questId, missionId) then
			return mission.name .. " (completed)"
		end
		return mission.name
	end
	return ""
end

function Player.getMissionDescription(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if mission.description then
			return evaluateText(mission.description, self)
		end

		local value = self:getStorageValue(mission.storageid)
		local state = value
		if mission.ignoreendvalue and value > table.maxn(mission.states) then
			state = table.maxn(mission.states)
		end
		return evaluateText(mission.states[state], self)
	end
	return "An error has occurred, please contact a gamemaster."
end

function Player.sendQuestTracker(self)
	local msg = NetworkMessage()
	msg:addByte(0xD0) -- byte quest tracker
	msg:addByte(1) -- send quests of quest log ??
	msg:addU16(1) -- unknown
	msg:sendToPlayer(self)
	msg:delete()
end


function Player.sendQuestLog(self)
	local msg = NetworkMessage()
	msg:addByte(0xF0)
	msg:addU16(Game.getQuestsCount(self))
	for questId = 1, #Quests do
		if self:questIsStarted(questId) then
			msg:addU16(questId)
			msg:addString(Quests[questId].name .. ""..(self:questIsCompleted(questId) and " (completed)" or ""))
			msg:addByte(self:questIsCompleted(questId))
		end
	end
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.sendQuestLine(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		local msg = NetworkMessage()
		msg:addByte(0xF1)
		msg:addU16(questId)
		msg:addByte(Game.getMissionsCount(self, questId))
		if missions then
			for missionId = 1, #missions do
				if self:missionIsStarted(questId, missionId) then
					if (self:getClient().version >= 1120)then
						msg:addU16(questId)
					end
					msg:addString(self:getMissionName(questId, missionId))
					msg:addString(self:getMissionDescription(questId, missionId))
				end
			end
		end
		if (self:getClient().os == CLIENTOS_NEW_WINDOWS) then
			self:sendQuestTracker()
		end

		msg:sendToPlayer(self)
		msg:delete()
	end
end

function Player.updateStorage(self, key, value, oldValue, currentFrameTime)
	local guid = self:getGuid()
	if LastQuestlogUpdate[guid] ~= currentFrameTime and Game.isQuestStorage(key, value, oldValue) then
		LastQuestlogUpdate[guid] = currentFrameTime
		self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your questlog has been updated.")
	end
end
