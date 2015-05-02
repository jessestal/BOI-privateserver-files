	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/09/014
	//		Author：杨海勇
	//		TaskName：Quest-3520.s
	//		TaskID：副本任务
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		$today = GetSystemTime( "yday" )
		SetPlayerVar( -1 , 3754 , $today )
		$time = GetPlayerVar(-1,3569)
		if $time < 2
			$time += 1
			SetPlayerVar(-1,3569,$time)
			if $time == 2
				OpenUI(-1,1)
			endif
		endif
		
	}