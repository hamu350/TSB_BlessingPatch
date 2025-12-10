#> bls_patch:blessing_view/disable_button
#
# 
#
# @within function world_manager:area/01.god_boundaries/leave_gate_island

data modify storage api: Argument.Key set value "blessing_reset"
function api:button/disable
