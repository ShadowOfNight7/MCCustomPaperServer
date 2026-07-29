tag @s add WardenMarker

execute as @s at @s as @e[type=ender_pearl,distance=..55] at @s run function gameify:enhanced_warden/player_check with entity @s
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}

execute as @s at @s as @a[distance=..50] at @s if block ~0.7 ~-1 ~ sculk run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~0.7 ~-1 ~ sculk run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~0.7 ~-1 ~ sculk run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~0.7 ~-1 ~ sculk run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~0.7 ~-1 ~ sculk run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}

execute as @s at @s as @a[distance=..50] at @s if block ~-0.7 ~-1 ~ sculk run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~-0.7 ~-1 ~ sculk run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~-0.7 ~-1 ~ sculk run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~-0.7 ~-1 ~ sculk run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~-0.7 ~-1 ~ sculk run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}

execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~0.7 sculk run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~0.7 sculk run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~0.7 sculk run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~0.7 sculk run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~0.7 sculk run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}

execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~-0.7 sculk run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~-0.7 sculk run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~-0.7 sculk run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~-0.7 sculk run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~-0.7 sculk run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}



execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk_vein run effect give @s slowness 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk_vein run effect give @s hunger 2 2 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk_vein run effect give @s weakness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk_vein run effect give @s darkness 2 0 true
execute as @s at @s as @a[distance=..50] at @s if block ~ ~-1 ~ sculk_vein run summon snowball ~ ~ ~ {Motion:[0d,-5d,0d],HasVisualFire:false,Silent:true,Item:{id:"sculk",count:1}}


execute as @s at @s on target run tag @s add WardenTarget
execute as @s at @s if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] unless entity @e[tag=WardenTarget] run damage @s 0 generic by @p[distance=..3]


execute as @s[nbt={HurtTime:9s}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ sculk_catalyst replace #sculk_replaceable
execute as @s[nbt={HurtTime:9s}] at @s run summon drowned ~ ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false,amplifier:0b}],Tags:["SculkSpread"],DeathLootTable:""}
execute as @s[nbt={HurtTime:9s}] at @s run summon drowned ~ ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false,amplifier:0b}],Tags:["SculkSpread"],DeathLootTable:""}
execute as @s[nbt={HurtTime:9s}] at @s run summon drowned ~ ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false,amplifier:0b}],Tags:["SculkSpread"],DeathLootTable:""}
execute as @s[nbt={HurtTime:9s}] at @s run summon drowned ~ ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false,amplifier:0b}],Tags:["SculkSpread"],DeathLootTable:""}
execute as @s[nbt={HurtTime:9s}] at @s run summon drowned ~ ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,NoAI:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false,amplifier:0b}],Tags:["SculkSpread"],DeathLootTable:""}

execute as @s[nbt={HurtTime:9s}] at @s run kill @e[tag=SculkSpread]


tag @e remove WardenTarget
tag @s remove WardenMarker

execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #sculk_replaceable
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace obsidian
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace crying_obsidian
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #mineable/axe
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #mineable/pickaxe
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #mineable/shovel
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #mineable/hoe
execute as @s[scores={time=120}] at @s run fill ~-5 ~-3 ~-5 ~5 ~3 ~5 air replace #sword_instantly_mines
execute as @s[scores={time=120}] at @s run particle explosion_emitter ~ ~1 ~ 0.2 0.2 0.2 3 100 normal
execute as @s[scores={time=1}] at @s run attribute @s step_height base set 5