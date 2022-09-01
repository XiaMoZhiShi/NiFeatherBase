tag @s add joinEventProcessing
scoreboard players set @s nife_quits 0
execute as @s[tag=!firstJoinProcessed] run function #nifeather:events/player/on_first_join
function #nifeather:events/player/on_join
tag @s add firstJoinProcessed
tag @s remove joinEventProcessing
scoreboard players enable @s nife_settingsTrigger