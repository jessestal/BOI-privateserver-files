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
		
		AddMonsterByFloat( 51781, 1, $ectype_id, 256, 225, 0)
//		AddMonsterByFloat( 51781, 1, $ectype_id, 258, 226, 0)
		AddMonsterByFloat( 51781, 1, $ectype_id, 260, 227, 0)
//		AddMonsterByFloat( 51780, 1, $ectype_id, 264, 229, 0)
		AddMonsterByFloat( 51780, 1, $ectype_id, 268, 230, 0)
//		AddMonsterByFloat( 51780, 1, $ectype_id, 272, 232, 0)
		AddMonsterByFloat( 51782, 1, $ectype_id, 272, 237, 0)
//		AddMonsterByFloat( 51782, 1, $ectype_id, 270, 236, 0)
		AddMonsterByFloat( 51782, 1, $ectype_id, 266, 235, 0)
//		AddMonsterByFloat( 51779, 1, $ectype_id, 262, 235, 0)
		AddMonsterByFloat( 51779, 1, $ectype_id, 259, 235, 0)
//		AddMonsterByFloat( 51779, 1, $ectype_id, 256, 235, 0)
		
		
	}