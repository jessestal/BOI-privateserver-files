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
			BC( "screen", "player", -1, "Nothing happens." )
			return
		endif
		if $getvar == 1
			SetEctypeVar($ectype_id,$key,2)
			BC( "screen", "player", -1, "An evil spirit has been released!" )
			BC( "dialogbox", "player", -1, "An evil spirit has been released!" )
		else
			BC( "screen", "player", -1, "Nothing happens." )
		endif

		
		
		
		

	}





