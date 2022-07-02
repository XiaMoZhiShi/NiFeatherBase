execute unless score $ticksPerDay nife_stats matches 1..2147483647 run scoreboard players set $ticksPerDay nife_stats 1728000
#declare entity $ticksPerDay 一天有多少刻

execute unless score $currentRefreshTick nife_stats matches -2147483648..2147483647 run scoreboard players set $currentRefreshTick nife_stats 0
#declare entity $currentRefreshTick 当前刷新刻，和游戏时钟分离

scoreboard objectives add nife_refreshes dummy
#declare objective nife_refreshes 记录玩家或系统刷新了多少次