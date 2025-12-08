#> api:modifier/fall_resistance/update_bonus
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
    function api:modifier/fall_resistance/remove

# 差分にする
    scoreboard players operation $Diff Temporary = @s 02.BonusFallResistance
    execute store result score $RemovedAmount Temporary run data get storage api: Removed.Amount 100
    tellraw @a {"score": {"name": "$RemovedAmount", "objective": "Temporary"}}
    tellraw @a {"score": {"name": "$Diff", "objective": "Temporary"}}
    tellraw @a {"storage": "api:", "nbt": "Removed.Amount"}
    execute unless score $RemovedAmount Temporary matches -2147483648..2147483647 run scoreboard players set $RemovedAmount Temporary 0
    scoreboard players operation $Diff Temporary -= $RemovedAmount Temporary
    tellraw @a {"score": {"name": "$Diff", "objective": "Temporary"}}
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"落下耐性が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"落下耐性が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%減少した","color":"white"}]
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RemovedAmount Temporary
    scoreboard players reset $isNegative Temporary

# 適用
    data modify storage api: Argument set value {Amount:-1,UUID:[I;1,1,2,0],Operation:"multiply_base"}
    scoreboard players operation $Amount Temporary = @s 02.BonusFallResistance
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get @s 02.BonusFallResistance
    function api:modifier/fall_resistance/add
    scoreboard players reset $Amount Temporary
