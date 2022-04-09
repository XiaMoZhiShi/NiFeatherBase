execute if entity @s[tag=!nife_sprinting] if predicate nifeather:player/is_sprinting run function #nifeather:events/player/sprint/on_start
execute if entity @s[tag=!nife_sprinting] if predicate nifeather:player/is_sprinting run tag @s add nife_sprinting

execute if entity @s[tag=nife_sprinting] if predicate nifeather:player/not_sprinting run function #nifeather:events/player/sprint/on_end
execute if entity @s[tag=nife_sprinting] if predicate nifeather:player/not_sprinting run tag @s remove nife_sprinting