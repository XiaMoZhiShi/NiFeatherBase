#重置模块设定
data modify storage nifeather:modules.time DisplayBuffer set value []
#declare storage nifeather:modules.time 时间模块
#declare storage nifeather:modules 模块根

data remove storage nifeather:settings Time.ToHour.UnLimited
data remove storage nifeather:settings Time.ToSecond.UnLimited
data remove storage nifeather:settings Time.ToMinute.UnLimited
data modify storage nifeather:settings Time.AutoRemove set value true
#data remove storage nifeather:settings Time.AutoRemove

data remove storage nifeather:settings Time.DoApprox