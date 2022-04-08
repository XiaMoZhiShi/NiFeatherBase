scoreboard objectives add nife_last_x dummy
#declare objective nife_last_x 玩家上一刻的X坐标

scoreboard objectives add nife_last_z dummy
#declare objective nife_last_z 玩家上一刻的Z坐标

scoreboard objectives add nife_new_x dummy
#declare objective nife_new_x 玩家这一刻的X坐标

scoreboard objectives add nife_new_z dummy
#declare objective nife_new_z 玩家这一刻的Z坐标

scoreboard objectives add nife_position_delta dummy
#declare objective nife_position_delta 差值

execute unless score trigger nife_position_delta matches -2147483648..2147483647 run scoreboard players set trigger nife_position_delta 256