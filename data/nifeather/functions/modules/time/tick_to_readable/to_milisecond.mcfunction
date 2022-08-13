scoreboard players operation $sourceTick nife_rTRDisplayMs = $sourceTick nife_stats
scoreboard players operation $sourceTick nife_rTRDisplayMs %= #20 nife_stats
scoreboard players operation $sourceTick nife_rTRDisplayMs *= #50 nife_stats

#推到Buffer
data modify storage nifeather:modules.time TempBuffer set value '["(+", {"text":"","extra":[{"score":{"objective": "nife_rTRDisplayMs","name":"$sourceTick"}}, "毫秒)"]}]'

execute if data storage nifeather:settings Time.AutoRemove if score $sourceTick nife_rTRDisplayMs matches 1.. run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer
execute unless data storage nifeather:settings Time.AutoRemove run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer