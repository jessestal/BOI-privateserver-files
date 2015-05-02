		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:??478	

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//??????
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			
		AddPlayerInfo($playerid,"item",59893,1)
		BC("dialogbox","player",-1,"You found some sort of illustration inside.")
		BC("screen","player",-1,"Some monsters have appeared!")
		
		$monsterA = 51751
		$monsterB = 51752
		$monsterC = 51753
		AddMonsterByFloat($monsterB, 1, $ectype_id, 92, 133, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 104, 124, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 108, 128, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 104, 133, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 110, 135, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 102, 136, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 104, 124, 0)
		AddMonsterByFloat($monsterA, 1, $ectype_id, 99, 132, 0)

		DeleteNPC(654,-1)
		SetEctypeVar($ectype_id,75,1)
		
		
		

	}





