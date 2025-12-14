#> bls_patch:modifier/buff_duration/update_bonus
#
# 
#
# @api

#> Diff
# @private
    #declare score_holder $Bonus
    #declare score_holder $Diff
    #declare score_holder $BeforeAmount
    #declare score_holder $isNegative

# 差分にする
    function oh_my_dat:please
    execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[15]
    execute store result score $BeforeAmount Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.BeforeBuffDuration
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.BeforeBuffDuration set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[15]
    execute unless score $BeforeAmount Temporary matches -2147483648..2147483647 run scoreboard players set $BeforeAmount Temporary 0
    scoreboard players operation $Diff Temporary = $Bonus Temporary
    scoreboard players operation $Diff Temporary -= $BeforeAmount Temporary
# 出力
    execute store result score $isNegative Temporary if score $Diff Temporary matches ..-1
    execute if score $isNegative Temporary matches 1 run scoreboard players operation $Diff Temporary *= $-1 Const
    execute if score $isNegative Temporary matches 0 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"バフ効果時間延長が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%増加した","color":"white"}]
    execute if score $isNegative Temporary matches 1 if score $Diff Temporary matches 1.. run tellraw @s [{"text":"バフ効果時間延長が","color":"white"},{"score":{"name":"$Diff","objective":"Temporary"},"color":"aqua"},{"text":"%減少した","color":"white"}]

# リセット
    scoreboard players reset $Diff Temporary
    scoreboard players reset $BeforeAmount Temporary
    scoreboard players reset $isNegative Temporary
    scoreboard players reset $Bonus Temporary
