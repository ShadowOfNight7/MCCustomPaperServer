execute as @s[nbt={HurtTime:9s},tag=!SummonedSpider,type=spider,scores={random=..5}] at @s run summon spider ~ ~ ~ {Tags:["SummonedSpider"],Health:2f,attributes:[{id:scale,base:0.5f}]}
execute as @s[nbt={HurtTime:9s},tag=!SummonedSpider,type=cave_spider,scores={random=..5}] at @s run summon cave_spider ~ ~ ~ {Tags:["SummonedSpider"],Health:2f,attributes:[{id:scale,base:0.5f}]}
execute as @s[nbt={HurtTime:9s}] run scoreboard players add @s random 1




execute as @s[scores={time=1}] at @s run attribute @s movement_speed base set 0.5
execute as @s[scores={time=1}] at @s run attribute @s movement_efficiency base set 1
execute as @s[scores={time=1}] at @s run attribute @s attack_speed base set 100
execute as @s[scores={time=1}] at @s run attribute @s step_height base set 1.5
execute as @s[scores={time=1},tag=!SummonedSpider] at @s run attribute @s max_health base set 20
execute as @s[scores={time=1},tag=!SummonedSpider] at @s run effect give @s instant_health 1 100 true
execute as @s[scores={time=1}] run scoreboard players set @s random 0

execute as @s at @s on vehicle if entity @s[type=#boat] run kill @s
execute as @s at @s on vehicle if entity @s[type=minecart] run kill @s