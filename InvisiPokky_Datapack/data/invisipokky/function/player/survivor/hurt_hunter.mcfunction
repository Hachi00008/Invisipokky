






advancement revoke @s only invisipokky:system/hunter/attack_survivor

#被ダメ処理
    scoreboard players remove @s Health 1
    execute if score @s Health matches ..0 run return 0

#ダウン処理
    scoreboard players set @s isDown 1