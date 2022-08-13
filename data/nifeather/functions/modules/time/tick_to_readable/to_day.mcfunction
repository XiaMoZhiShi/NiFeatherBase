scoreboard players operation $sourceTick nife_rTRDisplayDay = $sourceTick nife_stats
scoreboard players operation $sourceTick nife_rTRDisplayDay /= $ticksPerDay nife_stats

#最大就是多少天了，暂时暂时不会有不限制的选项
#除非设置不限制，不然转换到24以内
#execute unless data storage nifeather:settings Time.ToDay.UnLimited run scoreboard players operation $sourceTick nife_rTRDisplayDay %= $hoursPerDay nife_stats

#先推到临时Buffer
data modify storage nifeather:modules.time TempBuffer set value '[{"text":"","extra":[{"score":{"objective": "nife_rTRDisplayDay","name":"$sourceTick"}}, "天"]}]'

#再根据设置推到显示Buffer
#没有AutoRemove，直接推上去
execute unless data storage nifeather:settings Time.AutoRemove run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer

#有AutoRemove，并且天数大于等于1
execute if data storage nifeather:settings Time.AutoRemove if score $sourceTick nife_rTRDisplayDay matches 1.. run data modify storage nifeather:modules.time DisplayBuffer append from storage nifeather:modules.time TempBuffer