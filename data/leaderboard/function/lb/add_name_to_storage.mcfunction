##
 # add_name_to_storage.mcfunction
 # 
 #
 # Created by DJT3.
##
loot replace entity 00000070-0000-006e-0000-007400000078 container.0 loot leaderboard:entities/player_head
data modify storage leaderboard:namelist names append from entity 00000070-0000-006e-0000-007400000078 item.components.minecraft:profile.name
tag @s add lb_tracked