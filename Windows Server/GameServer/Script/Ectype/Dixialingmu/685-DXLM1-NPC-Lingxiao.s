	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/13
	//		Author:???(??,??,??)
	//		TaskName:???1????????
	//		TaskID:685 DXLM1
	//
	//****************************************

	function OnRequest(){

}	

	function OnOption0(){
	
	//???? 478, ??????92-0?1?, ?id 20
	$ectype_id = GetEctypeID(-1, 478)
	$is_boss = GetEctypeVar(-1, 92)
	
	//??BOSS????
	if $is_boss == 1
		return
	endif
	
	//?????????
	$revaluet = OpenMask(20, $ectype_id)
		if $revaluet != 0
			return
		endif
	//????,??????BOSS,????,51775??,51820???,51823????,51822????
	AddMonsterByFloat(51775, 1, $ectype_id, 264, 225, 0)
	AddMonster(51820, 1, $ectype_id, 101, 86, 2)
	AddMonster(51820, 1, $ectype_id, 104, 89, 2)
	AddMonsterByFloat(51823, 1, $ectype_id, 257, 193, 0)
	AddMonsterByFloat(51823, 1, $ectype_id, 260, 236, 0)
	AddMonsterByFloat(51822, 1, $ectype_id, 266, 199, 0)
	AddMonsterByFloat(51822, 1, $ectype_id, 261, 205, 0)
	AddMonsterByFloat(51822, 1, $ectype_id, 268, 210, 0)
	
	BC( "screen", "map", $ectype_id, "The gate has been opened.")
	BC( "dialogbox", "player", -1, "I'm going back to get help. Be careful, I think there's a giant spider ahead!")
	
	DeleteNPC(685, $ectype_id)
	AddMonsterByFloat(51848, 1, $ectype_id, 266, 186, 0, 0, 90)

}