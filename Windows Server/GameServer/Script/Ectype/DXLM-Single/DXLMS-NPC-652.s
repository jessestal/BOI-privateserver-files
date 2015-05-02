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
		//???????-59894	????

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			
		AddPlayerInfo($playerid,"item",59894,1)
		BC("dialogbox","player",-1,"Obtained Feather of Tranquility")
		BC("screen","player",-1,"Some monsters have appeared!")
		
		$monsterA = 51751
		$monsterB = 51752
		$monsterC = 51753
		AddMonsterByFloat($monsterB, 1, $ectype_id, 140, 74, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 135, 79, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 139, 81, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 143, 81, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 144, 79, 0)
		
		AddMonsterByFloat($monsterA, 1, $ectype_id, 135, 90, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 135, 96, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 138, 101, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 141, 103, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 145, 101, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 147, 96, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 147, 90, 0)
		
		AddMonsterByFloat($monsterB, 1, $ectype_id, 124, 44, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 120, 49, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 124, 53, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 130, 49, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 143, 49, 0)
		
		DeleteNPC(652,-1)
		SetEctypeVar($ectype_id,74,1)
		

	}





