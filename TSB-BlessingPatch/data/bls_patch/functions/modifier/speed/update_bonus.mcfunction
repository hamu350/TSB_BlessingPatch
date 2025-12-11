#> bls_patch:modifier/speed/update_bonus
#
# 
#
# @api

#> Diff
# @private
    #declare score_holder $Bonus
    #declare score_holder $Diff
    #declare score_holder $RemovedAmount
    #declare score_holder $isNegative

# 古いのを取得してからremove
    execute store result score $RemovedAmount Temporary run attribute @s generic.movement_speed modifier value get 1-0-1-0-200000000
    attribute @s generic.movement_speed modifier remove 1-0-1-0-200000000
    execute unless score $RemovedAmount Temporary matches -2147483648..2147483647 run scoreboard players set $RemovedAmount Temporary 0

# 差分にする
    function oh_my_dat:please
    execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[13]
    scoreboard players operation $Diff Temporary = $Bonus Temporary
    scoreboard players operation $Diff Temporary -= $RemovedAmount Temporary
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"移動速度が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"移動速度が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%減少した","color":"white"}]

# 適用
    data modify storage api: Argument set value {Amount:-1}
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $Bonus Temporary
    function bls_patch:modifier/speed/update_bonus.m with storage api: Argument
    data remove storage api: Argument
# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RemovedAmount Temporary
    scoreboard players reset $isNegative Temporary
    scoreboard players reset $Bonus Temporary
