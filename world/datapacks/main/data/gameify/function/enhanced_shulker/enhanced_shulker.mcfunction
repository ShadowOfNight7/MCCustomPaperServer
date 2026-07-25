effect give @s resistance infinite 2 true
execute as @s at @s run kill @e[type=arrow,distance=..8]
execute as @s at @s as @a[distance=..10,nbt={active_effects:[{id:"minecraft:levitation"}]},nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:1b}]}] at @s run effect give @s levitation 10 1 false
