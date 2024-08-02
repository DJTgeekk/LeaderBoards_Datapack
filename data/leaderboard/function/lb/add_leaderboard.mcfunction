##
 # add_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$data modify storage leaderboard:all_leaderboard_scores score append value $(score)
$scoreboard objectives add display_$(score)_maxlines dummy
$scoreboard players set lb_temp display_$(score)_maxlines $(max_players)
$summon text_display ~ ~2.5 ~ {Tags:["display_$(score)","top","leaderboard"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1.3f,1.3f,1.3f]},text:'{"text":"$(display_name)"}'}
$data modify storage leaderboard:line score set value $(score)
function leaderboard:lb/update_leaderboard with storage leaderboard:line