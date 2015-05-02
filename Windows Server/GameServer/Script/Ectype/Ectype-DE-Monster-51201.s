   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-DE-Monster-51201.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID( -1, 226 )
		
		//??????
		$ectype_type = GetEctypeVar( -1, 110 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 110, $ectype_type )
		
		//??40?????
		$ectype_type = GetEctypeVar( -1, 110 )
		if $ectype_type < 40
			$ectype_type = 40 - $ectype_type
			BC("screen", "map", $ectype_ID, "There are ",$ectype_type," Dragon Squires remaining.")
		endif
		if $ectype_type == 40
			$ectype_type = GetEctypeVar( -1, 7 )
			if $ectype_type == 0
				AddMonster( 51483, 1, $ectype_ID, 60, 58 , 0 )
				AddMonster( 51483, 1, $ectype_ID, 60, 52 , 0 )
				AddMonster( 51483, 1, $ectype_ID, 68, 58 , 0 )
				AddMonster( 51483, 1, $ectype_ID, 68, 52 , 0 )
				BC("screen", "map", $ectype_ID, "Captains!  Form up in the center!")
			else
				AddMonster( 51203, 1, $ectype_ID, 60, 58 , 0 )
				AddMonster( 51203, 1, $ectype_ID, 60, 52 , 0 )
				AddMonster( 51203, 1, $ectype_ID, 68, 58 , 0 )
				AddMonster( 51203, 1, $ectype_ID, 68, 52 , 0 )
				BC("screen", "map", $ectype_ID, "Captains!  Form up in the center!")
			endif
		endif
		
	}