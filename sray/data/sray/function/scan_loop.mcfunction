data modify storage sray:_scan_block block set from storage sray:settings blocks[0].block
data modify storage sray:_scan_block item set from storage sray:settings blocks[0].item
data modify storage sray:_scan_block color set from storage sray:settings blocks[0].color
data modify storage sray:_scan_block range set from storage sray:settings detect_range

function sray:scan_block with storage sray:_scan_block

data modify storage sray:settings blocks append from storage sray:settings blocks[0]
data remove storage sray:settings blocks[0]

scoreboard players remove $length sray_runtime 1

execute if score $length sray_runtime matches 1.. run function sray:scan_loop
