    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/17
	//		Author:???
	//		TaskName:44476-PresentofMidAutumn.s
	//		TaskID:2012????
	//
	//****************************************


function OnUseItem(){
	//????  ??????? 60014  30%  ????? 59838 40% ?? 9  30%

  //??????
//  $level = GetPlayerInfo( -1, "level" )
//  if $level < 40
//     BC( "screen", "player", -1, "GUID:04784000000" )
//     return
//  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use this item!" )
     return
  endif

  $bag_count_1 = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count_1 < 1
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44476, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //????
	//  PlayEffect(-1, "" )

  //??????  
  $rand = RandomNumber(1,100)
  if $rand <= 30
  	AddPlayerInfo(-1, "item", 9, 2 )
	endif
	if $rand > 30
		if $rand <= 70
  		AddPlayerInfo(-1, "item", 59838, 2 )
  	endif
 	endif
 	if $rand > 70
 		AddPlayerInfo(-1, "item", 60014, 2 )
 	endif
 	
 	//?? ??
 	$pet_count = GetGlobalVar(80 ) 	
  $n = RandomNumber(1, 10000 )
  //????????
  if $n <= 21
  //??????????,???????????,?????
  	if $pet_count >= 1
       return
    else
    	#name = GetPlayerInfo( -1, "name" )
    	//???????id ???
      AddPlayerInfo( -1, "item", 62134, 1 )
      BC( "screen", "player", -1, "Congratulations! You have acquired a Mid-Autumn Jaden Rabbit!" )
      BC( "screen", "server", -1, "Player:",#name," has captured the Mid-Autumn Jaden Rabbit!!" )
      
      $pet_count = $pet_count + 1
      SetGlobalVar(80, $pet_count)
    endif
  endif 	

}