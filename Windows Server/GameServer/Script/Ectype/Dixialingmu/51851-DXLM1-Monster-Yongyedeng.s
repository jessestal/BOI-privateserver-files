	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:51851
	//
	//****************************************
	
	function OnDead(){

	//???? ??id   ??id 7642

	$ectype_id = GetPlayerInfo(-1, "mapid")
	
	AddStatusToMap($ectype_id, 7642, 1)
	BC( "screen", "map", $ectype_id, "A surge of light envelops you, healing you and boosting your attacks!")

}

