	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:??1??????
	//		TaskID:DXLM-Monster-zhizhu-51847.s
	//
	//****************************************
	
	function OnDead(){

	//???? ??id 478  NPC?? 681 M???? 51823 ?AI ????? 51847 ?? 88

	$ectype_id = GetEctypeID(-1, 478)
	$count = GetEctypeVar(-1, 88)
	$count = $count + 1
	SetEctypeVar(-1, 88, $count)

	if $count < 31
		BC( "screen", "map", $ectype_id, "Eggcarrier Spider ", $count, "/30 ")
	endif

	if $count == 30
		BC( "screen", "map", $ectype_id, "The spiders in the area are all dead. Skylar has come out of hiding.")
	endif	

	//??NPC 681
	AddNPC(681, $ectype_id)
	



}

