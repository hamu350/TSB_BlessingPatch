#> bls_patch:blessing_reset/send_button
#
# 
#
# @within  world_manager:01-00.gate_island

data modify storage api: Argument.Label set value '"祝福バフを見る"'
data modify storage api: Argument.Key set value "blessing_view"
data modify storage api: Argument.Listener set value "bls_patch:blessing_view/"
function api:button/send
