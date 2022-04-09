scoreboard players operation @s nife_hunger_delta = @s nife_hunger
scoreboard players operation @s nife_hunger_delta -= @s nife_hunger_last

function #nifeather:events/player/on_hunger_change

scoreboard players operation @s nife_hunger_last = @s nife_hunger