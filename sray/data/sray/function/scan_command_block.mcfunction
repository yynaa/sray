$summon item_display ~ ~ ~ {\
  item:{id:"$(item)",count:1},\
  billboard:"center",\
  Glowing:1b,\
  glow_color_override:$(color),\
  Tags:["sray_scanned"],\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}\
}

$setblock ~ ~ ~ $(block)
