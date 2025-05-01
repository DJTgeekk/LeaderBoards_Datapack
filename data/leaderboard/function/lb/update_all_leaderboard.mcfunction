##
 # update_all_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update tags set from entity @s Tags
execute as @s run function leaderboard:lb/find_display_tag_init with storage leaderboard:update

data modify storage leaderboard:update tags set from entity @s Tags
execute as @s run function leaderboard:lb/find_max_tag_init with storage leaderboard:update

execute as @s run function leaderboard:lb/update_leaderboard with storage leaderboard:update
