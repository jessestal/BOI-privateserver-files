	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-1877.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnRequest(){		
		
	}
	
	
	function OnOption0(){
		$Item1 = GetPlayerInfo( -1, "item", 12640 )
		if $Item1 < 5
			BC( "dialogbox", "player", -1, "You need 5 Badges of the Brave." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12640, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 65343, 1 )
		
	}