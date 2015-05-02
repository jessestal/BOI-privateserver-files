	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:??
	//		TaskID:
	//
	//****************************************

	function OnDead(){

		$playerid = GetGlobalVar(64)
		$playerpoint = GetGlobalVar(63)
		SendMail($playerid,"CNY Festival Beast event reward.","Congratulations! You got the most points in the New Year's Beast event. Please receive this Lucky Dragon Year Medal.",0,21167)
		
		

	}