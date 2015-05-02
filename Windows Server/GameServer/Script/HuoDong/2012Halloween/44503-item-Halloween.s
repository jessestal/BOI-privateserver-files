	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-15
	//		Author:???
	//		TaskName:?????item-??????
	//		TaskID:44503-item-Halloween.s
	//
	//****************************************
	
	
//********??????***********************
function OnUseItem(){
	

  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  
  if $bag_count < 4
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif
  
  

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44503, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
	AddPlayerInfo( -1, "item", 44502, 5 )	
  AddPlayerInfo(-1, "item", 54273, 1 )
  AddPlayerInfo(-1, "item", 59839, 1 )
  $rand = RandomNumber(1,100)
  if $rand <= 10
  	AddPlayerInfo(-1, "item", 44120, 1 )
	endif
	if $rand > 10
		if $rand <= 40
  		AddPlayerInfo(-1, "item", 44121, 1 )
  	endif
 	endif
 	if $rand > 40
		if $rand <= 70
  		AddPlayerInfo(-1, "item", 44122, 1 )
  	endif
 	endif
 	if $rand > 70
 		AddPlayerInfo(-1, "item", 44123, 1 )
 	endif
 
		//BC( "screen", "player", -1, "GUID:04768000001",$TaskVar,"GUID:04768000002" )

  
	}
	
	