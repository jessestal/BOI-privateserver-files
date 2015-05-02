	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/14
	//		Author:???(??,??,??)
	//		TaskName:???479??3NPC????
	//		TaskID:DXLM3-NPC-Shouwei-646.s
	//
	//****************************************
	
	function OnRequest(){
		
}

	function OnOption0(){
	//???? ??id 479,?? ????44049 ?? ???? ??51785 ??51786 NPC????628 ????629  ?????632 ??631
	//????
	$ectype_id = GetEctypeID(-1, 479)
	$item_id = 44049
	$guard_ali_id = 51785
	$guard_ene_id = 51786
	$npc_id = 628
	$def_fire = 632
	$def_ice = 631
	$is_get = GetPlayerInfo(-1, "item", $item_id)

	//???????	
	if $is_get < 1
		BC( "screen", "player", -1, "This is the Sword Vault. No one can enter without proper authority.")
		return
	else
		$revaluet = OpenMask(15, $ectype_id)
		BC( "screen", "map", $ectype_id, "The Sword Vault is open. The Pangaea Sword is sealed within...")
	//?????
	//???8
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 95, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 93, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 91, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 89, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 87, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 85, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 83, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 81, 0, 0, 90)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 292, 79, 0, 0, 90)
	//????8
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 95, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 93, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 91, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 89, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 87, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 85, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 81, 0, 0, 270)
		AddMonsterByFloat($guard_ali_id, 1, $ectype_id, 312, 79, 0, 0, 270)

	//?NPC	
		AddNPC($npc_id, $ectype_id)
//		AddNPC($def_fire, $ectype_id)
//		AddNPC($def_ice, $ectype_id)
		
		//??????
		SubPlayerInfo(-1, "item", $item_id, 1)
		BC("screen","player",-1,"I will have to detain the Tiger Talisman while you're inside. Please follow me.")
		DeleteNPC(646, $ectype_id)
		AddMonsterByFloat(51853, 1, $ectype_id, 302,117, 0, 0, 90)

	endif
	
	
}