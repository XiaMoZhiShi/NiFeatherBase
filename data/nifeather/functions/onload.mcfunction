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

function nifeather:loadmsg

function #nifeather:init
function #nifeather:event_init

function nifeather:scheduler/1t
function nifeather:scheduler/2t
function nifeather:scheduler/5t
function nifeather:scheduler/1s
function nifeather:scheduler/2s