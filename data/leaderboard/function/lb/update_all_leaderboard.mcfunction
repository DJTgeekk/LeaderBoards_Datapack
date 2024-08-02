##
 # update_all_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
execute store result score update_size namelist_size run data get storage leaderboard:update_list UUID_0

execute unless score update_size namelist_size matches 0 run data modify storage leaderboard:update UUID_0 set from storage leaderboard:update_list UUID_0[-1]
execute unless score update_size namelist_size matches 0 run data modify storage leaderboard:update UUID_1 set from storage leaderboard:update_list UUID_1[-1]
execute unless score update_size namelist_size matches 0 run data modify storage leaderboard:update UUID_2 set from storage leaderboard:update_list UUID_2[-1]
execute unless score update_size namelist_size matches 0 run data modify storage leaderboard:update UUID_3 set from storage leaderboard:update_list UUID_3[-1]

function leaderboard:lb/get_score_from_uuid with storage leaderboard:update
function leaderboard:lb/find_max_tag_init with storage leaderboard:update
function leaderboard:lb/update_leaderboard with storage leaderboard:update

execute unless score update_size namelist_size matches 0 run data remove storage leaderboard:update_list UUID_0[-1]
execute unless score update_size namelist_size matches 0 run data remove storage leaderboard:update_list UUID_1[-1]
execute unless score update_size namelist_size matches 0 run data remove storage leaderboard:update_list UUID_2[-1]
execute unless score update_size namelist_size matches 0 run data remove storage leaderboard:update_list UUID_3[-1]

execute unless score update_size namelist_size matches 0 run function leaderboard:lb/update_all_leaderboard
execute if score update_size namelist_size matches 0 run schedule function leaderboard:lb/update_all_init 1s
