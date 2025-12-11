#> api:entity/mob/effect/core/duration_modifier/
#
# 
#
# @within function api:entity/mob/effect/core/give

# 効果時間がintMaxなら補正しない
    execute if data storage asset:effect {Duration: 2147483647} run return fail

# デバフとバフで分岐
    execute if data storage asset:effect {IsBadEffect: 0b} run function api:entity/mob/effect/core/duration_modifier/buff
    execute if data storage asset:effect {IsBadEffect: 1b} run function api:entity/mob/effect/core/duration_modifier/debuff
