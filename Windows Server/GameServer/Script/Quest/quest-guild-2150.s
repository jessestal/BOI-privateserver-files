	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：
	//		Author：
	//		TaskName：
	//		TaskID：
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		$today = GetSystemTime( "yday" )
		
		//完成对话任务设置变量
		SetPlayerVar( -1 , "4063" , 100 )
		//设置最后一次公会任务的日期
		SetPlayerVar( -1 , 4061 , $today )
		
		
	}
