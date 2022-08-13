# 时间解析模块
## 自动解析
1. 设定好`$sourceTick`在`nife_stats`记分板上的值
2. 调用`nifeather:modules/time/default`函数
3. 函数将自动解析一个可以显示出来的时间文本并存在`nifeather:modules.time`的`Output`中
4. 可以通过`{"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}`的方式在tellraw、title等支持JSON文本的地方将其显示出来

## 手动解析
1. 设定好`$sourceTick`在`nife_stats`记分板上的值
2. 调用`nifeather:modules/time/reset`重置设置
3. 根据需要设定模块设置
    * 所有设置均存在`nifeather:settings`下
    * `Time.To<Hour/Second/Minute>.UnLimited`可以解除最大限制(即秒、分钟不再限制在60以内，小时不再限制在24以内)
    * 移除`Time.AutoRemove`则总是会显示完整文本("?天?小时?分钟?秒(+?毫秒)")
4. 根据需要调用`nifeather:modules/time/tick_to_readable`下的函数
5. 最终文本将会在`nifeather:modules.time`的`DisplayBuffer[]`中