   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/16
	//		Author�������
	//		TaskName��AV-Monster43084.s
	//		TaskID��ʯ��
	//****************************************
	
	function OnDead(){
		$Rand = RandomNumber( 1, 100 )
		if $Rand <= 30
			$Random = RandomNumber( 5000, 30000 )
			AddPlayerInfo( -1, "money", $Random )
		endif			
		DropMonsterItems( -1, 43084 )
		return
		
	}
		