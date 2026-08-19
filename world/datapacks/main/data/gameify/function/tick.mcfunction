scoreboard players add @e time 1

execute as @a at @s if score @s shifting matches 1.. run scoreboard players set @s shiftingCheck 1
execute as @a at @s if score @s shifting matches 0 run scoreboard players set @s shiftingCheck 0
execute as @a at @s if score @s shifting matches 1.. run scoreboard players set @s shifting 0

execute as @a at @s if score @s jumping matches 1.. run scoreboard players set @s jumpingCheck 1
execute as @a at @s if score @s jumping matches 0 run scoreboard players set @s jumpingCheck 0
execute as @a at @s if score @s jumping matches 1.. run scoreboard players set @s jumping 0


execute as @e[team=Golden] at @s run scoreboard players set @s flagNums 0
execute as @e[team=Golden] at @s as @e[tag=GoldenFlag] at @s run scoreboard players add @s flagNums 1
execute as @e[team=Royal] at @s run scoreboard players set @s flagNums 0
execute as @e[team=Royal] at @s as @e[tag=RoyalFlag] at @s run scoreboard players add @s flagNums 1


execute as @a unless score @s lives = @s lives run scoreboard players set @s lives 7

execute as @a at @s if score @s deaths matches 1.. run scoreboard players remove @s lives 1
execute as @a at @s if score @s deaths matches 1.. run tag @s remove NoSoul
execute as @a at @s if score @s deaths matches 1.. run tag @s remove LivesDebuff
execute as @a at @s if score @s deaths matches 1.. run attribute @s max_health modifier remove 1784266748339
execute as @a at @s if score @s deaths matches 1.. run scoreboard players remove @s deaths 1

execute as @a at @s if score @s flagNums matches 3 if score @s lives matches ..4 run scoreboard players set @s lives 5
execute as @a at @s if score @s flagNums matches 2 if score @s lives matches ..2 run scoreboard players set @s lives 3
execute as @a at @s if score @s flagNums matches 1 if score @s lives matches ..0 run scoreboard players set @s lives 1

execute as @a at @s if score @s lives matches ..0 run gamemode adventure @s

execute as @e[scores={time=1},tag=!NoID] at @s run function gameify:id with entity @s

execute as @a at @s unless score @s id = @s id run function gameify:id with entity @s
execute as @e[type=!ender_dragon,type=!wither] at @s store result score @s health run data get entity @s Health 10000
execute as @e at @s store result score @s clock run time query day

execute if entity @e[tag=CustomCrafter] unless entity @e[tag=CustomHold] run summon armor_stand 0 -70 0 {Tags:["CustomHold"],Invisible:true,Marker:true,NoGravity:true}

effect clear @e[type=!creeper] unluck



execute as @e[type=#skeletons,tag=!Exception,scores={time=1}] at @s run tag @s add Enhanced
execute as @e[type=#skeletons,tag=!Exception,scores={time=1}] at @s run team join skeletons
#Enemies
execute as @e[type=arrow] at @s run function gameify:enhanced_skeleton/arrow with entity @s

execute as @e[type=#skeletons,type=!wither_skeleton,tag=Enhanced] at @s run function gameify:enhanced_skeleton/enhanced_skeleton with entity @s
execute as @e[tag=TeleportationSkeleton] at @s run function gameify:teleportskeleton with entity @s

execute as @e[type=#zombies] at @s run function gameify:enhanced_zombie/enhanced_zombie with entity @s

execute as @e[type=creeper] at @s run function gameify:enhanced_creeper/enhanced_creeper with entity @s
execute as @e[tag=Clone] at @s unless entity @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] unless predicate gameify:creeper_dead as @e[distance=..7.5] at @s run damage @s 5 explosion
execute as @e[tag=Clone] at @s unless entity @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] unless predicate gameify:creeper_dead as @e[distance=..5] at @s run damage @s 10 explosion
execute as @e[tag=Clone] at @s unless entity @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] unless predicate gameify:creeper_dead as @e[distance=..2.5] at @s run damage @s 15 explosion
execute as @e[tag=Clone] at @s unless entity @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] unless predicate gameify:creeper_dead run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=Clone] at @s unless predicate gameify:creeper_dead run kill @s
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] at @s run summon creeper ~ ~ ~ {Tags:["Cloned"]}
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:10b}]}}] at @s run kill @s

execute as @e[type=#sensitive_to_bane_of_arthropods] at @s run function gameify:enhanced_spider/enhanced_spider with entity @s
execute as @e[type=enderman] at @s run function gameify:enhanced_enderman/enhanced_enderman with entity @s
execute as @e[type=phantom] at @s run function gameify:enhanced_phantom/enhanced_phantom with entity @s
execute as @e[type=silverfish,tag=!Ignored] at @s run function gameify:enhanced_silverfish/enhanced_silverfish with entity @s
execute as @e[type=endermite] at @s run function gameify:enhanced_silverfish/enhanced_silverfish with entity @s
execute as @e[type=slime] at @s run function gameify:enhanced_slime/enhanced_slime with entity @s
execute as @e[type=magma_cube] at @s run function gameify:enhanced_slime/enhanced_slime with entity @s
execute as @e[type=witch] at @s run function gameify:enhanced_witch/enhanced_witch with entity @s
execute as @e[type=breeze] at @s run function gameify:enhanced_breeze/enhanced_breeze with entity @s

execute as @e[type=pillager] at @s run function gameify:enhanced_pillager/enhanced_pillager with entity @s
execute as @e[type=ravager] at @s run function gameify:enhanced_ravager/enhanced_ravager with entity @s
kill @e[tag=ClonedVex,scores={time=160..}]
execute as @e[type=evoker] at @s run function gameify:enhanced_evoker/enhanced_evoker with entity @s
execute as @e[type=vindicator] at @s run function gameify:enhanced_vindicator/enhanced_vindicator with entity @s

execute as @e[type=creaking] at @s run function gameify:enhanced_creaking/enhanced_creaking with entity @s

execute as @e[type=guardian] at @s run function gameify:enhanced_guardian/enhanced_guardian with entity @s

execute as @e[type=blaze] at @s run function gameify:enhanced_blaze/enhanced_blaze with entity @s
execute as @e[type=small_fireball,tag=SummonedByBlaze,scores={time=14..}] at @s run function gameify:enhanced_blaze/enhanced_fireball with entity @s
execute as @e[tag=SummonedByBlaze] at @s unless entity @e[type=blaze,distance=..20] run kill @s
kill @e[tag=SummonedSmallFireball,scores={time=40..}]
execute as @e[type=wither_skeleton] at @s run function gameify:enhanced_wither_skeleton/enhanced_wither_skeleton with entity @s
execute as @e[type=piglin] at @s run effect give @s speed infinite 1 true
execute as @e[type=zombified_piglin] at @s run effect give @s speed infinite 1 true
execute as @e[type=hoglin] at @s run effect give @s strength infinite 1 true
execute as @e[type=zoglin] at @s run effect give @s strength infinite 1 true
execute as @e[type=piglin_brute] at @s run effect give @s strength infinite 0 true
execute as @e[type=piglin_brute] at @s run effect give @s speed infinite 0 true
execute as @e[type=piglin_brute,scores={time=1}] at @s run attribute @s max_health base set 50
execute as @e[type=piglin_brute,scores={time=1}] at @s run effect give @s instant_health 1 10 true
execute as @e[type=ghast] at @s run function gameify:enhanced_ghast/enhanced_ghast with entity @s

execute as @e[type=shulker] at @s run function gameify:enhanced_shulker/enhanced_shulker with entity @s
execute as @e[type=shulker_bullet,scores={time=1},tag=!ClonedShulkerBullet] at @s run function gameify:enhanced_shulker/enhanced_shulker_bullet with entity @s

execute as @e[tag=ClonedShulkerBullet] at @s if entity @p[distance=..1] run effect give @p[distance=..1] levitation 10 1
execute as @e[tag=ClonedShulkerBullet] at @s if entity @p[distance=..1] run kill @s
kill @e[tag=ClonedShulkerBullet,scores={time=50..}]

execute as @e[type=ender_dragon] at @s run function gameify:enhanced_ender_dragon/enhanced_ender_dragon with entity @s
execute as @e[tag=TrackingDragonFireball] at @s run function gameify:enhanced_ender_dragon/enhanced_dragon_fireball with entity @s
execute as @e[type=end_crystal] at @s if entity @e[type=ender_dragon] run function gameify:enhanced_ender_dragon/enhanced_end_crystal with entity @s
execute as @e[tag=TheEyes] at @s run function gameify:enhanced_ender_dragon/enhanced_eye2 with entity @s
execute as @e[tag=EndCrystalMarker] at @s if entity @e[type=ender_dragon] run function gameify:enhanced_ender_dragon/end_crystal_death with entity @s
execute as @e[tag=EndCrystalMarker] at @s unless entity @e[type=ender_dragon] run scoreboard players set @s random 0
execute as @e[tag=DragonLaser] at @s unless entity @e[type=ender_dragon] run kill @s
execute as @e[type=dragon_fireball] at @s unless entity @e[type=ender_dragon] run kill @s
execute as @e[tag=StaringEyes] at @s unless entity @e[type=ender_dragon] run kill @s
execute as @e[tag=StaringEyes] at @s unless entity @e[type=bat,distance=..3] run kill @s


execute as @e[type=wither] at @s run function gameify:enhanced_wither/enhanced_wither with entity @s
execute unless entity @e[type=wither] as @e[scores={witherCorrode=1..}] run scoreboard players set @s witherCorrode 0
execute unless entity @e[type=wither] run kill @e[tag=WitherLaser]
execute unless entity @e[type=wither] run kill @e[tag=WitherStill]
execute as @e[tag=WitherBeam] at @s run function gameify:enhanced_wither/wither_beam with entity @s

execute as @e[type=warden] at @s run function gameify:enhanced_warden/enhanced_warden with entity @s
execute unless entity @e[type=warden] as @a run attribute @s gravity base reset
execute unless entity @e[type=warden] as @a run attribute @s step_height base reset

execute as @e[type=elder_guardian] at @s run function gameify:enhanced_elder_guardian/enhanced_elder_guardian with entity @s



execute as @e[scores={cooldown=1..}] at @s run scoreboard players remove @s cooldown 1
execute as @e[scores={cooldown2=1..}] at @s run scoreboard players remove @s cooldown2 1



#High Priest
execute as @a[scores={highPriestAbility1=1..},team=Golden] at @s unless entity @a[tag=HighPriest,distance=..25,scores={highPriestAbility1=1..},team=Royal] run function gameify:abilities/high_priest_2 with entity @s
execute as @a[scores={highPriestAbility1=1..},team=Royal] at @s unless entity @a[tag=HighPriest,distance=..25,scores={highPriestAbility1=1..},team=Golden] run function gameify:abilities/high_priest_2 with entity @s

execute as @a[scores={highPriestAbility1=1..}] at @s run scoreboard players remove @s highPriestAbility1 1

scoreboard players set @a[tag=HighPriest] highPriestTraitorNum 0
execute as @a[tag=HighPriest,team=Golden] at @s as @a[distance=..50,tag=!HighPriest,team=Golden] at @s run scoreboard players add @a[tag=HighPriest,team=Golden,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Royal] at @s as @a[distance=..50,tag=!HighPriest,team=Royal] at @s run scoreboard players add @a[tag=HighPriest,team=Royal,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Golden] at @s as @e[type=mannequin,distance=..50,tag=!HighPriest,team=Golden] at @s run scoreboard players add @a[tag=HighPriest,team=Golden,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Royal] at @s as @e[type=mannequin,distance=..50,tag=!HighPriest,team=Royal] at @s run scoreboard players add @a[tag=HighPriest,team=Royal,limit=1] highPriestTraitorNum 1

execute as @a[tag=HighPriest,team=Golden] at @s if score @s highPriestTraitorNum matches 4.. run scoreboard players add @s highPriestTraitor 1
execute as @a[tag=HighPriest,team=Royal] at @s if score @s highPriestTraitorNum matches 4.. run scoreboard players add @s highPriestTraitor 1

execute as @a[tag=HighPriest,team=Golden,scores={highPriestTraitor=..12000}] at @s if score @s highPriestTraitorNum matches ..3 run scoreboard players set @s highPriestTraitor 0
execute as @a[tag=HighPriest,team=Royal,scores={highPriestTraitor=..12000}] at @s if score @s highPriestTraitorNum matches ..3 run scoreboard players set @s highPriestTraitor 0

execute as @a[tag=HighPriest,scores={highPriestTraitor=12000}] store result score @s random run random value 1..100
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=0..85},team=Golden] if entity @e[tag=Solace,distance=..50,team=Golden] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=86..100},team=Golden] unless entity @e[tag=Solace,distance=..50,team=Golden] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=0..85},team=Royal] if entity @e[tag=Solace,distance=..50,team=Royal] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=86..100},team=Royal] unless entity @e[tag=Solace,distance=..50,team=Royal] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=102000..}] run scoreboard players set @s highPriestTraitor 0


#Occultist
#Add Corruption
execute as @a[tag=Occultist,scores={occultistAbility1=1..},team=Golden] at @s as @a[team=Royal,distance=..8,tag=!NoSoul,scores={occultistAbility2=..9600}] run scoreboard players add @s occultistAbility2 3
execute as @a[tag=Occultist,scores={occultistAbility1=1..},team=Royal] at @s as @a[team=Golden,distance=..8,tag=!NoSoul,scores={occultistAbility2=..9600}] run scoreboard players add @s occultistAbility2 3
execute as @a[tag=Occultist,scores={occultistAbility1=1..}] at @s run scoreboard players remove @s occultistAbility1 1
execute as @a[scores={occultistAbility2=1..}] run scoreboard players remove @s occultistAbility2 1

#Remove Alive
execute as @a[tag=Occultist,team=Golden] at @s as @a[team=Royal,distance=8.001..] run tag @s remove Alive
execute as @a[tag=Occultist,team=Royal] at @s as @a[team=Golden,distance=8.001..] run tag @s remove Alive

#Radius Outline
execute as @a[tag=Occultist,scores={occultistAbility1=1..},team=Golden] at @s run function gameify:particles/golden_black_circle with entity @s
execute as @a[tag=Occultist,scores={occultistAbility1=1..},team=Royal] at @s run function gameify:particles/royal_black_circle with entity @s

#Remove 'KeepAlive' outside of radius
execute unless entity @a[tag=Occultist,scores={occultistAbility1=1..},team=Golden] run tag @a[team=Royal] remove Alive
execute unless entity @a[tag=Occultist,scores={occultistAbility1=1..},team=Royal] run tag @a[team=Golden] remove Alive

#Add 'KeepAlive' within radius
execute as @a[scores={occultistAbility1=1..},team=Golden] at @s as @a[team=Royal,distance=..8,scores={occultistAbility2=2400..}] run tag @s add Alive
execute as @a[scores={occultistAbility1=1..},team=Royal] at @s as @a[team=Golden,distance=..8,scores={occultistAbility2=2400..}] run tag @s add Alive

#Visibility past 2 min
execute as @a[scores={occultistAbility2=4801..9600}] at @s run particle dust{color:[0.6,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=5401..9600}] at @s run particle dust{color:[0.5,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=6001..9600}] at @s run particle dust{color:[0.4,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=6601..9600}] at @s run particle dust{color:[0.3,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=7201..9600}] at @s run particle dust{color:[0.2,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=7801..9600}] at @s run particle dust{color:[0.1,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=8401..9600}] at @s run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=9001..9600}] at @s run particle dust{color:[0,0,0],scale:1.5} ~ ~ ~ 0.5 1 0.5 0.1 1
execute as @a[scores={occultistAbility2=9601..}] at @s run effect give @s glowing 1 1 true

#Debuffs
execute as @a[scores={occultistAbility2=200..}] at @s if entity @a[tag=Occultist,distance=..8] run effect give @s resistance 1 3 true

execute as @a[scores={occultistAbility2=600..}] at @s if entity @a[tag=Occultist,distance=..8] run effect give @s weakness 1 0 true

execute as @a[scores={occultistAbility2=1200..}] at @s if entity @a[tag=Occultist,distance=..8] run effect give @s weakness 1 2 true
execute as @a[scores={occultistAbility2=1200..}] at @s if entity @a[tag=Occultist,distance=..8] run effect give @s slowness 1 0 true

execute as @a[scores={occultistAbility2=2400..}] at @s if entity @a[tag=Occultist,distance=..8] run effect give @s weakness 1 9 true
execute as @a[scores={occultistAbility2=2400..}] at @s if entity @a[tag=Occultist,distance=..8] as @e[type=ender_pearl] at @s run function gameify:abilities/occultist_3 with entity @s

execute as @a[scores={occultistAbility2=3600..}] at @s run effect give @s slowness 1 2 true

execute as @a[scores={occultistAbility2=4800..}] at @s run effect give @s slowness 1 4 true
execute as @a[scores={occultistAbility2=4800..}] at @s run effect give @s blindness 2 0 true
execute as @a[scores={occultistAbility2=4800..}] at @s as @e[type=ender_pearl] at @s run function gameify:abilities/occultist_3 with entity @s
execute as @a[scores={occultistAbility2=4800..}] at @s run effect give @s weakness 1 9 true
execute as @a[scores={occultistAbility2=4800..}] at @s run tag @s add Alive

execute as @a[scores={occultistAbility2=6000..}] at @s run effect give @s mining_fatigue 1 9 true

execute as @a[scores={occultistAbility2=7200..}] at @s facing entity @a[tag=Occultist,scores={occultistAbility1=1..},limit=1,sort=nearest] feet unless entity @a[tag=Occultist,scores={occultistAbility1=1..},limit=1,sort=nearest,distance=..2.5] if block ^ ^ ^0.15 air run tp @s ^ ^ ^0.15

execute as @a[scores={occultistAbility2=9600..9700}] at @s run scoreboard players set @s occultistAbility2 10000
execute as @a[scores={occultistAbility2=10000..}] at @s run scoreboard players add @s occultistAbility2 2
execute as @a[scores={occultistAbility2=11200..}] at @s run particle dust{color:[0,0,0],scale:1.5} ~ ~ ~ 0.5 1 0.5 1 1000
execute as @a[scores={occultistAbility2=11200..}] at @s run scoreboard players set @s occultistAbility2 5280

execute as @e[type=marker,tag=SoulBinding] at @s run function gameify:abilities/occultist_4 with entity @s
#1x Emperor - Aboslute Power, /exile command, places banners, players will have to obey him, wears the the crown of absolute control which grants protection and strength, weilds the strongest of the three royal heirlooms, gains the powers of the elder sages if they die, 20 hearts
# 1x High Priest - Sense traitors nearby grants healing and negative effect cleansing, gains the power of Occultist if he dies
# 1x Occultist - Only people who can create revives, has an ability to keep an enemy alive and after a long period of time in their ability radius harvest their soul. the souls are used to break banners
# 2x Elder Sage - Sacred weilders of the royal heirlooms, their power crystals are replaced with amgic sowrds
# 1x The Crusader - 15 hearts, Can spawn a rain of arrows or highlight nearby enemies
# 2x False Prophet - Spy for the RN, will take on any role that isnt high emporer or high preist
# Nx Knight - for each ally nearby gain some absorption
# Mx Worker - Inate fortune on ores and crops and gets to unclock some craftin recipies
# Ox Chaplain - Either throw a mix of regeneration, saturation, and swiftness potions or spawn cobwebs around nearby enemies.

#Lives
execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:77b}]}] at @s run function gameify:lives/lives with entity @s
execute as @a[tag=LivesDebuff] at @s run function gameify:lives/lives_nerf with entity @s

execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]},tag=!Occultist,tag=!LivesDebuff] at @s run function gameify:lives/ritual with entity @s
execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]},tag=Occultist,tag=!LivesDebuff] at @s run function gameify:lives/ritual_occultist with entity @s
execute as @a[nbt={active_effects:[{id:"minecraft:luck",amplifier:76b}]},tag=!Occultist,tag=LivesDebuff] at @s run function gameify:lives/ritual_already with entity @s



#Emperor
execute as @a[tag=Emperor] at @s run scoreboard players enable @s exile
execute as @a[tag=Emperor,team=Golden,tag=!Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden] at @s run tellraw @a[tag=Emperor,team=Golden] ["Input ",{"score":{"name":"@s","objective":"id"}}," To Exile/Unexile ",{"selector":"@s"},"."]
execute as @a[tag=Emperor,team=Royal,tag=!Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal] at @s run tellraw @a[tag=Emperor,team=Royal] ["Input ",{"score":{"name":"@s","objective":"id"}}," To Exile/Unexile ",{"selector":"@s"},"."]
execute as @a[tag=Emperor,tag=!Exiler] at @s unless score @s exile matches 0 run tellraw @s ["Input Any Other Value To Cancel"]



execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=!Exiled] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s add ExiledUnprevent
execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=!Exiled] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tellraw @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] ["Exiled!"]
execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=!Exiled] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s add Exiled

# execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=Exiled,tag=!ExiledUnprevent] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tellraw @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] ["Unexiled!"]
# execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=Exiled,tag=!ExiledUnprevent] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s remove Exiled

execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal,tag=!Exiled] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @s add ExiledUnprevent
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal,tag=!Exiled] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tellraw @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] ["Exiled!"]
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal,tag=!Exiled] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @s add Exiled
 

execute as @e[tag=ExiledUnprevent] at @s run tag @s remove ExiledUnprevent
execute as @a[tag=Emperor,tag=!Exiler] at @s unless score @s exile matches 0 run tag @s add AntiExiler
execute as @a[tag=Emperor,tag=!Exiler] at @s unless score @s exile matches 0 run tag @s add Exiler
execute as @a[tag=Emperor,tag=Exiler,tag=!AntiExiler] at @s unless score @s exile matches 0 run tag @s remove Exiler
execute as @a[tag=Emperor,tag=Exiler,tag=AntiExiler] at @s unless score @s exile matches 0 run tag @s remove AntiExiler
execute as @a[tag=Emperor] at @s unless score @s exile matches 0 run scoreboard players set @s exile 0

execute as @a[tag=Exiled] at @s run team leave @s
execute as @a[tag=Exiled] at @s run tag @s remove Exiled

execute as @e[tag=Exiled] at @s run effect give @s blindness 2 1 true


execute as @e[tag=Emperor] at @s unless score @s flagNumber = @s flagNumber run scoreboard players set @s flagNumber 0


execute as @a[tag=Emperor] at @s run scoreboard players enable @s placeFlag

execute as @a[tag=Emperor,team=Golden] at @s unless score @s placeFlag matches 0 unless score @s flagNumber matches 3.. unless entity @e[tag=Flag,distance=..30] positioned ~ ~-384 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~-366 ~ align xyz run summon falling_block ~0.5 ~0.2 ~0.5 {Tags:["FlagGravity"],BlockState:{Name:"minecraft:barrier"},Passengers:[{id:"item_display",Tags:["GoldenFlag","Flag","FlagInitial"],item:{id:"minecraft:black_banner",count:1,components:{"minecraft:banner_patterns":[{pattern:curly_border,color:black},{pattern:cross,color:black},{pattern:rhombus,color:black},{pattern:flower,color:yellow},{pattern:triangle_top,color:black},{pattern:triangles_bottom,color:black}]}}}]}

execute as @a[tag=Emperor,team=Royal] at @s unless score @s placeFlag matches 0 unless score @s flagNumber matches 3.. unless entity @e[tag=Flag,distance=..30] positioned ~ ~-384 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~15 ~ unless entity @e[tag=Flag,distance=..30] positioned ~ ~-366 ~ align xyz run summon falling_block ~0.5 ~0.2 ~0.5 {Tags:["FlagGravity"],BlockState:{Name:"minecraft:barrier"},Passengers:[{id:"item_display",Tags:["RoyalFlag","Flag","FlagInitial"],item:{id:"minecraft:purple_banner",count:1,components:{"minecraft:banner_patterns":[{pattern:gradient_up,color:blue},{pattern:small_stripes,color:black},{pattern:rhombus,color:black},{pattern:curly_border,color:black},{pattern:rhombus,color:blue},{pattern:flower,color:black}]}}}]}

execute as @a[tag=Emperor] at @s unless score @s placeFlag matches 0 unless score @s flagNumber matches 3.. unless entity @e[tag=Flag,distance=..1] run tellraw @s ["You can't place a flag here! It's too close to another flag!"]

execute as @a[tag=Emperor] at @s unless score @s placeFlag matches 0 if score @s flagNumber matches 3.. run tellraw @s ["You already placed 3 flags!"]

execute as @a[tag=Emperor] at @s unless score @s placeFlag matches 0 run scoreboard players set @s placeFlag 0

execute as @e[tag=FlagInitial] at @s run function gameify:abilities/emperor with entity @s

execute as @e[tag=FlagHitbox] at @s run function gameify:abilities/emperor_2 with entity @s

execute as @e[tag=FlagText] at @s run data merge entity @s {Tags:["FlagText"],billboard:"center",default_background:0b,text:[{"color":"dark_red","shadow_color":13893632,"text":"Health: "},{"color":"dark_red","score":{"name":"@e[tag=FlagHitbox,limit=1,sort=nearest]","objective":"flagHealth"},"shadow_color":13893632}]}


execute as @e[tag=Emperor] at @s run item replace entity @s armor.head with golden_helmet[custom_name=[{"text":"Emperor's Crown","italic":false,"color":"gold"}],lore=[[{"text":"Represents almightly power.","italic":false,"color":"gray"}]],enchantments={aqua_affinity:1,binding_curse:1,blast_protection:5,fire_protection:5,projectile_protection:5,protection:10,respiration:5,thorns:5,vanishing_curse:1},attribute_modifiers=[{type:armor,amount:20,slot:head,operation:add_value,id:"1784266748339"},{type:armor_toughness,amount:10,slot:head,operation:add_value,id:"1784266748340"},{type:knockback_resistance,amount:1,slot:head,operation:add_value,id:"1784266748341"},{type:luck,amount:10,slot:head,operation:add_value,id:"1784266748342"},{type:explosion_knockback_resistance,amount:1,slot:head,operation:add_value,id:"1784266748343"}],unbreakable={},tooltip_display={hidden_components:[attribute_modifiers,can_break,can_place_on,unbreakable]}]


#Crusader
execute as @a[tag=Crusader] at @s run attribute @s max_health base set 30
execute as @a[tag=!Crusader] at @s run attribute @s max_health base set 20

execute as @e[tag=ArrowRainingLightning,nbt={inGround:true}] at @s run summon lightning_bolt ~ ~ ~
execute as @e[tag=ArrowRainingExplode,nbt={inGround:true}] at @s run summon creeper ~ ~-0.5 ~ {Fuse:0}
execute as @e[tag=ArrowRaining,nbt={inGround:true}] at @s run kill @s


execute as @e[tag=ArrowRain,scores={time=20..}] at @s run function gameify:abilities/crusader_3 with entity @s


#Chaplain


#False Prophet
execute as @a[tag=FalseProphet] at @s run scoreboard players enable @s conceal
execute as @a[tag=FalseProphet] at @s run scoreboard players enable @s reveal

execute as @a[tag=FalseProphet,tag=!Fake,team=Golden] at @s unless score @s conceal matches 0 run tag @s add Golden
execute as @a[tag=FalseProphet,tag=!Fake,team=Royal] at @s unless score @s conceal matches 0 run tag @s add Royal
execute as @a[tag=FalseProphet,tag=!Fake] at @s unless score @s conceal matches 0 run tag @s add Fake
execute as @a[tag=FalseProphet,tag=Fake,tag=Golden] at @s unless score @s conceal matches 0 run team join Royal @s
execute as @a[tag=FalseProphet,tag=Fake,tag=Royal] at @s unless score @s conceal matches 0 run team join Golden @s
execute as @a[tag=FalseProphet,tag=Fake] at @s unless score @s conceal matches 0 run tag @s remove Royal
execute as @a[tag=FalseProphet,tag=Fake] at @s unless score @s conceal matches 0 run tag @s remove Golden

execute as @a[tag=FalseProphet,tag=Fake,team=Golden] at @s unless score @s reveal matches 0 run tag @s add Golden
execute as @a[tag=FalseProphet,tag=Fake,team=Royal] at @s unless score @s reveal matches 0 run tag @s add Royal
execute as @a[tag=FalseProphet,tag=Fake,tag=Golden] at @s unless score @s reveal matches 0 run team join Royal @s
execute as @a[tag=FalseProphet,tag=Fake,tag=Royal] at @s unless score @s reveal matches 0 run team join Golden @s
execute as @a[tag=FalseProphet,tag=Royal] at @s unless score @s reveal matches 0 run tag @s remove Royal
execute as @a[tag=FalseProphet,tag=Golden] at @s unless score @s reveal matches 0 run tag @s remove Golden
execute as @a[tag=FalseProphet,tag=Fake] at @s unless score @s reveal matches 0 run tag @s remove Fake

execute as @a[tag=FalseProphet] at @s unless score @s conceal matches 0 run scoreboard players set @s conceal 0
execute as @a[tag=FalseProphet] at @s unless score @s reveal matches 0 run scoreboard players set @s reveal 0


#Workers
execute as @a[tag=Worker] at @s run attribute @s block_break_speed base set 2
execute as @a[tag=Worker] at @s run attribute @s luck base set 1
execute as @a[tag=Worker] at @s run attribute @s safe_fall_distance base set 6
execute as @a[tag=Worker] at @s run attribute @s water_movement_efficiency base set 10
execute as @a[tag=Worker] at @s run attribute @s oxygen_bonus base set 1
execute as @a[tag=Worker] at @s run attribute @s movement_efficiency base set 0.9

execute as @a[tag=!Worker] at @s run attribute @s block_break_speed base reset
execute as @a[tag=!Worker] at @s run attribute @s luck base reset
execute as @a[tag=!Worker] at @s run attribute @s safe_fall_distance base reset
execute as @a[tag=!Worker] at @s run attribute @s water_movement_efficiency base reset
execute as @a[tag=!Worker] at @s run attribute @s oxygen_bonus base reset
execute as @a[tag=!Worker] at @s run attribute @s movement_efficiency base reset



#Other
execute as @a[tag=Alive] at @s if score @s health matches 10001.. run damage @s 1 out_of_world
execute as @a[tag=Alive] at @s run effect give @s resistance 1 10 true
execute as @a[tag=Alive] at @s run attribute @s jump_strength base set 0
execute as @a[tag=!Alive] at @s run attribute @s jump_strength base reset


execute as @e[tag=CustomCrafter] at @s run function gameify:custom_crafter_2 with entity @s

execute as @e[type=player,nbt={SelectedItem:{components:{"minecraft:custom_data":{invisibility:true}}}}] at @s run effect give @s invisibility 1 0 true
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{invisibility:true}}}}] at @s run particle soul ~ ~ ~ 0 0 0 0.005 1 force



#Items

execute as @e[type=item,predicate=gameify:armor] at @s if block ~ ~-1 ~ #anvil if block ~ ~-0.1 ~ #anvil run function gameify:plating/armor with entity @s
execute as @e[type=interaction,tag=TheArmorSmith] at @s unless entity @e[type=item,distance=..0.5] run kill @s
execute as @e[type=interaction,tag=TheArmorSmith] at @s as @e[type=item,distance=..0.5] at @s unless block ~ ~-0.1 ~ #anvil unless block ~ ~-1 ~ #anvil on passengers run kill @s
execute as @e[type=interaction,tag=TheArmorSmith] at @s run function gameify:plating/smack with entity @s

execute as @a[predicate=gameify:armor_passive] at @s run function gameify:plating/armor_passive with entity @s

execute as @a[predicate=gameify:scoped_bow] at @s run function gameify:bows/scoped_bow with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:spyglass",components:{"minecraft:custom_data":{scoped_bow:true,bowtype:"bow"}}}}] run data modify entity @s Item.id set value "minecraft:bow"
execute as @e[type=item,nbt={Item:{id:"minecraft:spyglass",components:{"minecraft:custom_data":{scoped_bow:true,bowtype:"crossbow"}}}}] run data modify entity @s Item.id set value "minecraft:crossbow"

execute as @a[predicate=gameify:hunter_bow] at @s run function gameify:bows/hunter_bow with entity @s
execute as @a[predicate=gameify:reload_bow] at @s run function gameify:bows/reload_bow with entity @s

execute as @a[predicate=gameify:minigun] at @s run function gameify:bows/minigun with entity @s

execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{sniper:true}}}},scores={time=1}] at @s on origin run scoreboard players set @s max_snipe_distance 200
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{sniper:true}}}},scores={time=1}] at @s on origin rotated as @s run function gameify:bows/sniper with entity @s
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{sniper:true}}}},scores={time=1}] at @s run kill @s

execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{anti_gravity:true}}}},scores={time=1}] at @s run data merge entity @s {NoGravity:true}
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{anti_gravity:true}}}},scores={time=200..}] at @s run kill @s


execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{life_essence:true}}}}] at @s run function gameify:lives/life with entity @s

#TheTurret
execute as @a[scores={turret.cooldown=1..}] at @s run scoreboard players remove @s turret.cooldown 1
execute as @e[type=armor_stand,tag=TheTurret] at @s run function gameify:bows/turret with entity @s

execute as @e[type=arrow,tag=TurretArrow] at @s run function gameify:bows/turret_arrow with entity @s



#Swords

execute as @a at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:strengthen" unless entity @s[nbt=!{active_effects:[{id:"minecraft:strength"}]}] run function gameify:swords/strengthen with entity @s
execute as @a at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:strengthen" if entity @s[nbt=!{active_effects:[{id:"minecraft:strength"}]}] run attribute @s attack_damage modifier remove minecraft:1785368749352
execute as @a at @s unless data entity @s SelectedItem.components."minecraft:enchantments"."gameify:strengthen" run attribute @s attack_damage modifier remove minecraft:1785368749352

execute as @a at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:aquatic" if block ~ ~ ~ water run function gameify:swords/aquatic with entity @s
execute as @a at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:aquatic" unless block ~ ~ ~ water if predicate gameify:rain run function gameify:swords/aquatic with entity @s
execute as @a at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:aquatic" unless block ~ ~ ~ water unless predicate gameify:rain run attribute @s attack_damage modifier remove minecraft:1785368749353
execute as @a at @s unless data entity @s SelectedItem.components."minecraft:enchantments"."gameify:aquatic" run attribute @s attack_damage modifier remove minecraft:1785368749353

execute as @e[type=#gameify:mobs,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] unless score @s enchant.target matches -1 if score @s enchant.target = @s enchant.target at @s run function gameify:swords/targetter with entity @s

execute as @a[scores={health=..45000}] at @s if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:final_stand" run function gameify:swords/final_stand with entity @s
execute as @a[scores={health=45001..}] at @s run attribute @s attack_damage modifier remove minecraft:1785368749354
execute as @a at @s unless data entity @s SelectedItem.components."minecraft:enchantments"."gameify:final_stand" run attribute @s attack_damage modifier remove minecraft:1785368749354

execute as @e[type=#gameify:mobs,scores={enchant.knockout=1..}] at @s run attribute @s gravity modifier add minecraft:1785368749355 100 add_value
execute as @e[type=#gameify:mobs,scores={enchant.knockout=1}] at @s run attribute @s gravity modifier remove minecraft:1785368749355
execute as @e[type=#gameify:mobs,scores={enchant.knockout=1..}] at @s run scoreboard players remove @s enchant.knockout 1

execute as @a[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{time_freeze:true}}}}}] at @s run function gameify:swords/time with entity @s

execute as @e[type=#gameify:mobs,scores={enchant.counter=1..}] at @s run scoreboard players remove @s enchant.counter 1
execute as @e[type=#gameify:mobs,scores={enchant.counter=1..5}] at @s run function gameify:swords/counter_indication with entity @s

execute as @a at @s if data entity @s equipment.offhand.components."minecraft:enchantments"."gameify:endurance" run function gameify:swords/endurance with entity @s

execute as @a at @s if score @s block matches 1.. if data entity @s equipment.offhand.components."minecraft:enchantments"."gameify:entrapment" on attacker at @s run function gameify:swords/entrapment with entity @s
execute as @a at @s if score @s block matches 1.. if data entity @s SelectedItem.components."minecraft:enchantments"."gameify:entrapment" on attacker at @s run function gameify:swords/entrapment with entity @s

execute as @e[type=#gameify:mobs,scores={enchant.snap=1..}] at @s run function gameify:swords/snapped with entity @s

#SwordForge
execute as @e[type=item,predicate=gameify:sword] at @s if block ~ ~ ~ water_cauldron unless data entity @s Item.components."minecraft:enchantments"."gameify:potion1" unless data entity @s Item.components."minecraft:enchantments"."gameify:potion2" unless data entity @s Item.components."minecraft:enchantments"."gameify:potion3" run function gameify:swords/craft_potion1 with entity @s
execute as @e[type=item,predicate=gameify:sword] at @s if block ~ ~ ~ water_cauldron if entity @s[nbt={Item:{components:{"minecraft:enchantments":{"gameify:potion1":1}}}}] run function gameify:swords/craft_potion2 with entity @s
execute as @e[type=item,predicate=gameify:sword] at @s if block ~ ~ ~ water_cauldron if entity @s[nbt={Item:{components:{"minecraft:enchantments":{"gameify:potion2":1}}}}] run function gameify:swords/craft_potion3 with entity @s

execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @e[type=area_effect_cloud,nbt={potion_contents:{potion:"minecraft:strength"}},distance=..3] run function gameify:swords/craft_strengthen with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @e[type=area_effect_cloud,nbt={potion_contents:{potion:"minecraft:long_strength"}},distance=..3] run function gameify:swords/craft_strengthen with entity @s
execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @e[type=area_effect_cloud,nbt={potion_contents:{potion:"minecraft:strong_strength"}},distance=..3] run function gameify:swords/craft_strengthen with entity @s

execute as @e[type=item,nbt={Item:{id:"minecraft:book"}}] at @s if entity @e[type=trident,distance=..2] if block ~ ~ ~ water run function gameify:swords/craft_aquatic with entity @s


#End

scoreboard players set @a playerhit 0
scoreboard players set @a playerhitplayer 0
scoreboard players set @a crit 0
scoreboard players set @a block 0