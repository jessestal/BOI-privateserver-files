	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/02
	//		Author:???
	//		TaskName:44519-WeekAward-HJHA-Lv2.s
	//		TaskID:???????2?-????
	//
	//****************************************


function OnUseItem(){


  
  //????,??100?????
  $field = GetFieldLevel(-1)
  if $field < 20
     BC("screen", "player", -1, "You have to be at least Exalted LV20 to use this item!")
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
  $del_count = SubPlayerInfo( -1, "item", 44519, 1 )
  //??????????
  if $del_count != 0
     return
  endif  
  
  AddPlayerInfo(-1,"item",9,4)
  AddPlayerInfo(-1,"item",59838,3)  
  
  $luck1 = RandomNumber(2, 10001 )
	
	if $luck1 <= 5001
		AddPlayerInfo(-1,"item",9,1)
		BC("screen", "player", -1, "You have acquired the Major Fortified Crystal as a bonus reward!")
	endif
	
	if $luck1 > 5001
		if $luck1 <= 9001
			AddPlayerInfo(-1,"item",59838,1)
			BC("screen", "player", -1, "You have acquired a LV2 Gem Coin as a bonus reward!")
		endif
	endif
	
	if $luck1 > 9001
		if $luck1 <= 9301
			AddPlayerInfo(-1,"item",59839,1)
			BC("screen", "player", -1, "You have acquired a LV3 Gem Coin as a bonus reward!")
		endif
	endif
	


}         