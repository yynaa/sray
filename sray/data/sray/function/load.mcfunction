advancement revoke @a only sray:scanner

scoreboard objectives add sray_wand_cooldown dummy
scoreboard objectives add sray_runtime dummy

execute unless data storage sray:settings {version:1} run function sray:settings_init
