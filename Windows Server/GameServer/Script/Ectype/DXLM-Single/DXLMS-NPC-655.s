		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:??-??479*

		//
		//****************************************

	function OnRequest(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 64
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif


	}


	function OnOption0(){
		//??,?????
		
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		BC("dialogbox","player",-1,"Help me kill this Serpent Beast! Then I can be free!")
		BC("screen","player",-1,"One Darkwind Serpent has appeared.")
		AddMonsterByFloat(51766, 1, $ectype_id, 99, 132, 0)
		$key = 64
		SetEctypeVar($ectype_id,$key,1)
		
		
		
		

	}

	function OnOption1(){
		//??,????????
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		BC("screen","player",-1,"The ghost is offended and attacks you!")
		AddMonsterByFloat(51761, 1, $ectype_id, 92, 132, 0)
		$key = 64
		SetEctypeVar($ectype_id,$key,3)
		DeleteNPC(655,-1)
		
		
		
		

	}





