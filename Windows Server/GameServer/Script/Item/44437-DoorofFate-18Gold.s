	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8-22
	//		Author:???
	//		TaskName:44437-DoorofFate-18Gold.s
	//		TaskID:??????18??????
	//
	//****************************************
	
function OnUseItem(){

	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 4
	     BC( "chat", "player", -1, "You don't have enough space in your bag!" )
	     return
	  endif	
	  
	  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your materials bag!" )
	     return
	  endif		  	

	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44437, 1 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????-----------
  	//????? 12417 18   ??????  63722 10   ????  4682 4    ????  44439 1

		AddPlayerInfo(-1, "item", 12417, 18)
		AddPlayerInfo(-1, "item", 63722, 10)	
		AddPlayerInfo(-1, "item", 4682, 4)
		
		//???????????,??????? ????(??????)
		$Have = GetPlayerVar(-1,241)
		if $Have == 0
			AddPlayerInfo(-1, "item", 44439, 1)	
		endif		
		
		//???? ????????? ?????
		$Have1 = GetPlayerVar(-1, 3319)
		if $Have1 < 4
			AddPlayerInfo(-1,"item",64479,1)
		endif

}