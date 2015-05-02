	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?BOSS????51775
	//		TaskID:DXLM1-BOSS-Duzhu-51775.s
	//
	//****************************************
	
	function OnDead(){
	
	//???? ??id 478, ?id 21, ???? 51822,??99-?1?2
	$ectype_id = GetEctypeID(-1, 478)

		OpenMask( 21, $ectype_id)
		BC("screen", "map", $ectype_id, "Queen Spider has been killed! The blocked tomb gate is now open.")
  	AddMonsterByFloat(51822, 1, $ectype_id, 264, 225, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 262, 223, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 262, 227, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 260, 222, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 260, 228, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 266, 223, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 266, 227, 0)
  	AddMonsterByFloat(51822, 1, $ectype_id, 268, 225, 0)

	
	
}