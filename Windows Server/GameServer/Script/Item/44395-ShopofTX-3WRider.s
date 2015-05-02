    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/05
	//		Author:???
	//		TaskName:44395-ShopofTX-3WRider.s
	//		TaskID:????????
	//
	//****************************************


function OnUseItem(){
	//????  

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 45
     BC( "screen", "player", -1, "You need to be at least LV45 before you can use this item!" )
     return
  endif
  
  $prestige = GetPlayerInfo( -1, "prestige", 9 )
  if $prestige < 30000
  	BC( "chat", "player", -1, "You don't have enough Reputation to use this item!" )
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
  $del_count = SubPlayerInfo( -1, "item", 44395, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  $lucky = RandomNumber(1,4)
  $item = 62128 + $lucky
  AddPlayerInfo(-1, "item", $item, 1 )
  
  	

}