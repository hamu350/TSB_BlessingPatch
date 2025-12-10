#> asset:artifact/0002.blessing/trigger/on_trigger/get_id.m
#
# @input args
#   Trigger: int
# @within function 
#   asset:artifact/0002.blessing/trigger/on_trigger/
#   asset:artifact/0002.blessing/trigger/on_trigger/max/

# 1-9
    $execute if score @s 02.Trigger matches 1..9 run data modify storage bls_patch: Args.ID set value "0$(Trigger)"
    $execute if score @s 02.Trigger matches 1..9 run data modify storage bls_patch: Args.UpdatePath set from storage bls_patch: Blessing.0$(Trigger).UpdatePath

# 10-99
    $execute if score @s 02.Trigger matches 10..99 run data modify storage bls_patch: Args.ID set value "$(Trigger)"
    $execute if score @s 02.Trigger matches 10..99 run data modify storage bls_patch: Args.UpdatePath set from storage bls_patch: Blessing.$(Trigger).UpdatePath
