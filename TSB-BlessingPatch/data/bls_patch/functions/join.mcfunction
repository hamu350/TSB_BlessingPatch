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

# バージョンを設定
    execute store success storage bls_patch: Update byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Version set from storage bls_patch: Version
    execute if data storage bls_patch: {Update: 1b} run function bls_patch:update/player
    data remove storage bls_patch: Update

# ボーナスの更新
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
