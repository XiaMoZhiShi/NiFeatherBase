tag @s add joinEventProcessing
scoreboard players set @s nife_quits 0
function #nifeather:events/player/on_join
tag @s add firstJoinProcessed
tag @s remove joinEventProcessing