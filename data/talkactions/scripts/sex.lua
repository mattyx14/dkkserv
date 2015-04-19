local combat = createCombatObject()
local condition = createConditionObject(CONDITION_DROWN)
setConditionParam(condition, CONDITION_PARAM_DELAYED, 1)
addDamageCondition(condition, 20, 2000, -10)
setCombatCondition(combat, condition)

function onSay(cid, words, param)
sexProposal = getPlayerStorageValue(cid, 66600)
sexAccept = cid
noCondom = math.random(4)
aidsEffect = math.random(3)

	local playerPos = getCreaturePosition(cid)
	if getPlayerLookDir(cid) == 1 then 
		posDir = {x = playerPos.x + 1, y = playerPos.y, z = playerPos.z, stackpos = 253}
	elseif getPlayerLookDir(cid) == 2 then
		posDir = {x = playerPos.x, y = playerPos.y + 1, z = playerPos.z, stackpos = 253}
	elseif getPlayerLookDir(cid) == 3 then
		posDir = {x = playerPos.x - 1, y = playerPos.y, z = playerPos.z, stackpos = 253}
	else
		posDir = {x = playerPos.x, y = playerPos.y - 1, z = playerPos.z, stackpos = 253}
	end
	target = getThingfromPos(posDir)
	if isPlayer(target.uid) == TRUE then
		if getPlayerLookDir(target.uid) == getPlayerLookDir(cid)-2 then
			sameLookDir = TRUE
		elseif getPlayerLookDir(target.uid) == getPlayerLookDir(cid)+2 then
			sameLookDir = TRUE
		else
			sameLookDir = FALSE
		end
		if sameLookDir == TRUE then
			if getPlayerSex(target.uid) == getPlayerSex(cid) then
				doPlayerSendCancel(cid, 'You cannot make sex with same gender as self, pervert!')
				doSendMagicEffect(getPlayerPosition(cid),CONST_ME_POFF)
			else
				if getPlayerGroupId(cid) > 3 and getPlayerGroupId(cid) >= getPlayerGroupId(target.uid) then
					sexProposal = cid
					sexAccept = target.uid
					allowSex = TRUE
				elseif target.uid == sexProposal then
					allowSex = TRUE
				else
					allowSex = FALSE
				end
				if allowSex == TRUE then
					if getPlayerStorageValue(sexProposal, 66660) > 0 or getPlayerStorageValue(sexAccept, 66660) > 0 then
						doSendAnimatedText(getCreaturePosition(sexProposal), 'Ahh, Ahh...', TEXTCOLOR_YELLOW)
						doSendMagicEffect(getPlayerPosition(sexProposal),CONST_ME_STUN)
						doSendAnimatedText(getThingPos(sexAccept), 'Ohh, Ohh!', TEXTCOLOR_TEAL)
						doSendMagicEffect(getPlayerPosition(sexAccept),CONST_ME_STUN)
						setPlayerStorageValue(sexProposal, 66660, 0)
						setPlayerStorageValue(sexAccept, 66660, 0)
					else
						if noCondom == 3 then
							hurtMessage = 'Sex without condoms brings consequences - You just got AIDS!\nYour sickness will hurt alot...'
							partnerMessage = 'Sex without condoms brings consequences - Your partner just got AIDS!'
							bothMessage = 'Sex without condoms brings consequences - You and Your partner just got AIDS!\nYour sickness will hurt alot...'
							if aidsEffect == 1 then
								proposalMessage = hurtMessage
								acceptMessage = partnerMessage
								hurtPlayer = sexProposal
							elseif aidsEffect == 2 then
								proposalMessage = partnerMessage
								acceptMessage = hurtMessage
								hurtPlayer = sexAccept
							else
								proposalMessage = bothMessage
								acceptMessage = bothMessage
								hurtPlayer = FALSE
							end
							doPlayerSendTextMessage(sexProposal, MESSAGE_STATUS_WARNING, proposalMessage)
							doPlayerSendTextMessage(sexAccept, MESSAGE_STATUS_WARNING, acceptMessage)
							if hurtPlayer == FALSE then
								doSendMagicEffect(getPlayerPosition(sexProposal),CONST_ME_YELLOW_RINGS)
								doCombat(0,combat,numberToVariant(sexProposal))
								doSendMagicEffect(getPlayerPosition(sexAccept),CONST_ME_YELLOW_RINGS)
								doCombat(0,combat,numberToVariant(sexAccept))
							else
								doSendMagicEffect(getPlayerPosition(hurtPlayer),CONST_ME_YELLOW_RINGS)
								doCombat(0,combat,numberToVariant(hurtPlayer))
							end
						elseif noCondom == 2 then
							payMessage = '\nAs a good parent You spend whole Your gold for the child.'
							if getPlayerSex(sexProposal) == 0 then
								childMother = sexProposal
								childFather = sexAccept
								motherMsg = payMessage
								fatherMsg = ""
							elseif getPlayerSex(sexProposal) == 1 then
								childMother = sexAccept
								childFather = sexProposal
								motherMsg = ""
								fatherMsg = payMessage
							else
								if getPlayerSex(sexAccept) == 0 then
									childMother = sexAccept
									childFather = sexProposal
									motherMsg = ""
									fatherMsg = payMessage
								else
									childMother = sexProposal
									childFather = sexAccept
									motherMsg = payMessage
									fatherMsg = ""
								end
							end
							doPlayerSendTextMessage(childFather, MESSAGE_STATUS_WARNING, 'Sex without condoms brings consequences - '..getCreatureName(childMother)..' just born a child!' .. fatherMsg)
							doPlayerSendTextMessage(childMother, MESSAGE_STATUS_WARNING, 'Sex without condoms brings consequences - You have just born a child!' .. motherMsg)
							doSendMagicEffect(getPlayerPosition(childFather), CONST_ME_FIREWORK_YELLOW)
							doSendMagicEffect(getPlayerPosition(childMother), CONST_ME_FIREWORK_RED)
							if math.random(2) == 1 then
								childGender = "son"
							else
								childGender = "daughter"
							end
							doSetItemSpecialDescription(doPlayerAddItem(childMother,16037,1),'It is a '..childGender..' of '..getCreatureName(childFather)..' and '..getCreatureName(childMother)..'.')
							local gps = getPlayerItemCount(sexProposal, ITEM_GOLD)
							local pcs = getPlayerItemCount(sexProposal, ITEM_PLATINUM)
							local ccs = getPlayerItemCount(sexProposal, ITEM_CRYSTAL)
							if gps > 0 or pcs > 0 or ccs > 0 then
								doPlayerRemoveItem(sexProposal, ITEM_GOLD, gps)
								doPlayerRemoveItem(sexProposal, ITEM_PLATINUM, pcs)
								doPlayerRemoveItem(sexProposal, ITEM_CRYSTAL, ccs)
							end
						else
							doSendAnimatedText(getCreaturePosition(sexProposal), 'Ahh, Ahh...', TEXTCOLOR_YELLOW)
							doSendMagicEffect(getPlayerPosition(sexProposal),CONST_ME_STUN)
							doSendAnimatedText(getThingPos(sexAccept), 'Ohh, Ohh!', TEXTCOLOR_TEAL)
							doSendMagicEffect(getPlayerPosition(sexAccept),CONST_ME_STUN)
						end
					end
					setPlayerStorageValue(sexProposal, 66600, 0)
					setPlayerStorageValue(sexAccept, 66600, 0)
				else
					if getPlayerStorageValue(target.uid, 66600) == cid then
						doPlayerSendCancel(cid, 'You have already sent a sex proposal to '..getCreatureName(target.uid)..'.')
						doSendMagicEffect(getPlayerPosition(cid),CONST_ME_POFF)
					else
						setPlayerStorageValue(target.uid, 66600, cid)
						doPlayerSendTextMessage(cid, 22, 'You have sent a sex proposal to '..getCreatureName(target.uid)..'.')
						doPlayerSendTextMessage(target.uid, 22, getCreatureName(cid)..' wants to have a sex with You.')
						doSendMagicEffect(getPlayerPosition(target.uid),CONST_ME_HEARTS)
					end
				end
			end
		else
			doPlayerSendCancel(cid, 'You must stand after your partner to do sex.')
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_POFF)
		end
	else
		doPlayerSendCancel(cid, 'You may do sex only with players.')
		doSendMagicEffect(getPlayerPosition(cid),CONST_ME_POFF)
	end
	doPlayerSendTextMessage(cid, 25, words)
	return FALSE
end
