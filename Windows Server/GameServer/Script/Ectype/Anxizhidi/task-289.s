		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-12
		//		Author：胡斌涛
		//		TaskName：安息之地
		//		TaskID：冰柱子
		//
		//****************************************

	function OnTaskDone(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		DeleteMonster($ectype_id,30303)
		
	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
//冰霜结晶ID： 30303  分别刷在531地图的(209,230),(225,227),(228,211),(209,209)
		DeleteMonster($ectype_id,30303)
		DeleteMonster($ectype_id,30315)
		
		
		AddMonsterByFloat(30303,1,$ectype_id,209,230,1)
		AddMonsterByFloat(30303,1,$ectype_id,225,227,1)
		AddMonsterByFloat(30303,1,$ectype_id,228,211,1)
		AddMonsterByFloat(30303,1,$ectype_id,209,209,1)
		
		$key = 3
		SetEctypeVar($ectype_id,$key,0)
		StartEctypeTimer($ectype_id,3)
		
	}