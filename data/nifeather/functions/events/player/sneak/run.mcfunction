execute if entity @s[tag=!nife_sneaking] if predicate nifeather:player/is_sneaking run function #nifeather:events/player/sneak/on_start
execute if entity @s[tag=!nife_sneaking] if predicate nifeather:player/is_sneaking run tag @s add nife_sneaking

execute if entity @s[tag=nife_sneaking] if predicate nifeather:player/not_sneaking run function #nifeather:events/player/sneak/on_end
execute if entity @s[tag=nife_sneaking] if predicate nifeather:player/not_sneaking run tag @s remove nife_sneaking