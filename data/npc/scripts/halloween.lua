local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)

local condition = createConditionObject(CONDITION_OUTFIT)
setConditionParam(condition, CONDITION_PARAM_TICKS, 3 * 24 * 3600 * 1000) -- here time in miliseconds, default 3 days
addOutfitCondition(condition, 0, 230, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 231, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 232, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 233, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 234, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 235, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 236, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 237, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 238, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 239, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 240, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 241, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 242, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 243, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 244, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 245, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 246, 0, 0, 0, 0)
addOutfitCondition(condition, 0, 247, 0, 0, 0, 0)
setCombatCondition(combat, condition)

local area = createCombatArea( { {1,1,1,1,1}, {1,1,1,1,1}, {1,1,3,1,1}, {1,1,1,1,1}, {1,1,1,1,1} } )
setCombatArea(combat, area)

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. Say {halloween}.")

function halloweenNPC(cid, message, keywords, parameters, node)
    doCombat(getNpcCid(), combat, numberToVariant(getNpcCid()))
    npcHandler:say('You are Dead, Suprise!', cid)
    return true
end
keywordHandler:addKeyword({'halloween'}, halloweenNPC, {})
npcHandler:addModule(FocusModule:new())