##
 # player_equal_max.mcfunction
 # 
 #
 # Created by DJT3.
##

# Remove max values from temp_score_display and names from temp_namelist_unordered

$execute if score $(player) temp_score_display = lb_max temp_score_display run data modify storage leaderboard:temp_namelist_ordered names append value $(player)
$execute if score $(player) temp_score_display = lb_max temp_score_display run data remove storage leaderboard:temp_namelist_unordered names[$(index)]

$execute unless score $(player) temp_score_display = lb_max temp_score_display run scoreboard players operation lb_index index += dummy dummy_1