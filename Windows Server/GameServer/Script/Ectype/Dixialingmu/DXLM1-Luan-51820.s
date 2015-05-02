	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/13
	//		Author:???(??,??,??)
	//		TaskName:?????
	//		TaskID:DXLM1-Monster-CJLuan-51821.s
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_id = GetEctypeID(-1, 478)
		AddMapPlayerInfo($ectype_id, "exp", 85000)
		BC( "screen", "map", $ectype_id, "There is nothing in the spider egg")
	
	} 