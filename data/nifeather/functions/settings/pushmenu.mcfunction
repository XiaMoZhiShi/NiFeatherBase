#移除Tooltip
data remove storage nifeather:usersettingstemp nife.NodeTooltip

#Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", {"translate": "text.hub.hint", "with":["\uE3EF",  "NiFeather设置（未完成）"]}]

#内容
function #nifeather:settings

#Footer / 消息回显
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE3EF", {"nbt":"nife.NodeMessage", "storage": "nifeather:usersettingstemp", "interpret": true}]}]

#重置消息回显文本
data modify storage nifeather:usersettingstemp nife.NodeMessage set value '{"text":""}'

execute at @s run playsound minecraft:ui.button.click player @s