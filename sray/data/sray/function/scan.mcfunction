$scoreboard players set @s sray_wand_cooldown $(cooldown)

clear @s minecraft:glowstone_dust[minecraft:custom_data~{custom_id:"sray_charge"}] 1

playsound minecraft:block.amethyst_block.step ui @s
playsound minecraft:block.amethyst_block.chime ui @s

kill @e[tag=sray_scanned]

data modify storage sray:_y_bounds low_limit set value -64
data modify storage sray:_y_bounds high_limit set value 255
data modify storage sray:_y_bounds range set from storage sray:settings detect_range
function sray:y_bounds with storage sray:_y_bounds

execute store result score $length sray_runtime run data get storage sray:settings blocks

execute if score $length sray_runtime matches 1.. run function sray:scan_loop
