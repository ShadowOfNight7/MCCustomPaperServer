advancement revoke @s only gameify:dummy
execute as @s at @s run summon armor_stand ~ ~ ~ {ShowArms:true,equipment:{mainhand:{id:"minecraft:copper_sword",count:1},offhand:{id:"minecraft:torch",count:1},head:{id:"minecraft:hay_block",count:1}},Invulnerable:false,Tags:["Dummy","DummyIntital"],DisabledSlots:4144959}
execute as @s at @s as @e[type=#gameify:hostile_mobs,type=!wither,type=!ender_dragon,type=!warden,type=!elder_guardian,distance=..7.5] at @s run damage @s 0 arrow by @e[type=armor_stand,tag=DummyIntital,limit=1]
tag @e[type=armor_stand,tag=DummyIntital] remove DummyIntital