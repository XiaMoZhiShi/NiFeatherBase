#创建计分板
scoreboard objectives add nife_stats dummy {"text":"nife_stats"}
scoreboard objectives add nife_health dummy {"text":"nife_health: 非实时更新"}

scoreboard players set #1km nife_stats 100000
scoreboard players set #1m nife_stats 100
scoreboard players set #-1 nife_stats -1
scoreboard players set #0 nife_stats 0
scoreboard players set #1 nife_stats 1
scoreboard players set #2 nife_stats 2
scoreboard players set #3 nife_stats 3
scoreboard players set #4 nife_stats 4
scoreboard players set #5 nife_stats 5
scoreboard players set #6 nife_stats 6
scoreboard players set #20 nife_stats 20
scoreboard players set #50 nife_stats 50

scoreboard objectives add nife_rTRDisplaySecond dummy
#declare objective nife_rTRDisplaySecond 剩余时间显示

scoreboard objectives add nife_rTRDisplayMinute dummy
#declare objective nife_rTRDisplayMinute 剩余时间显示

scoreboard objectives add nife_rTRDisplayHour dummy
#declare objective nife_rTRDisplayHour 剩余时间显示

scoreboard objectives add nife_rTRDisplayDay dummy
#declare objective nife_rTRDisplayDay 剩余时间显示

scoreboard objectives add nife_rTRDisplayMs dummy
#declare objective nife_rTRDisplayMs 剩余时间显示

scoreboard objectives add nife_settingsTrigger trigger
#declare objective nife_settingsTrigger 剩余时间显示

#设置时间
scoreboard players set $ticksPerDay nife_stats 1728000
scoreboard players set $ticksPerHr nife_stats 72000
scoreboard players set $ticksPerMin nife_stats 1200
scoreboard players set $ticksPerSec nife_stats 20

scoreboard players set $secsPerMin nife_stats 60
scoreboard players set $minsPerHr nife_stats 60
scoreboard players set $hoursPerDay nife_stats 24

function nifeather:loadmsg

function #nifeather:init
function #nifeather:event_init

function nifeather:scheduler/1t
function nifeather:scheduler/2t
function nifeather:scheduler/5t
function nifeather:scheduler/1s
function nifeather:scheduler/2s