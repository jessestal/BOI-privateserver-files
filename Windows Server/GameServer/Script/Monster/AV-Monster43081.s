   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/19
	//		Author�������
	//		TaskName��AV-Monster43081.s
	//		TaskID����������ʯ
	//****************************************
	
	function OnDead(){
		$ItemID = 12478
		$ItemNum = 1
		
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item > 0
			return
		endif
		
		AddPlayerInfo( -1, "item", $ItemID, $ItemNum )		
	}
		