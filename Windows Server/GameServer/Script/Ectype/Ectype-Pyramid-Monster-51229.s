  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-Pyramid-Monster-51229.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 232 )	
		
		$ectype_type = GetEctypeVar( -1, 114 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 114, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 114 )
		$ectype_type = 50 - $ectype_type
		if $ectype_type > 0
			BC( "screen", "map", $ectype_ID, "There are ",$ectype_type," Witches remaining." )
		endif
				
		$ectype_var = GetEctypeVar( -1, 4 )
		$ectype_type = GetEctypeVar( -1, 114 )
		if $ectype_type >= 50
			BC( "screen", "map", $ectype_ID, "Who dares to kill my concubines!? You will die!" )
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$playerX = GetPlayerInfo( -1, "mapx" )
			$playerY = GetPlayerInfo( -1, "mapy" )
			if $ectype_var == 0
				AddMonster( 51493, 1, $ectype_ID, $playerX, $playerY , 1 )
			else
				AddMonster( 51224, 1, $ectype_ID, $playerX, $playerY , 1 )
			endif
			return
		endif	
		
	}