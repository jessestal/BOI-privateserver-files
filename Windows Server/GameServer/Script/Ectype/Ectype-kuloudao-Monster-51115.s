   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51115.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		
		
		
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar($ectype_ID ,0)
	
		if $ectype_type == 1
			AddNPC(1904, $ectype_ID)
			BC("screen", "map", $ectype_ID, "Pirate Captain Barbert: Ah! That's what sorrow is.I felt so cold. cold.")
		else
			AddNPC(1909, $ectype_ID)
			BC("screen", "map", $ectype_ID, "Pirate Captain Barbert: Bah! If I could fight you in my true form, you would no longer be standing now.")
		endif
	
		
	}
		
