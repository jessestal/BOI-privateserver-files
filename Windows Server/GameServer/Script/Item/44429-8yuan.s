	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You must have at least 5 spaces in your bag!" )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44429, 1 )
		//??????????
		
		if $del_count == 0
//???????+7???	44378	4
//????????	6672	2
//?????	64401	1
//????	63675	1
//?????	44430	1
			AddPlayerInfo($playerid,"item",44378,4)
			AddPlayerInfo($playerid,"item",6672,2)
			AddPlayerInfo($playerid,"item",64401,1)
			AddPlayerInfo($playerid,"item",63675,1)
			AddPlayerInfo($playerid,"item",44430,1)
		endif

		
	}
