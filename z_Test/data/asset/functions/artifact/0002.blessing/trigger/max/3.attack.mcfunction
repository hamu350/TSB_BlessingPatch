#> asset:artifact/0002.blessing/trigger/max/3.attack
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    scoreboard players operation $Max Temporary = $3 02.MaxUse
    scoreboard players operation $Max Temporary -= @s 02.SelectCount.03.Attack
    scoreboard players operation $Max Temporary < $Remain Temporary

# 加算
    scoreboard players operation @s 02.SelectCount.03.Attack += $Max Temporary
    scoreboard players operation @s 02.Bonus.03.Attack += $Max Temporary

# Update
    function api:modifier/attack/base/update_bonus

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
