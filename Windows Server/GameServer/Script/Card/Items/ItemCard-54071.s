  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54071
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$buff1 = IsExistStatus( -1 , 21603 )
		if $buff1 != 0
			return
		endif
		
		$saveid1 = GetPlayerVar(-1,3541)
		$saveid2 = GetPlayerVar(-1,3542)
		$itemmapid = GetPlayerInfo( -1, "mapid" )
		$saveid1 = $saveid1 * 255
		$saveid2 = $saveid1 + $saveid2
		if $itemmapid != $saveid2
			BC( "screen", "player", -1, "Please use the item in the quest map!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54071 , 1 )
		if $delor == 0
			$rMonster	=	GetGlobalVar(352 )
			$mapid = GetPlayerInfo( -1, "mapid")
			$x = GetPlayerInfo( -1, "mapx")
			$y = GetPlayerInfo( -1, "mapy")
			AddLevelFieldMonster(55603,226,120,86,$rMonster,1,$mapid,$x,$y,10)
		endif
		
	}