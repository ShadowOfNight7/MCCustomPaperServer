execute as @s[tag=LivesEye] at @s run scoreboard players add @s eyeLives 1
execute as @s[tag=LivesEye] at @s if score @s eyeLives matches 600.. run effect give @s darkness 10 0 true
execute as @s[tag=LivesEye] at @s if score @s eyeLives matches 600.. run scoreboard players set @s eyeLives 0

execute as @s[tag=LivesArm] at @s run function gameify:lives/lives_arm with entity @s

execute as @s[tag=LivesLeg] at @s run effect give @s slowness infinite 1 true

execute as @s[tag=LivesHeart] at @s run attribute @s max_health modifier add 1784266748339 -6 add_value

execute as @s[tag=LivesStomach] at @s run effect give @s hunger infinite 3 true

# execute as @s[tag=LivesBrain] at @s run recipe take @s *

execute as @s[tag=LivesLiver] at @s run experience set @s 0 levels
execute as @s[tag=LivesLiver] at @s run experience set @s 0 points

execute as @s[tag=LivesTongue] at @s run function gameify:lives/lives_tongue with entity @s

execute as @s[tag=LivesSkull] at @s if entity @s[predicate=gameify:sunlight] if predicate gameify:daytime unless block ~ ~ ~ water unless block ~ ~1 ~ water run damage @s 1.5 on_fire

execute as @s[tag=LivesLung] at @s if block ~ ~ ~ #minecraft:underwater_bonemeals run damage @s 5 in_wall
execute as @s[tag=LivesLung] at @s if block ~ ~1 ~ #minecraft:underwater_bonemeals run damage @s 5 in_wall
execute as @s[tag=LivesLung] at @s if block ~ ~ ~ water run damage @s 5 in_wall
execute as @s[tag=LivesLung] at @s if block ~ ~1 ~ water run damage @s 5 in_wall
execute as @s[tag=LivesLung] at @s if block ~ ~ ~ lava run damage @s 5 in_wall
execute as @s[tag=LivesLung] at @s if block ~ ~1 ~ lava run damage @s 5 in_wall

execute as @s[tag=LivesExplode] at @s run effect give @s resistance infinite 3 true
execute as @s[tag=LivesExplode] at @s run summon creeper ~ ~ ~ {powered:true,Fuse:0,Invulnerable:true}

execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] at @s if block ~ ~ ~ lava if block ~ ~1 ~ lava run effect give @s fire_resistance 60 0 true
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] at @s if block ~ ~ ~ lava if block ~ ~1 ~ lava run tag @s remove LivesDebuff
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] at @s if block ~ ~ ~ lava if block ~ ~1 ~ lava run particle soul ~ ~1 ~ 0.25 0.5 0.25 0.2 100 force
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{soul:true}}}}] at @s if block ~ ~ ~ lava if block ~ ~1 ~ lava run clear @s command_block[custom_data={soul:true}] 1
