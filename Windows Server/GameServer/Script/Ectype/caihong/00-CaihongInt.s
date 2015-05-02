	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author:???
	//		TaskName:???????
	//		TaskID:mapid = 557
	//
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

		$ectype_id = GetEctypeID($playerid,558)
		$time1 = 1
		SetEctypeTimer(1,$time1,"EctypeTimer1")

	}

	function EctypeTimer1(){
//???
		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,558)

		BC( "screen" , "map" , $ectype_id , "(Initializing) Instance entered successfully, ID = " , $ectype_id )
		
		
	}
