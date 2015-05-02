	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/11
	//		Author:???
	//		TaskName:?????
	//		TaskID:mengjingcaihong1862.s
	//
	//****************************************

	function OnTaskDone(){
		$week = GetNowWeek()
		GetPlayerVar(-1 , 3335)
		SetPlayerVar(-1 , 3335 , $week)	
//		BC( "screen" , "player" , -1 , "GUID:08301000000" )

	}