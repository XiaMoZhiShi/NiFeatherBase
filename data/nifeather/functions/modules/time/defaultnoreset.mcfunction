
function nifeather:modules/time/tick_to_readable/to_day
function nifeather:modules/time/tick_to_readable/to_hour
function nifeather:modules/time/tick_to_readable/to_minute
execute unless data storage nifeather:settings Time.DoApprox run function nifeather:modules/time/tick_to_readable/to_second
execute unless data storage nifeather:settings Time.DoApprox run function nifeather:modules/time/tick_to_readable/to_milisecond

data modify storage nifeather:modules.time Output set value '[{"nbt":"DisplayBuffer[0]", "storage":"nifeather:modules.time", "interpret": true}, {"nbt":"DisplayBuffer[1]", "storage":"nifeather:modules.time", "interpret": true}, {"nbt":"DisplayBuffer[2]", "storage":"nifeather:modules.time", "interpret": true}, {"nbt":"DisplayBuffer[3]", "storage":"nifeather:modules.time", "interpret": true}, {"nbt":"DisplayBuffer[4]", "storage":"nifeather:modules.time", "interpret": true}]'
