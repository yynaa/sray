advancement revoke @s only sray:scanner

execute unless score @s sray_wand_cooldown matches 0.. run scoreboard players set @s sray_wand_cooldown 0
execute \
  if score @s sray_wand_cooldown matches 0 \
  if items entity @s container.* minecraft:glowstone_dust[minecraft:custom_data~{custom_id:"sray_charge"}] \
  run function sray:scan with storage sray:settings
