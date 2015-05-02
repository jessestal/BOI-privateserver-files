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
		//?????
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		BC("screen","player",-1,"What is that voice?")
		BC("messagebox","player",-1,"Bang!")
		
		DeleteNPC(657,-1)
		SetEctypeVar($ectype_id,76,1)


	}





