#COPYRIGHT @ JONG YEON KIM

#scoreboard objectives add IM_can dummy

#say BUTTS

give @p[scores={IS_ADMIN=1}] minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"t1\"}"},toggle:0} 1

scoreboard objectives add toggle_EX minecraft.used:minecraft.carrot_on_a_stick "Toggle"
scoreboard objectives add has_toggle_0 dummy "t0"
scoreboard objectives add has_toggle_1 dummy "t1"

#execute if score @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{toggle:0}}]}] toggle_EX matches 1 run scoreboard players set @s has_toggle_0 1
#execute if entity @p[scores={has_toggle_0=1..,toggle_EX=1..}] run say hi

#TEMP
scoreboard objectives setdisplay sidebar toggle_EX


