#> asset:artifact/0002.blessing/trigger/max/2.max_mp
#
# 
#
# @within function asset:artifact/0002.blessing/trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    scoreboard players operation $Max Temporary = $2 02.MaxUse
    scoreboard players operation $Max Temporary -= @s 02.SelectCount.02.MaxMP
    scoreboard players operation $Max Temporary < $Remain Temporary

# 加算
    scoreboard players operation @s 02.SelectCount.02.MaxMP += $Max Temporary

# 上昇量を掛けてから加算
    scoreboard players operation $Max Temporary *= $4 Temporary
    scoreboard players operation @s 02.Bonus.02.MP += $Max Temporary
    scoreboard players operation @s 02.SelectBonusSum.02.MaxMPSelect += $Max Temporary

# Update
    function api:modifier/max_mp/update_bonus

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
