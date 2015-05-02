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

	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		DeleteMonster($ectype_id,30283)
		DeleteMonster($ectype_id,30301)
		DeleteMonster($ectype_id,30312)
		DeleteMonster($ectype_id,30304)
		SetEctypeVar($ectype_id,6,0)
		
		AddMonsterByFloat(30283,1,$ectype_id,93,146,1)

	}