   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/16
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51137.s
	//		TaskID:?????????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1 ,222)
		
		AddNPC(1909, $ectype_ID)
		BC("screen", "map", $ectype_ID, "Baberet's Will: I failed and failed completely! Actually that's what I wants. As the pirate captain, I lived for quite a long time. Now let my will sleep in the vast oceans.")
		
	}
		
