  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-Pyramid-Monster-51231.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 232 )
		$ectype_var = GetEctypeVar( -1, 4 )
		BC( "screen", "map", $ectype_ID, "I'm done with hiding. Now that you've found me, you have also found your death!" )
		PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		if $ectype_var == 0
			AddMonster( 51492, 1, $ectype_ID, $playerX, $playerY , 1 )
		else
			AddMonster( 51223, 1, $ectype_ID, $playerX, $playerY , 1 )
		endif
		return
		
	}