#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# バージョンチェック
    function player_manager:version_check
# データパックチェック
    execute if data storage global {IsProduction:true} run function player_manager:notice_datapack_deficient/
# リソースパックチェック
    function player_manager:notice_resourcepack_different/
# 難易度チェック
    function player_manager:notice_difficulty
# 攻略数の表示
    execute if data storage global {IsProduction:true} if entity @s[tag=TutorialEnded] run function player_manager:show_progress

# BlsPatch: ボーナス表示ボタンを送信
    function bls_patch:blessing_view/send_button
# 途中導入時用Reset
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch run function bls_patch:first_join
# ボーナスの更新
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
