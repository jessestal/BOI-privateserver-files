	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/10
	//		Author:??
	//		TaskName:QUEST-jiangli587
	//		TaskID:587??????
	//
	//****************************************
	
	
	
	function OnTaskDone(){
	
		AddTrump( -1, 11001, 1 )
		AddTitle(-1,27)
		#name = GetPlayerInfo(-1 , "name")
		BC( "screen", "server", -1, "The hero ",#name , "After striving through many trials, you have acquired the artifact Golden Trumpet." )
	}