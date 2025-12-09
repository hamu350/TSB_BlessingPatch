#> bls_patch:blessing_reset/
#
# 
#
# @within function bls_patch:blessing_reset/send_button

# score reset
    scoreboard players set @s 02.UseCount 0
    scoreboard players set @s 02.SelectCount.01 0
    scoreboard players set @s 02.SelectCount.02 0
    scoreboard players set @s 02.SelectCount.03 0
    scoreboard players set @s 02.SelectCount.04 0
    scoreboard players set @s 02.SelectCount.05 0
    scoreboard players set @s 02.Bonus.01 0
    scoreboard players set @s 02.Bonus.02 0
    scoreboard players set @s 02.Bonus.03 0
    scoreboard players set @s 02.Bonus.04 0
    scoreboard players set @s 02.Bonus.05 0

# status reset
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
    function api:modifier/attack/base/update_bonus
    function api:modifier/defense/base/update_bonus

# 再取得
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat

# vfx
    # sound
        playsound entity.arrow.hit_player master @a[distance=..16] ~ ~ ~ 1 0.5
    # particle
        particle end_rod ~ ~ ~ 3 3 3 0 500 force
