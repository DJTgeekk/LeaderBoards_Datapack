##
 # get_score_from_display.mcfunction
 # 
 #
 # Created by DJT3.
##
data modify storage leaderboard:update tags set from entity @s Tags
function leaderboard:lb/find_display_tag_init with storage leaderboard:update