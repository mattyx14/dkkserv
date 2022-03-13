local monsters = {
	{tentacle = 'tentacle 1', pos = Position(1046, 26, 12)},
	{tentacle = 'tentacle 2', pos = Position(1053, 25, 12)},
	{tentacle = 'tentacle 3', pos = Position(1058, 30, 12)},
	{tentacle = 'tentacle 4', pos = Position(1051, 33, 12)},
	{tentacle = 'tentacle 5', pos = Position(1055, 34, 12)}
}

local function revertTheKraken(creature, tentacle)
	local monster = Creature(creature)
	if monster and monster:getHealth() >= 1 and monster:getPosition() == Position(1037, 6, 12) then
		monster:say('The Kraken has hidden', TALKTYPE_MONSTER_SAY)
		monster:teleportTo(Position(1052, 30, 12))
		monster:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end

	for i = 1, #monsters do
		local tentacles = monsters[i]
		local tentacle = Tile(Position(tentacles.pos)):getTopCreature()
		if tentacle and tentacle:isMonster() and tentacle:getName():lower() == tentacles.tentacle and tentacle:getHealth() >= 1 then
			tentacle:setMaxHealth(150000)
			tentacle:addHealth(150000)
			return true
		end
	end
end

local theKrakenPrepareDeath = CreatureEvent("TheKrakenPrepareDeath")
function theKrakenPrepareDeath.onPrepareDeath(creature, lastHitKiller, mostDamageKiller)
	if not creature:getName():lower() == "kraken head" and creature:isMonster() then
		return true
	end

	for i = 1, #monsters do
		local tentacles = monsters[i]
		local tentacle = Tile(Position(tentacles.pos)):getTopCreature()
		if tentacle and tentacle:isMonster() and tentacle:getName():lower() == tentacles.tentacle then
			creature:teleportTo(Position(1037, 6, 12))
			creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			creature:addHealth(450000, true)
			tentacle:setMaxHealth(30000)
			creature:say('The Kraken has hidden', TALKTYPE_MONSTER_SAY)
			addEvent(revertTheKraken, 20 * 1000, creature:getId(), tentacle:getId())
			return true
		end
	end
	return true
end
theKrakenPrepareDeath:register()
