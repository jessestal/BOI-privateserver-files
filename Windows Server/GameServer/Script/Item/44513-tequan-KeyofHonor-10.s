	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/30
	//		Author:???(??,??,??)
	//		TaskName:???????(??)
	//		TaskID:44513-tequan-KeyofHonor-10.s
	//
	//****************************************


function OnUseItem(){
  
  //?????????,???????0~1?270
  $is_used = GetPlayerVar(-1, 270)
  
  if $is_used == 1
     BC("screen", "player", -1, "You've already used the Glory Palace Golden Key. Cannot use it again.")
     BC("chat", "player", -1, "You've already used the Glory Palace Golden Key. Cannot use it again.")
     return
  endif
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You have to be at least LV10 to use the Glory Palace Golden Key!" )
     BC( "chat", "player", -1, "You have to be at least LV10 to use the Glory Palace Golden Key!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 9
     BC( "screen", "player", -1, "You need at least 9 empty slots in your bag before you can use tha Glory Palace Golden Key!" )
     BC( "chat", "player", -1, "You need at least 9 empty slots in your bag before you can use tha Glory Palace Golden Key!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44513, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //??????
  SetPlayerVar(-1, 270, 1)  

  //---------?????????------------
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",63771,2)
  AddPlayerInfo(-1,"item",6680,10)
  AddPlayerInfo(-1,"item",6682,10)
	AddPlayerInfo(-1,"item",6688,10)
	AddPlayerInfo(-1,"item",63357,10)
	AddPlayerInfo(-1,"item",59840,2)
	AddPlayerInfo(-1,"item",62142,1)
	AddPlayerInfo(-1,"item",21197,1)
	
	//???????:
	$gender = GetPlayerInfo(-1,"sex")
	if $gender == 0
		AddPlayerInfo(-1,"item",37018,1)
	else
		AddPlayerInfo(-1,"item",37017,1)
	endif


}