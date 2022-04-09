scoreboard players operation @s nife_exp_delta = @s nife_exp
scoreboard players operation @s nife_exp_delta -= @s nife_exp_last

function #nifeather:events/player/on_exp_change

scoreboard players operation @s nife_exp_last = @s nife_exp