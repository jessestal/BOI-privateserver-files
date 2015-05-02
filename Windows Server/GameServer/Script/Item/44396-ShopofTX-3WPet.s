    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/05
	//		Author:???
	//		TaskName:44396-ShopofTX-3WPet.s
	//		TaskID:???????????
	//
	//****************************************


function OnUseItem(){
	//????  
	
	//??????????
	$is_open = GetPlayerVar(-1,243)
	if $is_open > 0
		BC( "screen", "player", -1, "You've already opened the Enchanted Pet Chest, you can't open it again!" )
		return
	endif

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 75
     BC( "screen", "player", -1, "You have to be at least LV75 before you can use that item!" )
     return
  endif
  
  $prestige = GetPlayerInfo( -1, "prestige", 9 )
  if $prestige < 30000
  	BC( "chat", "player", -1, "You don't have enough Reputation to use this item!" )
  	return
  endif

	$week = GetSystemTime("week")
	if $week < 2
     BC( "chat", "player", -1, "You can only open the Enchanted Pet Chests between Tuesday and Friday." )
     return
  endif	
	if $week > 5
     BC( "chat", "player", -1, "You can only open the Enchanted Pet Chests between Tuesday and Friday." )
     return
  endif	  
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You need at least 1 empty slot in your bag before you can use this item!" )
     return
  endif
	
	//????
	$sub_pre = SubPlayerInfo(-1,"prestige", 9, 10000)
	if $sub_pre != 0
		return
	endif
	
  //???????
  $del_count = SubPlayerInfo( -1, "item", 44396, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  $item = 62610 + $week
  AddPlayerInfo(-1, "item", $item, 1 )
  SetPlayerVar(-1,243,1)
  
  	

}