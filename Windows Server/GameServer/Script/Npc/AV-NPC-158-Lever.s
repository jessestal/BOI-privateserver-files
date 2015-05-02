	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-158-Lever.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		BC( "screen", "player", -1, "You are hit by thunder." )
		UseSkill( -1, 8672, 1 )
		
	}