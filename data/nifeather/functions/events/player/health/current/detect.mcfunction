execute as @a store result score @s nife_health run data get entity @s Health

execute as @a at @s unless score @s nife_health_last = @s nife_health run function nifeather:events/player/health/current/run
execute as @a at @s run scoreboard players operation @s nife_health_last = @s nife_health