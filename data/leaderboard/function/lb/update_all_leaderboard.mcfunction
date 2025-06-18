##
 # update_all_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update score set from entity @s data.score
data modify storage leaderboard:update max_players set from entity @s data.max_players

execute as @s run function leaderboard:lb/update_leaderboard with storage leaderboard:update
