execute as @e[tag=sray_scanned] at @s run function sray:item_display_tick with storage sray:settings

execute as @a if score @s sray_wand_cooldown matches 1.. run scoreboard players remove @s sray_wand_cooldown 1
