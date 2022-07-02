scoreboard players add $currentRefreshTick nife_stats 1

scoreboard players operation $refresh nife_stats = $currentRefreshTick nife_stats
scoreboard players operation $refresh nife_stats %= $ticksPerDay nife_stats
#declare entity $refresh 刷新计时
#declare entity $lastRefresh 上次刷新

execute if score $refresh nife_stats matches 0 run function nifeather:events/server/refreshpoint/run

