#COPYRIGHT @ JONG YEON KIM

execute as @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{toggle:0}}]}] if score @s toggle_EX matches 1.. run scoreboard players set @s has_toggle_0 1
execute as @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{toggle:1}}]}] if score @s toggle_EX matches 1.. run scoreboard players set @s has_toggle_1 1

#toggle0 functions
#do something
execute if entity @p[scores={has_toggle_0=1..,toggle_EX=1..}] run say booty 
#reset and set to 1
execute as @p[scores={has_toggle_0=1..,toggle_EX=1..}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"t1\"}"},toggle:0}
execute as @p[scores={has_toggle_0=1..,toggle_EX=1..}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"t1\"}"},toggle:1} 1
execute as @p[scores={has_toggle_0=1..,toggle_EX=1..}] run scoreboard players set @s toggle_EX 0
execute as @p[scores={IS_ADMIN=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{toggle:0}}]}] run scoreboard players set @s has_toggle_0 0

#toggle1 functions
#do something
execute if entity @p[scores={has_toggle_1=1..,toggle_EX=1..}] run say tooty
#reset and set to 1
execute as @p[scores={has_toggle_1=1..,toggle_EX=1..}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"t1\"}"},toggle:1}
execute as @p[scores={has_toggle_1=1..,toggle_EX=1..}] run replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"t1\"}"},toggle:0} 1
execute as @p[scores={has_toggle_1=1..,toggle_EX=1..}] run scoreboard players set @s toggle_EX 0
execute as @p[scores={IS_ADMIN=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{toggle:1}}]}] run scoreboard players set @s has_toggle_1 0