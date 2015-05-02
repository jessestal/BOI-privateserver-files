    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/17
	//		Author:???
	//		TaskName:44477-PresentofNationalDay.s
	//		TaskID:2012??????
	//
	//****************************************


function OnUseItem(){
	//???? ?????(??)   50%  ?????888 59557 20% ?? 9  30%

  //??????
//  $level = GetPlayerInfo( -1, "level" )
//  if $level < 40
//     BC( "screen", "player", -1, "GUID:04785000000" )
//     return
//  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You need at least 1 empty slot in your bag before you can use this item!" )
     return
  endif

  $bag_count_1 = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count_1 < 1
     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44477, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //????,??????Buff
	//  PlayEffect(-1, "" )
  //??????
  
  $rand = RandomNumber(1,100)
  if $rand <= 50
  	AddPlayerInfo(-1, "item", 4943, 1 )
	endif
	if $rand > 50
		if $rand <= 70
  		AddPlayerInfo(-1, "item", 59557, 1 )
  	endif
 	endif
 	if $rand > 70
 		AddPlayerInfo(-1, "item", 9, 1 )
 	endif

}