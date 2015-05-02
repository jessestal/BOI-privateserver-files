	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/11
	//		Author:???
	//		TaskName:?????
	//		TaskID:mengjingcaihong1863.s
	//
	//****************************************

	function OnTaskDone(){
		$week = GetNowWeek()
		GetPlayerVar(-1 , 3336)
		SetPlayerVar(-1 , 3336 , $week)	
//		BC( "screen" , "player" , -1 , "GUID:08302000000" )

	}
