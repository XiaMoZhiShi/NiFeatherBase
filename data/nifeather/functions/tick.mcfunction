scoreboard players add clock nife_stats 1

function nifeather:modules/clock/dotick

#强制回收没有杀死的RNG物品
kill @e[type=item, nbt={Item:{tag:{NeedKill: 1b}}}]