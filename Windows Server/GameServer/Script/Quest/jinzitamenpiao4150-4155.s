	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2013-1
	//		Author：胡斌涛
	//		TaskName：大金门票任务
	//		TaskID：
	//****************************************
	
	function OnTaskDone(){
		
		$today_days = GetSystemTime( "yday" )	
		SetPlayerVar(-1, 3977, $today_days)
		$rewardID = 5000 + $today_days
		SetPlayerActLog(-1,40,$rewardID)
		
	}