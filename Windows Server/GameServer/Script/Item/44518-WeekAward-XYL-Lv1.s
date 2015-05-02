	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/02
	//		Author:???
	//		TaskName:44518-WeekAward-XYL-Lv1.s
	//		TaskID:???????1?-???
	//
	//****************************************


function OnUseItem(){


  
  //????,??100?????
  $lv = GetPlayerInfo(-1, "level")
  if $lv < 100
     BC("screen", "player", -1, "You have to be at least LV100 to use this item!")
     return
  endif
  //??????
  $bag_count = GetPlayerInfo(-1, "nullitem", 0)
  if $bag_count < 1
     BC("screen", "player", -1, "You don't have enough space in your bag to use that!")
     BC("chat", "player", -1, "You don't have enough space in your bag to use that!")
     return
  endif
  
  //????????
  $bag_count_1 = GetPlayerInfo(-1, "nullitem", 1)
  if $bag_count_1 < 1
     BC("screen", "player", -1, "You don't have enough space in your materials bag to use that!")
     BC("chat", "player", -1, "You don't have enough space in your materials bag to use that!")
     return
  endif
 
	$del_count1 = SubPlayerInfo( -1, "item", 44520, 1 )
	if $del_count1 != 0
		BC("screen","player",-1,"The LV1 Adventure Reward Pack (Quartz Coin) and LV1 Adventure Reward Pack (Strong) are required to use together.")
		return
	endif
  
  //???????
  $del_count = SubPlayerInfo( -1, "item", 44518, 1 )
  //??????????
  if $del_count != 0
     return
  endif
  
  
//  $luck1 = RandomNumber(2, 10001 )
//	
//	if $luck1 <= 5001
//		AddPlayerInfo(-1,"item",9,1)
//	else
//		AddPlayerInfo(-1,"item",59838,1)
//	endif
	
	AddPlayerInfo(-1,"item",9,4)
//  AddPlayerInfo(-1,"item",59838,2)  
	
	$luck = RandomNumber(1,100)
	if $luck < 60
		AddPlayerInfo(-1,"item",9,2)
	endif


}         