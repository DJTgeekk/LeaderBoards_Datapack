##
 # add_line_prep.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:line name set from storage leaderboard:temp_namelist_ordered names[$(lines)]
function leaderboard:lb/add_line with storage leaderboard:line

$scoreboard players operation lines display_$(score)_maxlines += dummy dummy_1
$scoreboard players operation rank display_$(score)_maxlines = lines display_$(score)_maxlines
$scoreboard players operation rank display_$(score)_maxlines += dummy dummy_1
$execute store result storage leaderboard:line rank int 1 run scoreboard players get rank display_$(score)_maxlines
$execute store result storage leaderboard:line lines int 1 run scoreboard players get lines display_$(score)_maxlines
$execute store result storage leaderboard:line sep double 0.30 run scoreboard players get rank display_$(score)_maxlines

$execute if score lines display_$(score)_maxlines < lb_temp display_$(score)_maxlines unless score rank display_$(score)_maxlines > lb_temp namelist_size run function leaderboard:lb/add_line_prep with storage leaderboard:line