execute if score $clockType nife_clock matches 0 run function nifeather:modules/clock/backends/vanilla/tick
execute if score $clockType nife_clock matches 1 run function nifeather:modules/clock/backends/external/tick
execute if score $clockType nife_clock matches 32767 run function nifeather:modules/clock/backends/nostep/tick

scoreboard players operation clockdiff nife_clock = clocknew nife_clock
scoreboard players operation clockdiff nife_clock -= clock nife_clock
scoreboard players operation clock nife_clock = clocknew nife_clock