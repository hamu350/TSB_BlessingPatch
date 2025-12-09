#> asset:artifact/0002.blessing/trigger/max/m
#
# @input args
#   ID: str
#   UpdatePath: str
# @within function asset:artifact/0002.blessing/trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    $scoreboard players operation $Max Temporary = $Blessing.$(ID) 02.MaxUse
    $scoreboard players operation $Max Temporary -= @s 02.SelectCount.$(ID)
    scoreboard players operation $Max Temporary < $Remain Temporary

# 使用回数を増やす
    scoreboard players operation @s 02.UseCount += $Max Temporary

# 加算
    $scoreboard players operation @s 02.SelectCount.$(ID) += $Max Temporary

# 上昇量を掛けてから加算
    $scoreboard players operation $Max Temporary *= $Blessing.$(ID) 02.Value
    $scoreboard players operation @s 02.Bonus.$(ID) += $Max Temporary

# Update
    $function $(UpdatePath)

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
