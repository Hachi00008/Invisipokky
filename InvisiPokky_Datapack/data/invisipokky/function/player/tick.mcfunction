






   effect give @s saturation infinite 255 true
   effect give @s resistance infinite 4 true

   scoreboard players set @s Max_Timer_Health 100

#待機中の処理
   execute if data storage invisipokky:game {game_state:"none"} run function invisipokky:player/waiting/_

#ゲーム中の処理
   execute if data storage invisipokky:game {game_state:"playing"} run function invisipokky:player/playing/_


   function invisipokky:player/enderchest/_

   clear @s *[custom_data={"no_open":true}]
   advancement revoke @s only invisipokky:system/player_tick