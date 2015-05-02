	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:????? ???????
	//		TaskID:DXLM-Monster-Zhizhu-51822.s
	//
	//****************************************
	
	function OnDead(){

	//???? ??id 478  
	$ectype_id = GetEctypeID(-1, 478)
	$count = GetEctypeVar(-1 , 87)
	
	$count = $count + 1
	SetEctypeVar(-1, 87, $count)
	
	if $count < 9
		BC( "screen", "map", $ectype_id, "Spiders killed: ", $count, "/8 ")
	endif

	if $count == 7
		BC( "screen", "map", $ectype_id, "The path has been cleared of spiders!")
	endif	
	
	if $count == 3
		AddMonsterByFloat(51846, 1, $ectype_id, 294, 153, 0)
		DeleteNPC(681, $ectype_id)
	endif

}

