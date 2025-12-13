#> bls_patch:join
#
# 
#
# @within function core:handler/join

# ボーナス表示ボタンを送信
    function bls_patch:blessing_view/send_button
# 途中導入時用Reset
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch run function bls_patch:first_join
# Update
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch{Version: 1} run function bls_patch:update/player
# ボーナスの更新
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
