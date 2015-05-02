  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-DE-Monster-51203.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 226 )
		
		//??????
		$ectype_type = GetEctypeVar( -1, 112 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 112, $ectype_type )
		
		//??70?
		$ectype_type = GetEctypeVar( -1, 112 )
		if $ectype_type == 4
			$ectype_type = GetEctypeVar( -1, 7 )
			if $ectype_type == 0
				AddMonster( 51482, 35, $ectype_ID, 78, 61,  12 )
				AddMonster( 51482, 35, $ectype_ID, 50, 59,  12 )
				BC("screen", "map", $ectype_ID, "Such brashness!  Your courage means nothing here!  Kill the intruders!")
			else
				AddMonster( 51202, 35, $ectype_ID, 78, 61,  12 )
				AddMonster( 51202, 35, $ectype_ID, 50, 59,  12 )
				BC("screen", "map", $ectype_ID, "Such brashness!  Your courage means nothing here!  Kill the intruders!")
			endif
		endif
		
	}