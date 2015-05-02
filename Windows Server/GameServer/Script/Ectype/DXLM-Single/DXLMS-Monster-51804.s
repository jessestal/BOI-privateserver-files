	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/10/10
	//		Author:??
	//		TaskName:????????
	//		TaskID:51804
	//
	//****************************************
	
	function OnDead(){

		//???? ??id   ??id 7642
	
		$ectype_id = GetPlayerInfo(-1, "mapid")
		$add_hp = 29999
		AddPlayerInfo( -1, "hp", $add_hp)
		AddStatusToMap($ectype_id, 7642, 2)
		BC( "screen", "player", -1, "A surge of light envelops you, healing you and boosting your attacks!")
	
	}

