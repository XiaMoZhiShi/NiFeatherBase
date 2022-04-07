tag @s add joinEventProcessing
scoreboard players set @s nife_quits 0
function #nifeather:events/on_player_join
tag @s add firstJoinProcessed
tag @s remove joinEventProcessing