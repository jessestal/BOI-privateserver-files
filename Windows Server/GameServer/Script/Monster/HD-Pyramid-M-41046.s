    //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/04
	//		Author�������
	//		TaskName��HD-Pyramid-M-41046.s
	//		TaskID����Ӱ�����������
	//
	//****************************************
	
	
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 4430 )
		if $Task1 != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		AddMonster( 30175, 1, 90, $playerX, $playerY, 1 )
		
	}	