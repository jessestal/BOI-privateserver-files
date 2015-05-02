	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/02
	//		Author:???
	//		TaskName:44553-WeekAward-Compensate.s
	//		TaskID:????????
	//
	//****************************************


function OnUseItem(){


  
  //????,??100?????
  $lv = GetPlayerInfo(-1, "level")
  if $lv < 130
     BC("screen", "player", -1, "You have to be at least LV130 to use this item!")
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
  
  //???????
  $del_count = SubPlayerInfo( -1, "item", 44553, 1 )
  //??????????
  if $del_count != 0
     return
  endif
  
	AddPlayerInfo(-1,"item",59838,3)	
	AddPlayerInfo(-1,"item",9,6) 

}         