		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:????478

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//???? - ??????59892

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		$item1 = GetPlayerInfo($playerid,"item",59892)
		$monsterA = 51804
		if $item1 > 0
			SubPlayerInfo($playerid,"item",59892,1)
			OpenMask(8,$ectype_id)
			DeleteNPC(650,$ectype_id)
			$key = 62
			SetEctypeVar($ectype_id,$key,1)
			BC("screen","player",-1,"The door to the Emerald Shrine has opened.")
			AddMonsterByFloat($monsterA, 1, $ectype_id, 147, 91, 0)
		else
			BC("dialogbox","player",-1,"Locked.\nIt seems that it needs a key of some sort to be opened.")
		endif
		

	}





