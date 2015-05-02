   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-DE-Monster-51202.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 226 )
		
		//??????
		$ectype_type = GetEctypeVar( -1, 111 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 111, $ectype_type )
		
		//??70?
		$ectype_type = GetEctypeVar( -1, 111 )
		if $ectype_type < 70
			$ectype_type = 70 - $ectype_type
			BC("screen", "map", $ectype_ID, "There are ",$ectype_type," Terracotta Protectors remaining.")
		endif
		if $ectype_type == 70
			BC("screen", "map", $ectype_ID, "When the 7 stars twinkle, the Dragon Emperor will emerge...")
		endif
		
	}