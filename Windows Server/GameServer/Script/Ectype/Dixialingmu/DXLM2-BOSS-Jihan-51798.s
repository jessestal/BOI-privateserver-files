	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/02
	//		Author:???(??,??,??)
	//		TaskName:???479????BOSS????
	//		TaskID:DXLM2-BOSS-Jihan-51798.s
	//
	//****************************************
	
		function OnDead(){
	
	//????,??ID?????34,??????35
	$ectype_id = GetEctypeID(-1, 479)
	$n = GetEctypeVar(-1, 34)
	$is = GetEctypeVar(-1, 35 )

	//??boss???		
	$n = $n + 1
	SetEctypeVar(-1, 34, $n)
	BC( "screen", "map", $ectype_id, "Chiyu's general, Flame Rider, has died in battle. You are almost successful.")

	//??BOSS???,????	
	if $n == 2
		OpenMask(18, $ectype_id)
		BC( "screen", "map", $ectype_id, "Chiyu's generals have all been killed. Victory is coming!")
	endif
	
	//??BOSS???,???????,??BOSS??
	if $n == 2
		if $is == 0
		AddMonsterByFloat(51806, 1, $ectype_id, 30, 268 ,1 )
		SetEctypeVar(-1, 35, 1 )
		endif
	endif
}