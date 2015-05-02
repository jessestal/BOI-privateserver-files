   	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/16
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Monster41028.s
	//		TaskID£ºÃÔÎí¶´¿ß²É¼¯£¨Ä§ÎïµÄº¡¹Ç£©
	//****************************************
	
	function OnDead(){
	
		DropMonsterItems( -1, 41028 )
		$Task1 = IsTaskAccept( -1, 2312 )
		if $Task1 != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddMonster( 32130, 1, 188, $playerX, $playerY, 1 )
		
	}
		