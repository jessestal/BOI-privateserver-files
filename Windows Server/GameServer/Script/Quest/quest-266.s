	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/07
	//		Author��������
	//		TaskName��
	//		TaskID��
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		$ise = GetServerVar(280)
		if $ise == 0
			$result = AddMonsterByFloat( 30234, 1, 457, 120, 175, 1, -1, 315 )								
			SetServerVar(280, 1)
		endif
		
  		
  }