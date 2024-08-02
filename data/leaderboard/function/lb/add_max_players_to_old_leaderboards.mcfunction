##
 # add_max_players_to_old_leaderboards.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update tags set from entity @s Tags
data remove storage leaderboard:update max_players

function leaderboard:lb/find_max_tag_init with storage leaderboard:update
execute store success score lb_temp temp_tag_valid run data get storage leaderboard:update max_players

data modify storage leaderboard:update tags set from entity @s Tags
function leaderboard:lb/find_display_tag_init with storage leaderboard:update
execute as @s run function leaderboard:lb/add_max_players_tag_init with storage leaderboard:update