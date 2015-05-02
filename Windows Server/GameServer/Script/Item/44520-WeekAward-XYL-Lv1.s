	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/02
	//		Author:???
	//		TaskName:44520-WeekAward-JLJT-Lv3.s
	//		TaskID:???????3?-????
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
  
	$del_count1 = SubPlayerInfo( -1, "item", 44518, 1 )
	if $del_count1 != 0
		BC("screen","player",-1,"The LV1 Adventure Reward Pack (Quartz Coin) and LV1 Adventure Reward Pack (Strong) are required to use together.")
		return
	endif
  
  //???????
  $del_count = SubPlayerInfo( -1, "item", 44520, 1 )
  //??????????
  if $del_count != 0
     return
  endif 
  
	
  AddPlayerInfo(-1,"item",59838,3)  
  AddPlayerInfo(-1,"item",9,1)
	
	$luck = RandomNumber(1,100)
	if $luck < 60
		AddPlayerInfo(-1,"item",9,2)
	endif


}         