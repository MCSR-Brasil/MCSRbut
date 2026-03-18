/execute run scoreboard objectives add slotTimer dummy;
/execute run scoreboard objectives add slotRemain dummy;
/execute run scoreboard players set @a slotTimer 0;
/execute run scoreboard players set @a slotRemain 300;
/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a run scoreboard players add @s slotTimer 1",auto:1b};
/execute at @a run setblock ~ ~-49 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players set @s slotRemain 300",auto:1b};
/execute at @a run setblock ~ ~-48 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run scoreboard players operation @s slotRemain -= @s slotTimer",auto:1b};
/execute at @a run setblock ~ ~-47 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run execute as @s if score @s slotRemain matches ..-1 run scoreboard players set @s slotRemain 0",auto:1b};
/execute at @a run setblock ~ ~-46 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a run title @s actionbar {\"text\":\"Unlock Slot in: \",\"extra\":[{\"score\":{\"name\":\"@s\",\"objective\":\"slotRemain\"}}]}",auto:1b};

/execute at @a run setblock ~1 ~-44 ~ minecraft:repeating_command_block[facing=up]{Command:"execute as @a[scores={slotTimer=270}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~1 ~-43 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={slotTimer=280}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.5",auto:1b};
/execute at @a run setblock ~1 ~-42 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={slotTimer=290}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 1",auto:1b};
/execute at @a run setblock ~1 ~-41 ~ minecraft:chain_command_block[facing=up]{Command:"execute as @a[scores={slotTimer=299}] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2",auto:1b};