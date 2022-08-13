scoreboard players operation $sourceTick nife_rTRDisplayHour = $sourceTick nife_stats
scoreboard players operation $sourceTick nife_rTRDisplayHour /= $ticksPerHr nife_stats

#除非设置不限制，不然转换到24以内
execute unless data storage nifeather:settings Time.ToHour.UnLimited run scoreboard players operation $sourceTick nife_rTRDisplayHour %= $hoursPerDay nife_stats

#推到Buffer
data modify storage nifeather:modules.time TempBuffer set value '[{"text":"","extra":[{"score":{"objective": "nife_rTRDisplayHour","name":"$sourceTick"}}, "小时"]}]'

execute if data storage nifeather:settings Time.AutoRemove if score $sourceTick nife_rTRDisplayHour matches 1.. run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer
execute unless data storage nifeather:settings Time.AutoRemove run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer