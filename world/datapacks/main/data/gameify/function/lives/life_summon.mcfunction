kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{life_essence:true}}}},tag=!LivedItem,distance=..3,limit=1] 
kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},distance=..3,limit=1]

particle end_rod ~ ~ ~ 0 0 0 0.1 1000 force

summon item ~ ~ ~ {Item:{id:"minecraft:command_block",count:1b,components:{"minecraft:custom_name":[{"text":"Life","italic":false,"color":"gold"}],"minecraft:lore":[[{"text":"Consume it to permanently gain a life.","italic":false,"color":"gray"}],[{"text":"There are consequences of defying your fate, but that is your risk to take.","italic":false,"color":"dark_red"}]],"minecraft:rarity":epic,"minecraft:enchantment_glint_override":true,food:{nutrition:999,saturation:999,can_always_eat:1b},consumable:{consume_seconds:10,animation:bow,has_consume_particles:0b,on_consume_effects:[{type:apply_effects,effects:[{id:luck,duration:10,amplifier:77,show_particles:0b,show_icon:0b},{id:resistance,duration:100,amplifier:10},{id:instant_health,duration:100,amplifier:10}]}]},damage_resistant:{types:"#damages_helmet"},item_model:"minecraft:amethyst_shard",tooltip_display:{hidden_components:[enchantments]}}}}
kill @s