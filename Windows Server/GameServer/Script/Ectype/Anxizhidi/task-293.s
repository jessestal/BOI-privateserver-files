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
		
		$mposx = GetPlayerInfo($playerid,"mapposx")
		$mposy = GetPlayerInfo($playerid,"mapposy")
		
		DeleteMonster($ectype_id,30282)
		DeleteMonster($ectype_id,30280)
		
		AddMonsterByFloat(30282,1,$ectype_id,$mposx,$mposy,1)
		AddMonsterByFloat(30280,1,$ectype_id,96,202,1)
		AddMonsterByFloat(30280,1,$ectype_id,80,213,1)
		AddMonsterByFloat(30280,1,$ectype_id,91,220,1)
		AddMonsterByFloat(30280,1,$ectype_id,100,213,1)
		
		$key = 5
		SetEctypeVar($ectype_id,$key,0)


	}