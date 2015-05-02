	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/18
	//		Author:???
	//		TaskName:Item-52011.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		//?????????
		$mapid = GetPlayerInfo( -1, "mapid" )
		if $mapid != 208
			BC( "screen", "player", -1, "Only can be used in Garden of Gentleness." )
			return
		endif
		
		
		$result = IsCeremonyOn(2)
		if $result == 0
			BC( "screen", "map", 208, "Unable to use. No wedding ceremony is going on now." )
			return
		endif
		
		
		//??
		$result = SubPlayerInfo( -1 , "item" , 52011 , 1 )
		if $result == 0
			$x = GetPlayerInfo( -1, "mapx" )
			$y = GetPlayerInfo( -1, "mapy" )
			AddMonster( 52030 , 1 , 208 , $x , $y , 0 )
		endif
		
	}