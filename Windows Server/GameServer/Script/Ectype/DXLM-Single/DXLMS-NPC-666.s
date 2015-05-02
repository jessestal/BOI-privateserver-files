		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:?????478
		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//?????

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		$key = 68
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			SetEctypeVar($ectype_id,$key,2)
			OpenMask(17,$ectype_id)
			DeleteNPC(666,-1)
			BC("screen","player",-1,"The gate to the Final Tomb has opened.")
			AddMonsterByFloat(51760, 1, $ectype_id, 240, 104, 0)
			SetEctypeVar($ectype_id,70,1)
		endif
		

	}





