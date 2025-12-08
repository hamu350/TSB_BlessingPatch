#> bls_patch:blessing_reset/send_button
#
# 
#
# @within  world_manager:01-00.gate_island

tellraw @s {"text":""}

data modify storage api: Argument.Label set value '"祝福バフをリセットする"'
data modify storage api: Argument.Key set value "blessing_reset"
data modify storage api: Argument.Listener set value "bls_patch:blessing_reset/"
function api:button/send
