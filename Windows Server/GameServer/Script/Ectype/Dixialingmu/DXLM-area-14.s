	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/02/22
	//		Author:???
	//		TaskName:????14???
	//		TaskID:
	//
	//****************************************
	
	
	function EnterArea(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		FlyToMap(-1, $ectype_id, 75, 60)
		
		BC( "screen", "map", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
		BC( "chat", "player", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
		
	}
	
	function LeaveArea(){
	
	
	
	}