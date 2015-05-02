	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/28
	//		Author:???
	//		TaskName:??????2???????
	//		TaskID:
	//
	//****************************************
	
	
	function EnterArea(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$choice = GetEctypeVar(-1, 99)
		
		if $choice != 1
			FlyToMap(-1, $ectype_id, 25, 59)
			BC( "screen", "map", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
			BC( "chat", "player", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
		else
			FlyToMap(-1, $ectype_id, 25, 59)
		  BC( "screen", "map", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
			BC( "chat", "player", $ectype_id, "A mysterious power is preventing you from going forward. There is no point in going that direction.")
		endif

		
		
	}
	
	function LeaveArea(){
	
	
	
	}