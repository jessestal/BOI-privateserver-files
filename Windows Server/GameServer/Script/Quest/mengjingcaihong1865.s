	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/11
	//		Author:???
	//		TaskName:?????
	//		TaskID:mengjingcaihong1865.s
	//
	//****************************************

	function OnTaskDone(){
		$week = GetNowWeek()
		GetPlayerVar(-1 , 3338)
		SetPlayerVar(-1 , 3338 , $week)	
//		BC( "screen" , "player" , -1 , "GUID:08304000000" )

	}
