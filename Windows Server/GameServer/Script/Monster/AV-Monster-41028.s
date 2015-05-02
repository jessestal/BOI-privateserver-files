        //****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2009/05/04
	//		Author£∫¡ıœ˛Ë¥
	//		TaskName£∫AV-Monster-41028.s
	//		TaskID£∫ÃΩœ’»ŒŒÒ
	//
	//****************************************
	
	
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 2312 )
		if $Task1 != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddMonster( 32130, 1, 188, $playerX, $playerY, 1 )
		
	}	