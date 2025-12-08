#> asset:artifact/0002.blessing/trigger/max/1
#
#
#
# @within function asset:artifact/0002.blessing/trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    scoreboard players operation $Max Temporary = $1 02.MaxUse
    scoreboard players operation $Max Temporary -= @s 02.SelectCount.01.MaxHealth
    scoreboard players operation $Max Temporary < $Remain Temporary

# 使用回数を増やす
    scoreboard players operation @s 02.UseCount += $Max Temporary

# 加算
    scoreboard players operation @s 02.SelectCount.01.MaxHealth += $Max Temporary

# 上昇量を掛けてから加算
    scoreboard players operation $Max Temporary *= $2 Const
    scoreboard players operation @s 02.Bonus.01.Health += $Max Temporary
    scoreboard players operation @s 02.SelectBonusSum.01.MaxHealth += $Max Temporary

# Update
    function api:modifier/max_health/update_bonus

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
