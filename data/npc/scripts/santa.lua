PRESENT_STORAGE = 54165
random_items = {
	{1, 14157, 1}, -- 1% to get vampire lord bow
	{2, 13819, 1}, -- 1% to get vampire lord axe
	{3, 13914, 1}, -- 1% to get vampire lord sword
	{4, 13964, 1}, -- 1% to get vampire lord hammer
	{5, 13924, 1}, -- 1% to get vampire lord glove
	{6, 13871, 1}, -- 1% to get vampire lord helm
	{7, 13970, 1}, -- 1% to get vampire lord plate
	{8, 13883, 1}, -- 1% to get vampire lord legs
	{9, 13823, 1}, -- 1% to get vampire lord shield
	{90, 2472, 1}, -- 9% to get golden helmet
	{90, 2472, 1}, -- 9% to get magic plate armor
	{90, 2470, 1}, -- 9% to get golden legs
	{90, 2514, 1}, -- 9% to get mastermind shield
	{100, 6512, 1}, -- 10% to get Santa Doll
	{200, 2160, 20}, -- 20% to get 20 Crystal coins
	{300, 6531, 1}, -- 30% to get Santa Hat
	{400, 11255, 1}, -- 40% to get Teddy Bear
	{430, 2112, 1}, -- 40% to get Teddy Bear
	{440, 11256, 1}, -- 40% to get Snowman Doll
	{600, 2111, 5}, -- 60% to get 10 Snowballs
	{700, 2675, 10}, -- 70% to get 10 Orange
	{800, 2674, 15}, -- 80% to get 10 Red Apples
	{900, 2687, 10}, -- 90% to get 10 Cookies
	{999, 2688, 10}, -- 100% to get 10 Candy Canes
	{1000, 1294, 5} -- 100% to get 5 small stone
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()							npcHandler:onThink()						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

function santaNPC(cid, message, keywords, parameters, node)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	if(parameters.present == true) then
		if(getPlayerStorageValue(cid, PRESENT_STORAGE) < 1) then
			local item = {}
			local reward = 0
			local count = ""
			for i = 1, #random_items do
				item = random_items[i]
				if(math.random(0,999) < item[1]) then
					reward = item[2]
					subType = item[3]

					if subType > 1 then
						count = subType .. " "
					end

					break
				end
			end

			doPlayerAddItem(cid, reward, subType)
			setPlayerStorageValue(cid, PRESENT_STORAGE, 1)
			npcHandler:say('HO HO HO! You really behaved this year! won ' .. count .. getItemNameById(reward) .. '. Congratulations and Happy Holidays, ho ho ho.', cid)
		else
			npcHandler:say('I have already given your present.', cid)
		end
	else
		npcHandler:say('Behave well that next year is over.', cid)
	end

	npcHandler:resetNpc()
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Merry Christmas |PLAYERNAME|. I am Santa Claus ho ho ho. I give gifts to good children. Tell {present} to see what I have for you!")
local noNode = KeywordNode:new({'no'}, santaNPC, {present = false})
local yesNode = KeywordNode:new({'yes'}, santaNPC, {present = true})

local node = keywordHandler:addKeyword({'present'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You have been good this year? Answer {yes} to earn your gift.'})
node:addChildKeywordNode(yesNode)
node:addChildKeywordNode(noNode)
npcHandler:addModule(FocusModule:new())