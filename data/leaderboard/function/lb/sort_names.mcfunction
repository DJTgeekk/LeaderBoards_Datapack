##
 # sort_names.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:temp_player score set value $(score)
$scoreboard players operation lb_max display_$(score)_maxlines = lb_temp display_$(score)_maxlines
$scoreboard players operation lb_max display_$(score)_maxlines += dummy dummy_1

# Reset output

data remove storage leaderboard:temp_namelist_ordered names
# Copy scoreboard of all players to temp_score_display

data modify storage leaderboard:temp_namelist names set from storage leaderboard:namelist names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist names
execute unless score lb_temp namelist_size matches 0 run function leaderboard:lb/copy_all

data modify storage leaderboard:temp_namelist_unordered names set from storage leaderboard:namelist names
execute store result score lb_temp_unorderred namelist_size run data get storage leaderboard:temp_namelist_unordered names
execute store result score lb_temp namelist_size run data get storage leaderboard:temp_namelist_ordered names
scoreboard players set lb_max temp_score_display -1
scoreboard players set lb_index index 0
$execute unless score lb_temp_unorderred namelist_size matches 0 run function leaderboard:lb/append_max_players {score:$(score)}
