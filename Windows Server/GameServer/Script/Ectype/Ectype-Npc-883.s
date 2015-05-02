	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/2
	//		Author:???
	//		TaskName:Ectype-Npc-883.s
	//		TaskID:3.70??
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		$fly = FlyToMap(-1,543,83,42,0)
		if $fly > 0
			BC("screen","player",-1,"Exit Gaia's Dwelling")
			return
		endif
		
	}