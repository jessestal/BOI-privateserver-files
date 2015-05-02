		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:?????479

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//??????need59863
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		$item1 = GetPlayerInfo($playerid,"item",59893)
		$monsterA = 51804
		if $item1 > 0
			SubPlayerInfo($playerid,"item",59893,1)
			OpenMask(9,$ectype_id)
			DeleteNPC(651,$ectype_id)
			$key = 63
			SetEctypeVar($ectype_id,$key,1)
			BC("screen","player",-1,"The Burial Chamber's Door is open.")
			AddMonsterByFloat($monsterA, 1, $ectype_id, 84, 122, 0)
		else
			BC("dialogbox","player",-1,"You're going to need something to teach you how to work with the lock.")
		endif
		
		
		
		

	}





