	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/05/14
	//		Author�������
	//		TaskName��Quest-Item-2546.s
	//		TaskID���ͽ�����
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		$Exp = $level * $level
		$Exp = $Exp * 10
		AddPlayerInfo( -1, "exp", $Exp )
		
	}