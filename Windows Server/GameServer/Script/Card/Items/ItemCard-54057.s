  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:ItemCard-54057
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$buff1 = IsExistStatus( -1 , 21601 )
		if $buff1 != 0
			return
		endif
		
		$saveid1 = GetPlayerVar(-1,3537)
		$saveid2 = GetPlayerVar(-1,3540)
		$itemmapid = GetPlayerInfo( -1, "mapid" )
		$saveid1 = $saveid1 * 255
		$saveid2 = $saveid1 + $saveid2
		if $itemmapid != $saveid2
			BC( "screen", "player", -1, "Please use the item in the quest map!")
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54057 , 1 )
		if $delor == 0
			$rMonster	=	GetGlobalVar(353 )
			$mapid = GetPlayerInfo( -1, "mapid")
			$x = GetPlayerInfo( -1, "mapx")
			$y = GetPlayerInfo( -1, "mapy")
			AddLevelMonster(55601,226,$rMonster,3,$mapid,$x,$y,10)
		endif
		
	}