scoreboard players operation @s nife_health_delta = @s nife_health
scoreboard players operation @s nife_health_delta -= @s nife_health_last

execute unless entity @s[tag=nife_is_dead] unless entity @s[tag=respawnTick] run function #nifeather:events/player/on_health_change

scoreboard players reset @s nife_health_delta