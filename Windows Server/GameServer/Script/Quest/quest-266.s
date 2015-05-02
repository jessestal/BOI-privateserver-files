	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2011/07
	//		Author£ººú±óÌÎ
	//		TaskName£º
	//		TaskID£º
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		$ise = GetServerVar(280)
		if $ise == 0
			$result = AddMonsterByFloat( 30234, 1, 457, 120, 175, 1, -1, 315 )								
			SetServerVar(280, 1)
		endif
		
  		
  }