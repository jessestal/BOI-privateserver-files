   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/16
	//		Author�������
	//		TaskName��AV-Monster41024.s
	//		TaskID�������߲ɼ���ľͰ��
	//****************************************
	
	function OnDead(){
		$Status01 = IsExistStatus( -1, 10573 )
		//-----����ħ��֮��״̬ID------
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		//-----��ȡ�������------
		$Rond = RandomNumber( 1, 5 )
		
		if $Status01 != 0
			//û��״̬
			DropMonsterItems( -1, 41024 )
			return
			//----����һ��ɼ�Ʒ-----
		endif
		
		if $Rond <= 3
			AddMonster( 32113, 1, 188, $playerX, $playerY, 1, -1 )
			return
			//----�ٻ����Ȼ���-----
		else
			DropMonsterItems( -1, 41024 )
			return
			//----����һ��ɼ�Ʒ-----
		endif
	}
		