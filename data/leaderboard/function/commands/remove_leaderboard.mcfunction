##
 # remove_leaderboard.mcfunction
 # 
 #
 # Created by DJT3.
##
$kill @e[type=text_display,limit=1,sort=nearest,nbt={data:{score:$(score)}},tag=top]
$kill @e[type=text_display,nbt={data:{score:$(score)}},tag=!top]