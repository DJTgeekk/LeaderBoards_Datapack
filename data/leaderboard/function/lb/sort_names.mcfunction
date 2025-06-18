##
 # sort_names.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:temp_player score set value $(score)

# Reset output

data remove storage leaderboard:temp_namelist names_ordered

data modify storage leaderboard:temp_namelist names_unordered set from storage leaderboard:namelist names
execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist names_unordered
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names_ordered

$execute as @s unless score lb_temp_unorderred namelist_size matches 0 unless score lb_temp namelist_size matches $(max_players) run function leaderboard:lb/append_max_players with storage leaderboard:update
