#> api:entity/mob/effect/core/duration_modifier/debuff
#
# 
#
# @within function api:entity/mob/effect/core/duration_modifier/

# 補正値を取得
    function oh_my_dat:please
    execute store result score $Bonus Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus[16] -1
    execute store result storage api: Argument.Multiply double 0.01 run scoreboard players add $Bonus Temporary 100
    function api:entity/mob/effect/core/duration_modifier/modifier.m with storage api: Argument
    # Reset
        data remove storage api: Argument.Multiply
        scoreboard players reset $Bonus Temporary
