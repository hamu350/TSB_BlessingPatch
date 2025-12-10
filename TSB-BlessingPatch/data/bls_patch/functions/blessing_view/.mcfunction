#> bls_patch:blessing_view/
#
# 
#
# @within function bls_patch:blessing_view/send_button

# ループ処理
    data modify storage bls_patch: Loop set from storage bls_patch: All
    function bls_patch:blessing_view/loop

# リセット
    data remove storage bls_patch: Loop

# 再表示
    execute if predicate world_manager:area/01-00.gate_island run function bls_patch:blessing_reset/send_button
