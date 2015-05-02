	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??3NPC????
	//		TaskID:DXLM3-NPC-Huwei-596.s
	//
	//****************************************
	
	function OnRequest(){
	
	//???? 54
	$is_open = GetEctypeVar(-1, 54)
	if $is_open == 1
		DisableNpcOption(0)
	endif
		
}

	function OnOption0(){
	//???? ??id 479,?? ????44049 ?? ???? 51776 ????51814 ????51813 NPC???? 646 ???? 51843 ???? 54
	//?????? 51785
	$ectype_id = GetEctypeID(-1, 479)
	$item_id = 44049
	$guard_id = 51776
	$guard_id_1 = 51785
	$npc_id = 646
	$mst_guard = 51843
	$mst_fire = 51814
	$mst_ice = 51813
	$is_get = GetPlayerInfo(-1, "item", $item_id)
	
	if $is_get < 1
		BC( "screen", "player", -1, "No one can enter here without the Tiger Talisman. Trespassers will be executed.")
		return
	else
		$revaluet = OpenMask(19, $ectype_id)
		BC( "screen", "map", $ectype_id, "The Imperial Gate has opened!")
		BC( "screen", "player", -1, "Tiger Talisman?! General please come in")
	//?????
	//????6?
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 126, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 128, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 272, 130, 0, 0, 90)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 276, 126, 0, 0, 270)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 276, 128, 0, 0, 270)
		AddMonsterByFloat($guard_id, 1, $ectype_id, 276, 130, 0, 0, 270)
				
	//??NPC???2?
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 299, 117, 0, 0, 180)
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 305, 117, 0, 0, 180)	
	//??3?
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 299, 122, 0, 0, 0)	
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 302, 122, 0, 0, 0)
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 305, 122, 0, 0, 0)	

	//??6?
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 296, 117, 0, 0, 180)
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 293, 117, 0, 0, 180)	
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 290, 117, 0, 0, 180)
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 296, 122, 0, 0, 0)	
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 293, 122, 0, 0, 0)
		AddMonsterByFloat($guard_id_1, 1, $ectype_id, 290, 122, 0, 0, 0)	

	//??? ????
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 266, 136, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 268, 136, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 270, 136, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 272, 136, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 274, 136, 0, 0, 90)
		AddMonsterByFloat($mst_guard, 1, $ectype_id, 276, 136, 0, 0, 90)
		
		
		
	//?????
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 110, 0)	
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 99, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 104, 0)
		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 94, 0)
//	//?????	
//		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 110, 0)	
//		AddMonsterByFloat($mst_fire, 1, $ectype_id, 275, 99, 0)
//		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 104, 0)
//		AddMonsterByFloat($mst_fire, 1, $ectype_id, 270, 94, 0)

	//?NPC	
		AddNPC($npc_id, $ectype_id)
		AddNPC(637, $ectype_id)
		
		SetEctypeVar(-1, 54, 1)
	endif
	
	
}