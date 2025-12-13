#> bls_patch:update/
#
# 
#
# @within function bls_patch:load

# バージョンを設定
    data modify storage bls_patch: Version set value 1

# register
    function asset:artifact/0002.blessing/trigger/register
