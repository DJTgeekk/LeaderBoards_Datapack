##
 # update_line.mcfunction
 # 
 #
 # Created by DJT3.
##
$execute if entity @s[nbt={data:{time_mode:0}}] at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value)","color":"red"}]}

#Time
# XH Xm Xs XXms
$execute if entity @s[nbt={data:{time_mode:2}}] if score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1).$(value_0)s","color":"red"}]}
# XH Xm Xs 0Xms
$execute if entity @s[nbt={data:{time_mode:2}}] if score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1).0$(value_0)s","color":"red"}]}

# XH Xm
$execute if entity @s[nbt={data:{time_mode:1}}] if score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1)s","color":"red"}]}
# XH Xm
$execute if entity @s[nbt={data:{time_mode:1}}] if score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_3)h $(value_2)m $(value_1)s","color":"red"}]}

# Xm Xs XXms
$execute unless entity @s[nbt={data:{time_mode:0}}] if score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_2)m $(value_1).$(value_0)s","color":"red"}]}
# Xm Xs 0Xms
$execute unless entity @s[nbt={data:{time_mode:0}}] if score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_2)m $(value_1).0$(value_0)s","color":"red"}]}

# Xs XXms
$execute unless entity @s[nbt={data:{time_mode:0}}] unless score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 unless score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_1).$(value_0)s","color":"red"}]}
# Xs 0Xms
$execute unless entity @s[nbt={data:{time_mode:0}}] unless score lb_temp value_2 >= dummy dummy_1 unless score lb_temp value_3 >= dummy dummy_1 if score dummy dummy_5 >= lb_temp value_0 at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] text set value {"text":"","extra":[{"text":"#$(rank)","color":"$(color)"}," ",{"text":"$(name)","bold":$(bold_name)}," "," : "," ",{"text":"$(value_1).0$(value_0)s","color":"red"}]}
# background
$execute at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] background set value -1777069036
$execute at @s if entity @e[distance=$(sep_min)..$(sep_max),type=text_display,nbt={data:{score:$(score)}},tag=!top,tag=$(lines)] run data modify entity @e[type=minecraft:text_display,tag=!top,limit=1,sort=nearest,tag=$(lines)] default_background set value $(close_background)
