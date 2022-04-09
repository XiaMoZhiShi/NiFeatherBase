execute store result score @s nife_maxhealth run attribute @s generic.max_health get
execute unless score @s nife_maxhealth_last = @s nife_maxhealth run function nifeather:events/player/health/max/run