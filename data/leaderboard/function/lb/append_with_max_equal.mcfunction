##
 # append_with_max_equal.mcfunction
 # 
 #
 # Created by DJT3.
##

$data modify storage leaderboard:temp_player player set from storage leaderboard:temp_namelist_unordered names[$(index)]

execute as @s run function leaderboard:lb/player_equal_max with storage leaderboard:temp_player
execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute unless score lb_index index = lb_temp_unorderred namelist_size run function leaderboard:lb/max_index_gestion