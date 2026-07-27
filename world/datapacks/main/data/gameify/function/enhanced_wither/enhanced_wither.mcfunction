tag @s add WitherMarker
execute as @s[scores={time=..5}] at @s run attribute @s max_health base set 600
execute as @s[scores={time=..5}] at @s run data merge entity @s {Health:600f}
execute as @s[scores={time=..5}] at @s run scoreboard players set @s posX 200
execute as @s[scores={time=..5}] at @s run scoreboard players set @s posY 100
execute as @s[scores={time=1}] at @s run spreadplayers ~ ~ 0 1 true @s
execute as @s[scores={time=1}] at @s run attribute @s follow_range base set 256
execute as @s[scores={time=1}] at @s run attribute @s gravity base set 1
execute as @s[scores={time=6..}] at @s run scoreboard players add @a[distance=..10] witherCorrode 1

execute as @e[scores={witherCorrode=20..}] at @s run effect give @s wither 2 0 false
execute as @e[scores={witherCorrode=100..}] at @s run effect give @s slowness 2 0 false

execute as @e[scores={witherCorrode=150..}] at @s run effect give @s wither 2 1 false
execute as @e[scores={witherCorrode=400..}] at @s run effect give @s hunger 2 1 false

execute as @e[scores={witherCorrode=700..}] at @s run effect give @s wither 2 2 false
execute as @e[scores={witherCorrode=1000..}] at @s run effect give @s slowness 2 1 false

execute as @e[scores={witherCorrode=1500..}] at @s run effect give @s wither 2 3 false
execute as @e[scores={witherCorrode=2000..}] at @s run effect give @s darkness 2 0 false


execute as @e[scores={witherCorrode=2500..}] at @s run effect give @s wither 2 4 false
execute as @e[scores={witherCorrode=3000..}] at @s run effect give @s weakness 2 0 false
execute as @e[scores={witherCorrode=3000..}] at @s run effect give @s hunger 2 3 false

execute as @e[scores={witherCorrode=3500..}] at @s run effect give @s wither 2 5 false
execute as @e[scores={witherCorrode=3500..}] at @s run effect give @s slowness 2 3 false
execute as @e[scores={witherCorrode=4000..}] at @s run effect give @s blindness 2 0 false
execute as @e[scores={witherCorrode=4000..}] at @s run effect give @s instant_damage 2 0 false

scoreboard players set @a[distance=10.001..,scores={witherCorrode=1..}] witherCorrode 0
execute as @s at @s run kill @e[type=falling_block,distance=..50]

execute as @s at @s run scoreboard players remove @s posX 1

#PreHealth
execute as @s at @s store result score @s healthAfter run data get entity @s Health 10000
execute as @s at @s run scoreboard players operation @s health -= @s healthAfter
execute as @s[scores={health=500001..}] at @s run function gameify:enhanced_wither/health_imtigate with entity @s
#After Health
execute as @s at @s store result score @s health run data get entity @s Health 10000
execute as @s[scores={health=..3000000}] at @s run scoreboard players remove @s posY 1
execute as @s[scores={health=..500000}] at @s run item replace entity @s weapon.mainhand with air
execute as @s[scores={health=500001..}] at @s run item replace entity @s weapon.mainhand with wither_rose[death_protection={},item_model="minecraft:air",max_stack_size=99] 99

execute as @s[scores={posX=..0}] at @s unless score @s posX matches 1..20 unless score @s posZ matches 21..40 unless entity @e[tag=WitherStill] run summon marker ~ ~ ~ {Tags:["WitherStill"]}
execute as @s[scores={posX=..0}] unless score @s posX matches 1..20 unless score @s posZ matches 21..40 at @s at @e[tag=WitherStill,limit=1,sort=nearest] run tp @s ~ ~ ~
execute as @s[scores={posX=1..}] at @s run kill @e[tag=WitherStill,distance=..3]
execute as @s at @s if score @s posX matches 1..20 run kill @e[tag=WitherStill]
execute as @s at @s if score @s posZ matches 21..40 run kill @e[tag=WitherStill]

#ATTACKS
execute as @s[scores={posX=0}] at @s store result score @s random run random value 1..80
execute as @s[scores={posY=0}] at @s store result score @s posZ run random value 1..40

#WITHER SLAMM
execute as @s[scores={posX=-5..0,random=1..20}] at @s run data merge entity @s {Motion:[0d,1.5d,0d]}
execute as @s[scores={posX=-30..-10,random=1..20}] at @s run data merge entity @s {Motion:[0d,-5d,0d]}
execute as @s[scores={posX=-30..-10,random=1..20}] at @s run tp @s ~ ~-1 ~
execute as @s[scores={posX=-30..-10,random=1..20}] at @s unless block ~ ~-0.5 ~ #air unless block ~ ~-0.5 ~ tall_grass unless block ~ ~-0.5 ~ short_grass unless block ~ ~-0.5 ~ tall_dry_grass unless block ~ ~-0.5 ~ short_dry_grass run function gameify:enhanced_wither/wither_slam with entity @s
execute as @s[scores={posX=-30..-10,random=1..20}] at @s unless block ~ ~-0.5 ~ #air unless block ~ ~-0.5 ~ tall_grass unless block ~ ~-0.5 ~ short_grass unless block ~ ~-0.5 ~ tall_dry_grass unless block ~ ~-0.5 ~ short_dry_grass run scoreboard players set @s posX 120
execute as @s[scores={posX=-30..-10,random=1..20}] at @s positioned ~ ~-1 ~ as @a[distance=..2] at @s run damage @s 15 mace_smash by @e[type=wither,limit=1,sort=nearest] from @e[type=wither,limit=1,sort=nearest]
execute as @s[scores={posX=..-31,random=1..20}] at @s run scoreboard players set @s posX 100

#Summons
execute as @s[scores={posX=0,random=21..40}] at @s run summon wither_skeleton ~ ~ ~ {Tags:["WitherMinion"],equipment:{mainhand:{id:"iron_sword",count:1,components:{enchantments:{sharpness:2,vanishing_curse:1}}}},Motion:[0d,-1d,0d],Health:7f,attributes:[{id:"max_health",base:10f}]}
execute as @s[scores={posX=0,random=21..40}] at @s run summon wither_skeleton ~ ~ ~ {Tags:["WitherMinion"],equipment:{mainhand:{id:"iron_sword",count:1,components:{enchantments:{sharpness:2,vanishing_curse:1}}}},Motion:[0d,-1d,0d],Health:7f,attributes:[{id:"max_health",base:10f}]}
execute as @s[scores={posX=0,random=21..40}] at @s run summon wither_skeleton ~ ~ ~ {Tags:["WitherMinion"],equipment:{mainhand:{id:"iron_sword",count:1,components:{enchantments:{sharpness:2,vanishing_curse:1}}}},Motion:[0d,-1d,0d],Health:7f,attributes:[{id:"max_health",base:10f}]}
execute as @s[scores={posX=0,random=21..40}] at @s as @e[tag=WitherMinion] at @s run attribute @s max_health base set 15
execute as @s[scores={posX=0,random=21..40}] at @s run effect give @e[tag=WitherMinion] glowing infinite 0 true
execute as @s[scores={posX=0,random=21..40}] at @s run tellraw @a[distance=..25] ["The Wither has summoned minions! Kill them to make the wither vulnerable again."]
execute as @s[scores={posX=..0,random=21..40}] at @s run scoreboard players set @s posX 800

#EXPLODE
execute as @s[scores={posX=0,random=41..60}] at @s run tellraw @a[distance=..25] ["The Wither seems to be charging something..."]
execute as @s[scores={posX=0,random=41..60}] at @s run effect give @a[distance=..25] slowness 7 2 false
execute as @s[scores={posX=-150..0,random=41..60}] at @s run particle smoke ~ ~2 ~ 0 0 0 0.2 5 force
execute as @s[scores={posX=-150..-30,random=41..60}] at @s run particle smoke ~ ~2 ~ 0.05 0.05 0.05 0.4 10 force
execute as @s[scores={posX=-150..-60,random=41..60}] at @s run particle smoke ~ ~2 ~ 0.1 0.1 0.1 0.6 15 force
execute as @s[scores={posX=-150..-90,random=41..60}] at @s run particle smoke ~ ~2 ~ 0.15 0.15 0.15 0.8 20 force
execute as @s[scores={posX=-150..-120,random=41..60}] at @s run particle smoke ~ ~2 ~ 0.2 0.2 0.2 1 25 force
execute as @s[scores={posX=-150,random=41..60}] at @s run particle minecraft:smoke ~ ~2 ~ 1 1 1 1.5 3000 force
execute as @s[scores={posX=-150,random=41..60}] at @s as @e[type=!#minecraft:wither_friends,distance=..10] at @s run damage @s 45 explosion by @e[tag=WitherMarker,limit=1] from @e[tag=WitherMarker,limit=1]
execute as @s[scores={posX=..-150,random=41..60}] at @s run scoreboard players set @s posX 400

#Targetted laser
execute as @s[scores={posX=0,random=61..80}] at @s run summon silverfish ^ ^ ^2 {Tags:["Ignored","WitherLaser"],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],Invulnerable:true,Motion:[0d,-2d,0d]}
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s friction_modifier base set 0.2
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s movement_speed base set 1
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s water_movement_efficiency base set 1
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s explosion_knockback_resistance base set 1
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s knockback_resistance base set 1
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s attack_damage base set 0
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s follow_range base set 9999
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s burning_time base set 0
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s jump_strength base set 0
execute as @s[scores={posX=0,random=61..80}] at @s as @e[type=silverfish,tag=WitherLaser] at @s run attribute @s step_height base set 999
execute as @s[scores={posX=-250..0,random=61..80}] at @s run function gameify:enhanced_wither/wither_laser with entity @s
execute as @s[scores={posX=-250,random=61..80}] at @s run kill @e[tag=WitherLaser]
execute as @s[scores={posX=..-250,random=61..80}] at @s run scoreboard players set @s posX 350



#PHASE2
#Beams
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=0,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}

execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-40,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}

execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=-80,posZ=1..20}] at @s run summon marker ~ ~ ~ {Tags:["WitherBeam"]}
execute as @s[scores={posY=..-80,posZ=1..20}] at @s run scoreboard players set @s posY 500

#Charge
execute as @s[scores={posY=0,posZ=21..40}] at @s run function gameify:enhanced_wither/wither_dash with entity @s
execute as @s[scores={posY=-10..0,posZ=21..40}] at @s as @e[type=!#wither_friends,distance=..2.5] at @s run damage @s 9 wither_skull by @e[tag=WitherMarker,limit=1] from @e[tag=WitherMarker,limit=1]
execute as @s[scores={posY=..-10,posZ=21..40}] at @s run scoreboard players set @s posY 375



execute as @s[nbt={Invulnerable:false}] at @s if entity @e[tag=WitherMinion] run data merge entity @s {Invulnerable:true}
execute as @s[nbt={Invulnerable:true}] at @s unless entity @e[tag=WitherMinion] run data merge entity @s {Invulnerable:false}

execute as @s at @s as @e[type=!glow_item_frame,type=!armor_stand,type=!item_frame,type=!item,type=!painting,type=!#boat,type=!#redirectable_projectile,type=!#arrows,type=!#wither_friends,nbt={HurtTime:9s}] unless entity @e[tag=WitherMinion] at @s run function gameify:enhanced_wither/lifesteal with entity @s




tag @s remove WitherMarker