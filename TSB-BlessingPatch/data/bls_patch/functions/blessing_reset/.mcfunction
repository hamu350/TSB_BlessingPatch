#> bls_patch:blessing_reset/
#
# 
#
# @within function bls_patch:blessing_reset/send_button

# score reset
    scoreboard players set @s 02.UseCount 0

# storage reset
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.SelectCount set from storage bls_patch: Reset
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BlsPatch.Bonus set from storage bls_patch: Reset

# status reset loop
    data modify storage bls_patch: Loop set from storage bls_patch: All
    function bls_patch:blessing_reset/loop

# 再取得
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat/

# vfx
    # sound
        playsound entity.arrow.hit_player master @a[distance=..16] ~ ~ ~ 1 0.5
    # particle
        particle end_rod ~ ~ ~ 3 3 3 0 500 force
