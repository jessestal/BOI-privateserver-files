	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/11
	//		Author:???(??,??,??)
	//		TaskName:???479???????????
	//		TaskID:DXLM1-Monster-CJShuijing-51824.s
	//
	//****************************************
	
	function OnDead(){
		//???? ??id 479, ?21		
		$ectype_id = GetEctypeID(-1, 479)
	
		OpenMask(21, $ectype_id)
		BC("screen", "map", $ectype_id, "The Mystery Crystal's power has been broken. The path to the Prayer Altar is now open.")
	
	}