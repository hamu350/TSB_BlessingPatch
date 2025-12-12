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

# status reset
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
    function api:modifier/attack/base/update_bonus
    function api:modifier/defense/base/update_bonus
    function api:modifier/fall_resistance/update_bonus
    function api:modifier/mp_regen/update_bonus
    function api:modifier/heal/update_bonus
    function api:modifier/receive_heal/update_bonus
    function api:modifier/attack/physical/update_bonus
    function api:modifier/attack/magic/update_bonus
    function api:modifier/defense/physical/update_bonus
    function api:modifier/defense/magic/update_bonus
    function bls_patch:modifier/speed/update_bonus
    function bls_patch:modifier/absorption/update_bonus
    function bls_patch:modifier/buff_duration/update_bonus
    function bls_patch:modifier/debuff_duration/update_bonus

# 再取得
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat/

# vfx
    # sound
        playsound entity.arrow.hit_player master @a[distance=..16] ~ ~ ~ 1 0.5
    # particle
        particle end_rod ~ ~ ~ 3 3 3 0 500 force
