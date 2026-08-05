execute as @s at @s run particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 5 5000 force
execute as @s[nbt={active_effects:[{id:"minecraft:luck",amplifier:77b}]}] at @s run tellraw @s ["You have obtained another life!"]
execute as @s at @s run scoreboard players add @s lives 1



effect clear @s luck