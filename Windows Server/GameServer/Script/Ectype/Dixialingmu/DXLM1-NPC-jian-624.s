	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:
	//		TaskName:
	//		TaskID:
	//
	//****************************************

	function OnRequest(){

		$ectype_id = GetEctypeID( -1 , 479 )
		$ison = GetEctypeVar($ectype_id,42)
		if $ison == 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif

	}

	function OnOption0(){

			$ectype_id = GetEctypeID( -1 , 479 )
			SetEctypeVar($ectype_id,42,0)
			SetEctypeVar($ectype_id,41,4)

			#name = GetPlayerInfo( -1 , "name" )
			BC("screen", "map", $ectype_id, #name , " broke the seal of the North Blade!")


	}

		function OnOption1(){

			BC("screen","player",-1,"Cannot release the seal now!")

	}