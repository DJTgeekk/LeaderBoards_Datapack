##
 # update_line_init.mcfunction
 # 
 #
 # Created by DJT3.
##
execute as @s run function leaderboard:lb/build_time_values with storage leaderboard:line
data modify storage leaderboard:line color set value "white"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_1 matches $(rank) run data modify storage leaderboard:line color set value "#D6AF36"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_2 matches $(rank) run data modify storage leaderboard:line color set value "#A7A7AD"
$execute if score lb_temp medal_color matches 1 if score dummy dummy_3 matches $(rank) run data modify storage leaderboard:line color set value "#A77044"

$execute store result storage leaderboard:line value int 1 run scoreboard players get $(name) $(score)
function leaderboard:lb/update_line with storage leaderboard:line