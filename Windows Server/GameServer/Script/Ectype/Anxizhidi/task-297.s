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
		
		DeleteMonster($ectype_id,30285)
		DeleteMonster($ectype_id,30302)
		DeleteMonster($ectype_id,30308)
		DeleteMonster($ectype_id,30305)
		DeleteMonster($ectype_id,30286)
		DeleteMonster($ectype_id,30306)
		SetEctypeVar($ectype_id,7,0)
		SetEctypeVar($ectype_id,8,0)
		SetEctypeVar($ectype_id,9,100)
		
		AddMonsterByFloat(30285,1,$ectype_id,211,58,1)

	} 