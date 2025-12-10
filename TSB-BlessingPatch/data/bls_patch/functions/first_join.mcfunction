#> bls_patch:first_join
#
# 
#
# @within function core:handler/first_join

# 初回ログイン時メッセージ
    function bls_patch:message

# bls_patch reset
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount set from storage bls_patch: Reset
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus set from storage bls_patch: Reset
