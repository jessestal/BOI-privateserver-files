		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-12
		//		Author：胡斌涛
		//		TaskName：安息之地
		//		TaskID：
		//
		//****************************************

	function OnTaskDone(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		OpenMask(2,$ectype_id)
	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		DeleteMonster($ectype_id,30284)
		
		AddMonsterByFloat(30284,1,$ectype_id,157,145,1)
		
		
	}