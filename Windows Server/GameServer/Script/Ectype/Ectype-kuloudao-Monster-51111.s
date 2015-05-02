   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51111.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		
		
		$ectype_ID = GetEctypeID(-1 ,222)
		SetEctypeVar(-1 ,1 , 1)
		AddNPC(1901, $ectype_ID)
		BC("screen", "map", $ectype_ID, "Armond: Well done! I'm glad to see you're so capable. I need your help.")
	}
		
