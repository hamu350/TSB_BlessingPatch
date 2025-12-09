#> asset:artifact/0002.blessing/trigger/show_trigger_chat
#
#
#
# @within function asset:artifact/0002.blessing/trigger/*

# 出力
    scoreboard players operation $Remain Temporary = $BlessingUseCount Global
    scoreboard players operation $Remain Temporary -= @s 02.UseCount
    execute if score $Remain Temporary matches ..1 run tellraw @s {"text":"能力ボーナスを一つ選んでください"}
    execute unless score $Remain Temporary matches ..1 run tellraw @s [{"text":"能力ボーナスを一つ選んでください 残り祝福："}, {"score": {"name": "$Remain", "objective": "Temporary"}}]

# 選択トリガー
    scoreboard players reset @s 02.Trigger
    scoreboard players enable @s 02.Trigger

# score check
    execute unless score @s 02.SelectCount.01 matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.01 0
    execute unless score @s 02.SelectCount.02 matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.02 0
    execute unless score @s 02.SelectCount.03 matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.03 0
    execute unless score @s 02.SelectCount.04 matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.04 0
    execute unless score @s 02.SelectCount.05 matches -2147483648..2147483647 run scoreboard players set @s 02.SelectCount.05 0
    execute unless score @s 02.Bonus.01 matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.01 0
    execute unless score @s 02.Bonus.02 matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.02 0
    execute unless score @s 02.Bonus.03 matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.03 0
    execute unless score @s 02.Bonus.04 matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.04 0
    execute unless score @s 02.Bonus.05 matches -2147483648..2147483647 run scoreboard players set @s 02.Bonus.05 0

# 出力
    # マクロでテキストデータを入力
    # 01: MaxHealth
        data modify storage bls_patch: Args.ID set value "01"
        function asset:artifact/0002.blessing/trigger/show_trigger_chat.m with storage bls_patch: Args
    # 02: MaxMP
        data modify storage bls_patch: Args.ID set value "02"
        function asset:artifact/0002.blessing/trigger/show_trigger_chat.m with storage bls_patch: Args
    # 03: Attack
        data modify storage bls_patch: Args.ID set value "03"
        function asset:artifact/0002.blessing/trigger/show_trigger_chat.m with storage bls_patch: Args
    # 04: Defense
        data modify storage bls_patch: Args.ID set value "04"
        function asset:artifact/0002.blessing/trigger/show_trigger_chat.m with storage bls_patch: Args
    # 05: FallResistance
        data modify storage bls_patch: Args.ID set value "05"
        function asset:artifact/0002.blessing/trigger/show_trigger_chat.m with storage bls_patch: Args

    # tellraw
        tellraw @s {"translate": "%1$s\n%2$s\n%3$s\n%4$s\n%5$s", "with": [{"storage":"bls_patch:","nbt":"Text.Message.01","interpret": true}, {"storage":"bls_patch:","nbt":"Text.Message.02","interpret": true}, {"storage":"bls_patch:","nbt":"Text.Message.03","interpret": true}, {"storage":"bls_patch:","nbt":"Text.Message.04","interpret": true}, {"storage":"bls_patch:","nbt":"Text.Message.05","interpret": true}]}

# reset
    data remove storage bls_patch: Args
    data remove storage bls_patch: Text
    scoreboard players reset $Remain Temporary

# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t
