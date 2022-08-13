scoreboard players operation $sourceTick nife_rTRDisplaySecond = $sourceTick nife_stats
scoreboard players operation $sourceTick nife_rTRDisplaySecond /= $ticksPerSec nife_stats

#看看是否有剩余
scoreboard players operation $temp nife_rTRDisplaySecond = $sourceTick nife_stats
scoreboard players operation $temp nife_rTRDisplaySecond %= $ticksPerSec nife_stats

#除非设置不限制，不然转换到60以内
#declare storage nifeather:settings 模块设置
execute unless data storage nifeather:settings Time.ToSecond.UnLimited run scoreboard players operation $sourceTick nife_rTRDisplaySecond %= $secsPerMin nife_stats

#推到Buffer
data modify storage nifeather:modules.time TempBuffer set value '[{"text":"","extra":[{"score":{"objective": "nife_rTRDisplaySecond","name":"$sourceTick"}}, "秒"]}]'

execute if data storage nifeather:settings Time.AutoRemove if score $sourceTick nife_rTRDisplaySecond matches 1.. run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer
execute unless data storage nifeather:settings Time.AutoRemove run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer