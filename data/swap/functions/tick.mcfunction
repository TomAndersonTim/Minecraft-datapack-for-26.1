# Entity effects: water deals damage and sets players on fire; lava grants high resistance and clears fire
execute as @a at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:instant_damage 1 0 true
execute as @a at @s if block ~ ~ ~ minecraft:water run data merge entity @s {Fire:100s}

execute as @a at @s if block ~ ~ ~ minecraft:lava run effect give @s minecraft:resistance 1 255 true
execute as @a at @s if block ~ ~ ~ minecraft:lava run data merge entity @s {Fire:0s}
