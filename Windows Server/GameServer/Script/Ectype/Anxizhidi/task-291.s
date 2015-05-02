		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-12
		//		Author：胡斌涛
		//		TaskName：安息之地
		//		TaskID：60怪
		//
		//****************************************

	function OnTaskDone(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()

	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		DeleteMonster($ectype_id,30281)
		$mapX = 206
		$mapY = 158
		AddMonsterByFloat(30281,1,$ectype_id,$mapX,$mapY,1)
		$key = 4
		SetEctypeVar($ectype_id,$key,0)
		

	}