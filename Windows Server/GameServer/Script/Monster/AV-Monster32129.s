   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster32129.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		UseSkill( -1, 8575, 1 )
		BC( "screen", "map", 188, "The Energy Crystal broke, healing everybody around." )
	}
		