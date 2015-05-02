	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?BOSS??51788
	//		TaskID:DXLM1-BOSS-Qimeng-51788.s
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 479)
		AddNPC( 689, $ectype_id)
		BC("screen", "map", $ectype_id, "Silent, cold, and alone... drowned by the tears of a thousand generations...")
		BC("screen", "map", $ectype_id, "You have subdued the Ether Psyche! Speak to it now and find out what's going on!")
		
		AddMonsterByFloat( 51781, 1, $ectype_id, 264, 210, 0)
		AddMonsterByFloat( 51781, 1, $ectype_id, 260, 218, 0)
		AddMonsterByFloat( 51781, 1, $ectype_id, 268, 215, 0)
		AddMonsterByFloat( 51780, 1, $ectype_id, 265, 230, 0)
		AddMonsterByFloat( 51780, 1, $ectype_id, 264, 232, 0)
		AddMonsterByFloat( 51780, 1, $ectype_id, 268, 220, 0)
		AddMonsterByFloat( 51782, 1, $ectype_id, 260, 227, 0)
		AddMonsterByFloat( 51782, 1, $ectype_id, 265, 223, 0)
		AddMonsterByFloat( 51782, 1, $ectype_id, 264, 218, 0)
		AddMonsterByFloat( 51779, 1, $ectype_id, 266, 210, 0)
		AddMonsterByFloat( 51779, 1, $ectype_id, 267, 225, 0)
		AddMonsterByFloat( 51779, 1, $ectype_id, 264, 220, 0)
		
		
	}