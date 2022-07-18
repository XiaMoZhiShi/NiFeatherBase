execute as @a[tag=__nife_bowCharging, advancements={nifeather:mechanics/bowcharge=false}] at @s run function nifeather:events/player/bowcharge/tag_notcharging
execute as @a[tag=!__nife_bowCharging, advancements={nifeather:mechanics/bowcharge=true}] at @s run function nifeather:events/player/bowcharge/tag_charging

advancement revoke @a only nifeather:mechanics/bowcharge