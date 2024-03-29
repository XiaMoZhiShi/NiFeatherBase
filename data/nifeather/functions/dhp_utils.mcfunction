#declare tag/item nifeather:foods/crops 可食用的作物
#declare tag/item nifeather:foods/eatable 所有可食用的物品
#declare tag/item nifeather:foods/fish_cooked 熟鱼
#declare tag/item nifeather:foods/fish_raw 生鱼
#declare tag/item nifeather:foods/meats_cooked 熟肉
#declare tag/item nifeather:foods/meats_raw 生肉
#declare tag/item nifeather:foods/misc 其他可食用的物品
#declare tag/item nifeather:foods/seafood 可食用的海产品

#declare tag/function nifeather:init 初始化

#declare tag/function nifeather:schedules/1t 计划任务，间隔1刻
#declare tag/function nifeather:schedules/5t 计划任务，间隔5刻
#declare tag/function nifeather:schedules/1s 计划任务，间隔1秒
#declare tag/function nifeather:schedules/2s 计划任务，间隔2秒

#declare loot_table nifeather:rng/1-10 RNG 1~10
#declare loot_table nifeather:rng/1-30 RNG 1~30
#declare loot_table nifeather:rng/1-64 RNG 1~64

#declare objective nife_stats 通用计分板：储存各种信息
#declare objective nife_health 通用计分板：获取玩家真实血量

#declare entity #1km 1千米|nife_stats:100000
#declare entity #1m 1米|nife_stats:100
#declare entity #-1 处理返回值等所用|nife_stats:-1
#declare entity #0 处理返回值等所用|nife_stats:0
#declare entity #1 数字|nife_stats:1
#declare entity #2 数字|nife_stats:2
#declare entity #3 数字|nife_stats:3
#declare entity #4 数字|nife_stats:4
#declare entity #5 数字|nife_stats:5
#declare entity #6 数字|nife_stats:6
#declare entity #20 数字|nife_stats:20
#declare entity clock 时钟|nife_stats

#declare entity trigger 触发值|nief_position_delta

tellraw @s [{"text": "哇", "color": "#175bfb"}, {"text": "哦", "color": "#266afb"}, {"text": "，", "color": "#3579fb"}, {"text": "这","color": "#4488fb"}, {"text": "里", "color": "#5397fb"}, {"text": "什", "color": "#62a7fc", "bold": true}, {"text": "么", "color": "#71b6fc", "bold": true}, {"text": "都", "color": "#80c5fc"}, {"text": "没", "color": "#8fd4fc"}, {"text": "有", "color": "#9ee3fc"}, {"text": "！", "color": "#adf3fd"}]