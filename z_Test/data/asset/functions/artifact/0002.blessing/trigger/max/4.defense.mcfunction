#> asset:artifact/0002.blessing/trigger/max/4.defense
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    scoreboard players operation $Max Temporary = $4 02.MaxUse
    scoreboard players operation $Max Temporary -= @s 02.SelectCount.04.Defense
    scoreboard players operation $Max Temporary < $Remain Temporary

# 加算
    scoreboard players operation @s 02.SelectCount.04.Defense += $Max Temporary
    scoreboard players operation @s 02.Bonus.04.Defense += $Max Temporary

# Update
    function api:modifier/defense/base/update_bonus

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
