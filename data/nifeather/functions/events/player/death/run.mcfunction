tag @s add nife_is_dead
#declare tag nife_is_dead 玩家已死亡

effect clear @s
function #nifeather:events/player/on_death
scoreboard players set @s nife_deaths 0