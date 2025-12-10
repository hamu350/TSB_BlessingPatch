#> asset:artifact/0002.blessing/trigger/on_trigger/max/m
#
# @input args
#   ID: str
#   UpdatePath: str
# @within function asset:artifact/0002.blessing/trigger/on_trigger/max/

# Remain
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount

# min(Remain, 最大値 - 現在値)
    scoreboard players operation $Max Temporary = $MaxUse Temporary
    scoreboard players operation $Max Temporary -= $SelectCount Temporary
    scoreboard players operation $Max Temporary < $Remain Temporary

# 使用回数を増やす
    scoreboard players operation @s 02.UseCount += $Max Temporary

# 加算
    $execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount[$(ID)] int 1 run scoreboard players operation $SelectCount Temporary += $Max Temporary

# 上昇量を掛けてから加算
    scoreboard players operation $Max Temporary *= $Value Temporary
    $execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[$(ID)] int 1 run scoreboard players operation $Bonus Temporary += $Max Temporary

# Update
    $function $(UpdatePath)

# reset
    scoreboard players reset $Remain Temporary
    scoreboard players reset $Max Temporary
