		//****************************************
		//
		//		Copyright��PERFECT WORLD
		//		Modified��2011-12
		//		Author��������
		//		TaskName����Ϣ֮��
		//		TaskID���ճ�
		//
		//****************************************

	function OnTaskDone(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		$nowday = GetSystemTime("yday")
		
		SetPlayerVar(-1,3859,$nowday)
		
	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		

		
	}