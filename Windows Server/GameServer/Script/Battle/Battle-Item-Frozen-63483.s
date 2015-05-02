	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/18
	//		Author:???
	//		TaskName:Battle-Item-Frozen-63483.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1, "mapid")
		$Ectypeid = GetEctypeID( -1, 219 )
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		if $mapid != $Ectypeid
			BC( "screen", "player", -1, "This item can be used only in the map of Frozen Plain!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 63483 , 1 )
		if  $info != 0
			return
		endif
		UseSkill( -1, 8580 , 1 )
		
	}