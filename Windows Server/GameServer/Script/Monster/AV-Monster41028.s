   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/16
	//		Author�������
	//		TaskName��AV-Monster41028.s
	//		TaskID�������߲ɼ���ħ��ĺ��ǣ�
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
		