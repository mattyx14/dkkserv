-- START CONFIGURATION --
local STAKE_PERCENT = 50
local STAKE_ID = 5942
local VAMPIRE_DUST_ID = 5906
local DEMON_DUST_ID = 5905
local VAMPIRE = {2916}
local DEMON = {2956}

local KNIFE_PERCENT = 60
local KNIFE_ID = 5908
local MINOTAUR_LEATHER_ID = 5878
local LIZARD_LEATHER_ID = 5876
local DRAGON_LEATHER_ID = 5877
local RED_DRAGON_LEATHER_ID = 5948
local BEHEMOTH_FANG_ID = 5893
local HARDENED_BONE_ID = 5925
local MINOTAUR = {2830, 2871, 2876, 2866}
local LIZARD = {4259, 4262, 4256}
local DRAGON = {3104, 2844}
local DRAGON_LORD = {2881}
local BEHEMOTH = {2931}
local BONEBEAST = {3031}

local MESSAGE_SUCCESS = 'Gratz'
local MESSAGE_COLOR_SUCCESS = 102
-- END CONFIGURATION --

function onUse(cid,item,frompos,item2,topos)
	RANDOM = math.random(1,100)
	if item.itemid == STAKE_ID then
		if isInArray(VAMPIRE, item2.itemid) == TRUE then
			if RANDOM <= STAKE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,VAMPIRE_DUST_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(DEMON, item2.itemid) == TRUE then
			if RANDOM <= STAKE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,DEMON_DUST_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		end
		return 0
	elseif item.itemid == KNIFE_ID then
		if isInArray(MINOTAUR, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,MINOTAUR_LEATHER_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(LIZARD, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,LIZARD_LEATHER_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(DRAGON, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,DRAGON_LEATHER_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(DRAGON_LORD, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,RED_DRAGON_LEATHER_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(BEHEMOTH, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,BEHEMOTH_FANG_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		elseif isInArray(BONEBEAST, item2.itemid) == TRUE then
			if RANDOM <= KNIFE_PERCENT then
				doSendMagicEffect(topos,14)
				doPlayerAddItem(cid,HARDENED_BONE_ID,1)
				doSendAnimatedText(frompos,MESSAGE_SUCCESS,MESSAGE_COLOR_SUCCESS);
				doTransformItem(item2.uid,item2.itemid+1)
			else
				doSendMagicEffect(topos,3)
				doTransformItem(item2.uid,item2.itemid+1)
			end
		end
		return 0
	end
end