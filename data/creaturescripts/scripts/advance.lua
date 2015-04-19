--Script made by Pitufo/Haifurer!
local config = {
    [0] = { "Fist", 30}, -- 30 = variable[2]  -- Animation effect
    [1] = { "Club", 30}, -- 30 = variable[2]  -- Animation effect
    [2] = { "Sword", 30}, -- 30 = variable[2]  -- Animation effect
    [3] = { "Axe", 30}, -- 30 = variable[2]  -- Animation effect
    [4] = { "Distance", 30}, -- 30 = variable[2]  -- Animation effect
    [5] = { "Shield", 30}, -- 30 = variable[2]  -- Animation effect
    [6] = { "Fishing", 30}, -- 30 = variable[2]  -- Animation effect
    [7] = { "Magic", 30}, -- 30 = variable[2]  -- Animation effect
    [8] = { "Level", 30} -- 30 = variable[2]  -- Animation effect
}
function onAdvance(cid, skill, oldlevel, newlevel)
local pos = getPlayerPosition(cid)
local positions = {
        {x=pos.x+1,y=pos.y-1,z=pos.z},
        {x=pos.x-1,y=pos.y-1,z=pos.z},
        {x=pos.x+1,y=pos.y+1,z=pos.z},
        {x=pos.x-1,y=pos.y+1,z=pos.z},
        {x=pos.x+1,y=pos.y,z=pos.z},
        {x=pos.x-1,y=pos.y,z=pos.z},
        {x=pos.x,y=pos.y+1,z=pos.z},
        {x=pos.x,y=pos.y-1,z=pos.z}}
        
    for type, variable in pairs(config) do
        if skill == type then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have raised your "..variable[1].." skill from "..oldlevel.." to "..newlevel..".")
            for i = 1, table.maxn(positions) do
                    doSendMagicEffect(positions[i],variable[2])
            end
        end
    end    
return TRUE
end  