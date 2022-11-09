# load
scoreboard objectives create manaDecay dummy

# tick
scoreboard players add @a[tag=human] manaDecay 1
scoreboard players remove @e[scores={manaDecay=100..}] mana 1
scoreboard players set @e[scores={manaDecay=100..}] manaDecay 0
