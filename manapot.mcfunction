# give
give @p potion{display:{Name:'{"text":"Mana Potion","italic":false}',Lore:['{"text":"Completely replenishes mana","color":"dark_blue","bold":false,"italic":false}']},Mana:1b,CustomPotionColor:14606046} 1

# load
scoreboard objectives add drinkPot minecraft.used:minecraft.potion

# tick
execute as @e[scores={drinkPot=1..},nbt={SelectedItem:{"tags":"Mana:1b"}}] at @s run function scripts:manapot


scoreboard players set @e[scores={drinkPot=1..} drinkPot 0

# manapot.mcfunction
item modify entity @s weapon.mainhand !{Mana:1b}
