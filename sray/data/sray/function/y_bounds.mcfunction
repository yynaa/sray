execute store result score $y_low sray_runtime run data get entity @s Pos[1]
execute store result score $y_high sray_runtime run data get entity @s Pos[1]

$scoreboard players remove $y_low sray_runtime $(range)
$scoreboard players add $y_high sray_runtime $(range)

$execute if score $y_low sray_runtime matches ..$(low_limit) run scoreboard players set $y_low sray_runtime $(low_limit)
$execute if score $y_high sray_runtime matches $(high_limit).. run scoreboard players set $y_high sray_runtime $(high_limit)

execute store result storage sray:_y_bounds y_low double 1 run scoreboard players get $y_low sray_runtime
execute store result storage sray:_y_bounds y_high double 1 run scoreboard players get $y_high sray_runtime
