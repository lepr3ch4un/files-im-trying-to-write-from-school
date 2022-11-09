## load
scoreboard objectives create manaDecay dummy



## tick
# human
scoreboard players add @a[tag=human] manaDecay 1

# tidebound
scoreboard players add @a[tag=tidebound,nbt={Dimension:-1}] manaDecay 1


scoreboard players remove @e[scores={manaDecay=100..}] mana 1
scoreboard players set @e[scores={manaDecay=100..}] manaDecay 0
