tellraw @a [{"bold":true,"color":"#0043C7","text":"[SRay] "},{"bold":false,"color":"white","text":"Initialized"}]

data modify storage sray:settings version set value 1
data modify storage sray:settings blocks set value []
data modify storage sray:settings disappear_range set value 24
data modify storage sray:settings detect_range set value 12
data modify storage sray:settings cooldown set value 60

function sray:preset_ores
