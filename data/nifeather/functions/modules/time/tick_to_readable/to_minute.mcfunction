scoreboard players operation $sourceTick nife_rTRDisplayMinute = $sourceTick nife_stats
scoreboard players operation $sourceTick nife_rTRDisplayMinute /= $ticksPerMin nife_stats

#除非设置不限制，不然转换到60以内
execute unless data storage nifeather:settings Time.ToMinute.UnLimited run scoreboard players operation $sourceTick nife_rTRDisplayMinute %= $minsPerHr nife_stats

#推到Buffer
data modify storage nifeather:modules.time TempBuffer set value '[{"text":"","extra":[{"score":{"objective": "nife_rTRDisplayMinute","name":"$sourceTick"}}, "分钟"]}]'

#是否AutoRemove?
execute if data storage nifeather:settings Time.AutoRemove if score $sourceTick nife_rTRDisplayMinute matches 1.. run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer
execute unless data storage nifeather:settings Time.AutoRemove run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer