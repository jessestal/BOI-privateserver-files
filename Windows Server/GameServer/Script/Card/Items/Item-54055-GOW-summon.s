  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：Item-54055-GOW-summon.s
	//		TaskID：水神的请求-驱逐心魔
	//
	//****************************************
	
	function OnDead(){
		
		$buff1 = IsExistStatus( -1 , 21601 )
		if $buff1 != 0
			return
		endif
		
		$delor = SubPlayerInfo( -1 , "item", 54055 , 1 )
		if $delor != 0
			return
		endif
		
		$rKind	=	GetServerVar(347 )
		$rHard2	=	GetServerVar(349 )
		
		if $rKind == 4
			$rMonster	=	GetServerVar(344 )
			$mapid = GetPlayerInfo( -1, "mapid")
			$x = GetPlayerInfo( -1, "mapx")
			$y = GetPlayerInfo( -1, "mapy")
			AddLevelMonster(55601,226,$rMonster,$rHard2,$mapid,$x,$y,10)
		endif
		
	}