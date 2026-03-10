/execute run scoreboard objectives add tpBowUsed minecraft.used:minecraft.bow;
/execute run scoreboard objectives add tpBowUsedPrev dummy;
/execute run scoreboard objectives add tpUUID0 dummy;
/execute run scoreboard objectives add tpArrowOwner0 dummy;

/execute run scoreboard players set @a tpBowUsedPrev 0;

/give @a bow{Unbreakable:1b};
/give @a tipped_arrow{Potion:"minecraft:luck",CustomPotionColor:3381504,display:{Name:'{"text":"Ender Arrow","color":"green","italic":false}'}} 100;

/execute at @a run setblock ~ ~-50 ~ minecraft:repeating_command_block[facing=south]{Command:"execute as @a store result score @s tpUUID0 run data get entity @s UUID[0] 1",auto:1b};
/execute at @a run setblock ~ ~-50 ~1 minecraft:chain_command_block[facing=south]{Command:"execute as @a if score @s tpBowUsed > @s tpBowUsedPrev run tag @s add tpBowShot",auto:1b};
/execute at @a run setblock ~ ~-50 ~2 minecraft:chain_command_block[facing=south]{Command:"execute as @a run scoreboard players operation @s tpBowUsedPrev = @s tpBowUsed",auto:1b};
/execute at @a run setblock ~ ~-50 ~3 minecraft:chain_command_block[facing=south]{Command:"execute as @a[tag=tpBowShot] at @s run scoreboard players operation @e[type=arrow,tag=!tpLinked,nbt={Color:3381504},sort=nearest,limit=1,distance=..6] tpArrowOwner0 = @s tpUUID0",auto:1b};
/execute at @a run setblock ~ ~-50 ~4 minecraft:chain_command_block[facing=south]{Command:"execute as @a[tag=tpBowShot] at @s run tag @e[type=arrow,tag=!tpLinked,nbt={Color:3381504},sort=nearest,limit=1,distance=..6] add tpLinked",auto:1b};
/execute at @a run setblock ~ ~-50 ~5 minecraft:chain_command_block[facing=south]{Command:"execute as @a[tag=tpBowShot] run tag @s remove tpBowShot",auto:1b};
/execute at @a run setblock ~ ~-50 ~6 minecraft:chain_command_block[facing=south]{Command:"execute as @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={inGround:1b,Color:3381504}] at @s run execute as @a if score @s tpUUID0 = @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={Color:3381504},distance=..0,limit=1] tpArrowOwner0 run effect give @s resistance 1 255 true",auto:1b};
/execute at @a run setblock ~ ~-50 ~7 minecraft:chain_command_block[facing=south]{Command:"execute as @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={inGround:1b,Color:3381504}] at @s run execute as @a if score @s tpUUID0 = @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={Color:3381504},distance=..0,limit=1] tpArrowOwner0 run tp @s ~ ~1 ~",auto:1b};
/execute at @a run setblock ~ ~-50 ~8 minecraft:chain_command_block[facing=south]{Command:"execute as @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={inGround:1b,Color:3381504}] at @a run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 1",auto:1b};
/execute at @a run setblock ~ ~-50 ~9 minecraft:chain_command_block[facing=south]{Command:"execute as @e[type=arrow,tag=tpLinked,tag=!tpDone,nbt={inGround:1b,Color:3381504}] run tag @s add tpDone",auto:1b};
/execute at @a run setblock ~ ~-50 ~10 minecraft:chain_command_block[facing=south]{Command:"kill @e[type=arrow,tag=tpDone,nbt={Color:3381504}]",auto:1b};

/execute at @a run tellraw @a ["",{"text":"Ender Arrows","bold":true,"color":"aqua"},{"text":"\nYou got a Bow and Ender Arrows. They work like Ender Pearls, but you still take fall damage. Good Luck","color":"green"}];
