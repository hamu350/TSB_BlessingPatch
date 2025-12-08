#> bls_patch:blessing_reset/
#
# 
#
# @within function bls_patch:blessing_reset/send_button

# score reset
    scoreboard players set @s 02.UseCount 0
    scoreboard players set @s 02.SelectCount.01.MaxHealth 0
    scoreboard players set @s 02.SelectCount.02.MaxMP 0
    scoreboard players set @s 02.SelectCount.03.Attack 0
    scoreboard players set @s 02.SelectCount.04.Defense 0
    scoreboard players set @s 02.SelectCount.05.FallResistance 0
    scoreboard players set @s 02.SelectBonusSum.01.MaxHealthSelect 0
    scoreboard players set @s 02.SelectBonusSum.02.MaxMPSelect 0
    scoreboard players set @s 02.SelectBonusSum.05.FallResistanceSelect 0
    scoreboard players set @s 02.Bonus.01.Health 0
    scoreboard players set @s 02.Bonus.02.MP 0
    scoreboard players set @s 02.Bonus.03.Attack 0
    scoreboard players set @s 02.Bonus.04.Defense 0
    scoreboard players set @s 02.Bonus.05.FallResistance 0

# status reset
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
    function api:modifier/attack/base/update_bonus
    function api:modifier/defense/base/update_bonus
    function api:modifier/fall_resistance/update_bonus

# 再取得
    execute if score @s 02.UseCount < $BlessingUseCount Global run function asset:artifact/0002.blessing/trigger/show_trigger_chat
