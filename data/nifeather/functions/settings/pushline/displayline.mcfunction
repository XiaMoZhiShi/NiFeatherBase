#如果没有Tooltip，则初始化空文本
execute unless data storage nifeather:usersettingstemp nife.NodeTooltip run data modify storage nifeather:usersettingstemp nife.NodeTooltip set value '{"text":""}'

#tellraw出去
tellraw @s ["", {"translate": "text.hub.hint" ,"with":["\uE3EF", ["", {"nbt":"nife.NodeName", "storage": "nifeather:usersettingstemp", "interpret": true, "hoverEvent":{"action":"show_text", "value":{"nbt":"nife.NodeTooltip", "storage": "nifeather:usersettingstemp", "interpret": true}}}, {"translate":"text.nifeather.settings.barrier"}, {"nbt":"nife.NodeValue", "storage": "nifeather:usersettingstemp", "interpret": true, "hoverEvent":{"action":"show_text", "value":"点击调整"}}]]}]

#tellraw完重置Tooltip存储
data modify storage nifeather:usersettingstemp nife.NodeTooltip set value '{"text":""}'