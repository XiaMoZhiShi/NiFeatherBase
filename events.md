# 事件

## 服务器
### 刷新事件

* 描述
    * 此事件会在服务器时钟过去24小时（默认）或给定的事件后触发，用于标记服务器已经过去了一天时间

* 触发条件
    * 在`$currentRefreshTick % $ticksPerDay == 0`(即`$refresh == 0`)时作为服务器事件自动触发
    * **暂时不会依赖`clock`来判断是否需要刷新，因为`clock`本身没法保证0值就是某天的0点0分**

* 接口标签
    * [`nifeather:events/server/on_refresh`](./data/nifeather/tags/functions/events/server/on_refresh.json)

## 玩家

**以下事件除非特别说明，否则均为触发条件满足后的下一刻触发**

### 刷新事件
* 描述
    * 用于标记某个玩家可能需要刷新一些数据

* 触发条件
    * **此事件会和[服务器刷新事件](#刷新事件)同步为所有在线玩家触发**
    * 当玩家加入并且其`nife_refreshes`记分板上的值不等于`$server`时也会触发

* 接口标签
    * [`nifeather:events/playerr/on_refresh`](./data/nifeather/tags/functions/events/player/on_refresh.json)

### 死亡事件
* 描述
    * 暂无

* 触发条件
    * 会在玩家死亡时触发

* Bug
    * 碍于当前实现方式，当立即重生启用时玩家可能会在重生的位置触发事件

* 接口标签
    * [`nifeather:events/playerr/on_death`](./data/nifeather/tags/functions/events/player/on_death.json)

### 经验值变更事件
* 描述
    * 暂无

* 触发条件
    * 玩家在一刻内经验值变化不为0时触发

* 接口标签
    * [`nifeather:events/player/on_exp_change`](./data/nifeather/tags/functions/events/player/on_exp_change.json)

### 最大生命值变更事件
* 描述
    * 暂无

* 触发条件
    * 玩家在一刻内最大生命值变化不为0时触发

* 接口标签
    * [`nifeather:events/player/on_maxhealth_change`](./data/nifeather/tags/functions/events/player/on_maxhealth_change.json)

### 生命值变更事件
* 描述
    * 暂无

* 触发条件
    * 玩家在一刻内生命值变化不为0时触发

* 接口标签
    * [`nifeather:events/player/on_health_change`](./data/nifeather/tags/functions/events/player/on_health_change.json)

### 饥饿值变更事件
* 描述
    * 暂无

* 触发条件
    * 玩家在一刻内饥饿值变化不为0时触发

* 接口标签
    * [`nifeather:events/player/on_hunger_change`](./data/nifeather/tags/functions/events/player/on_hunger_change.json)

### 加入事件
* 描述
    * 暂无

* 触发条件
    * 会在玩家加入时触发

* 接口标签
    * [`nifeather:events/player/on_join`](./data/nifeather/tags/functions/events/player/on_join.json)

### 第一次加入事件
* 描述
    * 暂无

* 触发条件
    * 当玩家加入游戏并且没有`firstJoinProcessed`标签时先于[加入事件](#加入事件)触发

* 接口标签
    * [`nifeather:events/player/on_first_join`](./data/nifeather/tags/functions/events/player/on_first_join.json)

### 跳跃事件
* 描述
    * 暂无

* 触发条件
    * 会在玩家跳跃时触发

* 接口标签
    * [`nifeather:events/player/on_jump`](./data/nifeather/tags/functions/events/player/on_jump.json)

### 重生事件
* 描述
    * 暂无

* 触发条件
    * 当玩家生命值大于0并且拥有`nife_is_dead`标签时触发

* 接口标签
    * [`nifeather:events/player/on_respawn`](./data/nifeather/tags/functions/events/player/on_respawn.json)

### 下蹲开始/结束事件
* 描述
    * 暂无

* 触发条件
    * 如果玩家满足`nifeather:player/is_sneaking`谓词并且没有`nife_sneaking`标签，则触发下蹲**开始**事件
    * 如果玩家满足`nifeather:player/not_sneaking`谓词并且有`nife_sneaking`标签，则触发下蹲**结束**事件

* 接口标签
    * [`nifeather:events/player/sneak/on_start`](./data/nifeather/tags/functions/events/player/sneak/on_start.json)
    * [`nifeather:events/player/sneak/on_end`](./data/nifeather/tags/functions/events/player/sneak/on_end.json)

### 疾跑开始/结束事件
* 描述
    * 暂无

* 触发条件
    * 如果玩家满足`nifeather:player/is_sprinting`谓词并且没有`nife_sprinting`标签，则触发疾跑**开始**事件
    * 如果玩家满足`nifeather:player/not_sprinting`谓词并且有`nife_sprinting`标签，则触发疾跑**结束**事件

* 接口标签
    * [`nifeather:events/player/sprint/on_start`](./data/nifeather/tags/functions/events/player/sprint/on_start.json)
    * [`nifeather:events/player/sprint/on_end`](./data/nifeather/tags/functions/events/player/sprint/on_end.json)

### 弓蓄力/蓄力结束事件
* 描述
    * 暂无

* 触发条件
    * 如果玩家激活了`nifeather:mechanics/bowcharge`进度但是没有`__nife_bowCharging`标签，那么将触发蓄力事件
        * 即：玩家拉弓时触发
    * 如果玩家有`__nife_bowCharging`标签，但是没触发进度，那么将触发弓蓄力结束事件
        * 即：当玩家...
            * 取消拉弓
            * 切换到其他物品栏
            * 切换弓到副手
            * 丢掉弓
            * ..等一切会中断拉弓的操作

            ...时触发
        * **接入接口时请留意以上所述**

* 接口标签
    * [`nifeather:events/player/bowcharge/oncharge`](./data/nifeather/tags/functions/events/player/bowcharge//oncharge.json)
    * [`nifeather:events/player/bowcharge/ondischarge`](./data/nifeather/tags/functions/events/player/bowcharge/ondischarge.json)