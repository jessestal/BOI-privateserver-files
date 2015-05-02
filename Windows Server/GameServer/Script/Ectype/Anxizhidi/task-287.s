		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:????
		//		TaskID:????
		//
		//****************************************

	function OnTaskDone(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		OpenMask(1,$ectype_id)
		
	}

	function OnTaskAccept(){

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		DeleteMonster($ectype_id,30300)
		DeleteMonster($ectype_id,30307)
		DeleteMonster($ectype_id,30311)
		DeleteMonster($ectype_id,30309)
		DeleteMonster($ectype_id,30310)
		
		AddMonsterByFloat(30307,1,$ectype_id,116,282,1)
		AddMonsterByFloat(30309,1,$ectype_id,116,289,1)
		AddMonsterByFloat(30311,1,$ectype_id,209,282,1)
		AddMonsterByFloat(30310,1,$ectype_id,209,274,1)
		
		$key = 0
		SetEctypeVar($ectype_id,$key,0)
		$key = 1
		SetEctypeVar($ectype_id,$key,0)
		$key = 2
		SetEctypeVar($ectype_id,$key,0)

		AddMonsterByFloat(30300,1,$ectype_id,116,282,1)
		AddMonsterByFloat(30300,1,$ectype_id,209,282,1)
//BC("screen","map",$ectype_id,"GUID:03810000000")

		$count = 2
		$key = 2
		SetEctypeVar($ectype_id,$key,$count)
		StartEctypeTimer($ectype_id,2)
		
	}