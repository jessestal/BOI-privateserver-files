	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/11
	//		Author:???
	//		TaskName:?????
	//		TaskID:mengjingcaihong1864.s
	//
	//****************************************

	function OnTaskDone(){
		$week = GetNowWeek()
		GetPlayerVar(-1 , 3337)
		SetPlayerVar(-1 , 3337 , $week)	
//		BC( "screen" , "player" , -1 , "GUID:08303000000" )

	}
