scoreboard players set @s cooldown 8400

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace #air
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace #air
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace #air

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace #flowers
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace #flowers
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace #flowers

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace tall_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace tall_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace tall_grass

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace short_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace short_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace short_grass

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace tall_dry_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace tall_dry_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace tall_dry_grass

execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace short_dry_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace short_dry_grass
execute as @s[team=Golden] at @s as @e[team=Royal,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace short_dry_grass


execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace #air
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace #air
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace #air

execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace #flowers
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace #flowers
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace #flowers

execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace tall_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace tall_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace tall_grass

execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace short_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace short_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace short_grass

execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace tall_dry_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace tall_dry_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace tall_dry_grass

execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 cobweb replace short_dry_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~-2 ~ ~ ~2 ~ ~ cobweb replace short_dry_grass
execute as @s[team=Royal] at @s as @e[team=Golden,distance=..20] at @s run fill ~ ~ ~-2 ~ ~ ~2 cobweb replace short_dry_grass

tellraw @s ["You used ",{"text":"Cobweb","bold":true,"color":"white"}, "!"]