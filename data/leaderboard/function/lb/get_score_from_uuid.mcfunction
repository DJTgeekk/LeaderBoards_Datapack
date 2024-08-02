##
 # get_score_from_uuid.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:update tags set from entity @e[type=text_display,tag=leaderboard,tag=top,limit=1,nbt={UUID:[I;$(UUID_0),$(UUID_1),$(UUID_2),$(UUID_3)]}] Tags
function leaderboard:lb/find_display_tag_init with storage leaderboard:update