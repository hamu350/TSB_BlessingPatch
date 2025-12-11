#> api:entity/mob/effect/core/duration_modifier/modifier.m
#
# @input args
#   Multiply: double
# @within 
#   function api:entity/mob/effect/core/duration_modifier/buff
#   function api:entity/mob/effect/core/duration_modifier/debuff

$execute store result storage asset:effect Duration int 1 run data get storage asset:effect Duration $(Multiply)
$execute unless data storage asset:effect {MaxDuration:2147483647} store result storage asset:effect MaxDuration int 1 run data get storage asset:effect MaxDuration $(Multiply)
