##ゲーム中のプレイヤーの処理
    function invisipokky:player/xp_bar

    execute if score @s isDown matches 1 run scoreboard players add @s Tick_Timer_Health 1
    execute if score @s isDown matches 1 if score @s Tick_Timer_Health matches 20.. run function invisipokky:player/playing/tick_remove
    execute if score @s isDown matches 0 run scoreboard players reset @s Tick_Timer_Health