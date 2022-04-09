scoreboard players operation @s nife_maxhealth_delta = @s nife_maxhealth
scoreboard players operation @s nife_maxhealth_delta -= @s nife_maxhealth_last

#execute unless entity @s[tag=nife_is_dead] unless entity @s[tag=respawnTick] run function #nifeather:events/player/on_maxhealth_change
function #nifeather:events/player/on_maxhealth_change

scoreboard players operation @s nife_maxhealth_last = @s nife_maxhealth