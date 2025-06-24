# LeaderBoards Datapack 1.21.6+

A Datapack to place LeaderBoards Ranking players of your server on a given scoreboard objective.

![Fixed Leaderboard example](https://cdn.modrinth.com/data/cached_images/291cff70d6a66cfb2ff6dd5f85803a5077e65344.png)

## How to use

LeaderBoards Datapack 1.21.6+ uses the Dialog feature to provide an easy to use interface to create and edit Leaderboards

![Add Leaderboard Dialog menu](https://cdn.modrinth.com/data/zyFuJ0rz/images/160ab9ad4de6baf4b9378a0c1b5d083c1ccb6c94.png)

### Add a LeaderBoard

```
/function leaderboard:_dialog/add_leaderboard_dialog
```

- **time_mode** option will display the score as a time with hours, minutes, seconds and 1/20th of a second (ticks). It requires the given score to be a time in ticks. Extended, keeps ms even when value is bigger than 1 hour

- **reverse_order** option will reverse the order of the players in the LeaderBoard. Puts the lowest score first.

- **no_zero** option will remove players with either no score or a score that equals 0 from the LeaderBoard. This is especially useful in reverse mode to avoid having new players at the top of the LeaderBoard by default.

- **billboard** option set the billboard type that the LeaderBoard will use.  
It can be set to vertical, horizontal or fixed  
When using **fixed** billboard type, the direction is set from the head direction of the player executing the command.  
tips: you can use `/tp @s ~ ~ ~ x y`, with x and y set to the rotation if you want the leaderboard to be aligned to a specific angle

- **medal_color** option will add medal like colors the the top 3 ranks

- **always_show_closest_player** option highlights the line of the nearest player. If this player's rank is not present in the base list (cause of max_players option), it will add an extra line under the default one with the closest player score.

- **bright** option sets the text_displays with constant full brigthness

### Remove a LeaderBoard

This will remove the nearest LeaderBoard.

```
/function leaderboard:commands/remove_leaderboard
```

### Edit a LeaderBoard

This will edit the nearest leaderBoard.

```
/function leaderboard:_dialog/edit_leaderboard_dialog
```

### Uninstall

```
/function leaderboard:commands/uninstall
```

(Only keeps the storage leaderboard:namelist in case you want to re-enable it)

## Back compatibility

Versions of the datapack prior to 1.21.6 are still available but won't be updated anymore  
You can find tutorials on how to use legacy verisons on the [Github link](https://github.com/DJTgeekk/LeaderBoards_Datapack)

## Contact

Feel free to join the discord for any question, bug report or feature request  
[Discord invite](https://discord.gg/WfPRt4PkT6)



# Legacy LeaderBoard Datapack wiki v2.4.1 (1.20.4-1.21.5)

A Datapack to place LeaderBoards Ranking players of your server on a given scoreboard objective.

## News

The next Minecraft drop, version 1.21.6, will introduce some major updates for datapacks.  
**LeaderBoards Datapack** will be soon™ updated with a new interface using the dialogs  
This update will **NOT** be retro-compatible and thus v2.4.1 is the last release for versions from 1.20.4 to 1.21.5  

If you plan to update your world from 1.21.5 to 1.21.6 and beyond, you will first need to uninstall the pack. This will **remove all** existing LeaderBoards in your world.   
You will then be able to re-add them manually using the new dialog user interface (or the same commands as before)
  
This will allow the use of features added in the last versions leading to some major optimisation and code refactor  
This will also make introducing new features much easier (_so if there's something you're missing, feel free to ask in the Discord_)

## How to use

### Add a LeaderBoard

All fields with syntax <field> must be replaced by the needed content. '|' means a choice between values

```
/function leaderboard:commands/add_leaderboard {score:<Scoreboard_objective_name>,max_players:<Max>,display_name:"<Display_Name>",time_mode:<0|1|2>,reverse_order:<0|1>,no_zero:<0|1>,billboard:"<type>",medal_color:<0|1>,always_show_closest_player:<0|1>}
```

The **time_mode** option will display the score as a time with hours, minutes, seconds and 1/20th of a second (ticks). It requires the given score to be a time in ticks.  
- time_mode:1 classic display  
- time_mode:2 extended (keeps ms even when value is bigger than 1h)

The **reverse_order** option will reverse the order of the players in the LeaderBoard. Puts the lowest score first.

The **no_zero** option will remove players with either no score or a score that equals 0 from the LeaderBoard. This is especially useful in reverse mode to avoid having new players at the top of the LeaderBoard by default.

The **billboard** option set the billboard type that the LeaderBoard will use.  
It can be set to vertical, horizontal or fixed  
When using **fixed** billboard type, the direction is set from the head direction of the player executing the command.  
tips: you can use `/tp @s ~ ~ ~ x y`, with x and y set to the rotation if you want the leaderboard to be aligned to a specific angle

The **medal_color** option will add medal like colors the the top 3 ranks

The **always_show_closest_player** option highlights the line of the nearest player. If this player's rank is not present in the base list (cause of max_players option), it will add an extra line under the default one with the closest player score.

### Remove a LeaderBoard

This will remove the nearest LeaderBoard using the given score.

```
/function leaderboard:commands/remove_leaderboard {score:<Scoreboard_objective_name>}
```

### Edit a LeaderBoard

This will edit the nearest leaderBoard.

```
/function leaderboard:commands/edit_leaderboard {score:<Scoreboard_objective_name>,max_players:<Max>,display_name:<"Display_Name">,time_mode:<0|1>,reverse_order:<0|1>,no_zero:<0|1>,billboard:"<type>",medal_color:<0|1>,always_show_closest_player:<0|1>}
```

### Examples

```
/function leaderboard:commands/add_leaderboard {score:death,max_players:4,display_name:"Number of deaths",time_mode:0,reverse_order:0,no_zero:0,billboard:"vertical",medal_color:0,always_show_closest_player:0}

/function leaderboard:commands/add_leaderboard {score:death,max_players:5,display_name:"Number of deaths",time_mode:0,reverse_order:1,no_zero:0,billboard:"vertical",medal_color:1,always_show_closest_player:1}

/function leaderboard:commands/add_leaderboard {score:timer,max_players:8,display_name:"Jump Time",time_mode:1,reverse_order:1,no_zero:1,billboard:"vertical",medal_color:0,always_show_closest_player:0}

/function leaderboard:commands/remove_leaderboard {score:death}
```

### Uninstall

```
/function leaderboard:commands/uninstall
```

(Only keeps the storage leaderboard:namelist in case you want to re-enable it)
