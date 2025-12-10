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
    function bls_patch:blessing_reset/send_button
