	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2013-1
	//		Author��������
	//		TaskName�������Ʊ����
	//		TaskID��
	//****************************************
	
	function OnTaskDone(){
		
		$today_days = GetSystemTime( "yday" )	
		SetPlayerVar(-1, 3977, $today_days)
		$rewardID = 5000 + $today_days
		SetPlayerActLog(-1,40,$rewardID)
		
	}