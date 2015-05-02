	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/29
	//		Author:???
	//		TaskName:Battle-Item-Frozen-63510.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		if $mapid != 65
			BC( "screen", "player", -1, "This item can be used only in the map of Frozen Battlefield!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 63510 , 1 )
		if  $info != 0
			return
		endif
		UseSkill( -1, 8999 , 1 )
		
	}