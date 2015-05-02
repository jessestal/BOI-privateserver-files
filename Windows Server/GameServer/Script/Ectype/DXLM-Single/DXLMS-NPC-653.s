		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:????479

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//???????
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			
		AddPlayerInfo($playerid,"item",59892,1)
		BC("dialogbox","player",-1,"You get a Water Charm")
		BC("screen","player",-1,"A few monsters have appeared.")
		
		$monsterA = 51754
		$monsterB = 51755
		$monsterC = 51756
		AddMonsterByFloat($monsterA, 1, $ectype_id, 137, 98, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 143, 98, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 136, 76, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 139, 76, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 143, 76, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 147, 78, 0)
		
		AddMonsterByFloat($monsterA, 1, $ectype_id, 136, 51, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 130, 53, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 119, 44, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 110, 43, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 54, 0)
		
		DeleteNPC(653,-1)
		SetEctypeVar($ectype_id,79,1)
		

	}





