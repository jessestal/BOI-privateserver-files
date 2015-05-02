	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-160-Lever.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		BC( "screen", "player", -1, "You may use the portal ahead." )
		SetPlayerVar( -1, 3688, 1 )
		
	}