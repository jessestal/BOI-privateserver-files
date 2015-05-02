		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:???479

		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//??????

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
				

		
		$key = 67
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			BC("screen","player",-1,"The Drunken Ghost appears!")
			AddMonsterByFloat(51763, 1, $ectype_id, 300, 156, 0)
			SetEctypeVar($ectype_id,$key,1)
		else
			BC( "screen", "player", -1, "Nothing happens." )
		endif
		
		
		

	}





