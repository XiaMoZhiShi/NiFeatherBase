function #nifeather:events/player/on_respawn

#结束处理
tag @s remove nife_is_dead
tag @s add respawnTick
#declare tag respawnTick 玩家在此Tick重生