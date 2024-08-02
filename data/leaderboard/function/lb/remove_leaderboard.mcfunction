##
 # remove_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$kill @e[type=text_display,limit=1,sort=nearest,tag=display_$(score),tag=top]
$function leaderboard:lb/update_leaderboard {score:$(score)}