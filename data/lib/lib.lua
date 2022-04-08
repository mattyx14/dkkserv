-- Core API functions implemented in Lua
dofile('data/lib/core/core.lua')

-- Compatibility library for our old Lua API
dofile('data/lib/compat/compat.lua')

-- Debugging helper function for Lua developers
dofile('data/lib/debugging/dump.lua')

-- Tables library
dofile('data/lib/tables/table.lua')

-- Others library
dofile('data/lib/others/others.lua')

-- Quests library
dofile('data/lib/quests/quest.lua')

-- Dolls System
dofile('data/lib/others/addon_doll_lib.lua')
dofile('data/lib/others/mount_doll_lib.lua')

-- Daily reward library
dofile('data/lib/daily_reward/daily_reward.lua')
dofile('data/lib/daily_reward/player.lua')

-- Reward boss library
dofile('data/lib/reward_boss/reward_boss.lua')
dofile('data/lib/reward_boss/player.lua')
dofile('data/lib/reward_boss/monster.lua')
