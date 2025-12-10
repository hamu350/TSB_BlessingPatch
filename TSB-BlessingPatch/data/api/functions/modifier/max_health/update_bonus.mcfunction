#> api:modifier/max_health/update_bonus
#
# 祝福による補正を更新する
#
# @api

#> Diff
# @private
    #declare score_holder $Diff
    #declare score_holder $RemovedAmount
    #declare score_holder $isNegative

# 古いのをremove
    data modify storage api: Argument.UUID set value [I;1,1,2,0]
    function api:modifier/max_health/remove

# 差分にする
    function oh_my_dat:please
    execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[01]
    scoreboard players operation $Diff Temporary = $Bonus Temporary
    scoreboard players operation $Diff Temporary += $BonusHealth Global
    execute store result score $RemovedAmount Temporary run data get storage api: Removed.Amount 1
    execute unless score $RemovedAmount Temporary matches -2147483648..2147483647 run scoreboard players set $RemovedAmount Temporary 0
    scoreboard players operation $Diff Temporary -= $RemovedAmount Temporary
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"最大体力が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"減少した","color":"white"}]

# 適用
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2,0],Operation:"add"}
    execute store result storage api: Argument.Amount double 1 run scoreboard players operation $Bonus Temporary += $BonusHealth Global
    function api:modifier/max_health/add

# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RemovedAmount Temporary
    scoreboard players reset $isNegative Temporary
    scoreboard players reset $Bonus Temporary
