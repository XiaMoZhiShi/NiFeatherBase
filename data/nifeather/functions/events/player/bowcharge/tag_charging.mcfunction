tag @s add __nife_bowCharging
#declare tag __nife_bowCharging 是否正在蓄力弓（内部标签）

advancement revoke @s only nifeather:mechanics/bowcharge
function #nifeather:events/player/bowcharge/oncharge