#> bls_patch:modifier/speed/update_bonus.m
#
# @input args
#   Amount: double
# @within function bls_patch:modifier/speed/update_bonus

$attribute @s generic.movement_speed modifier add 1-0-1-0-200000000 "BlessingBonus" $(Amount) multiply_base
