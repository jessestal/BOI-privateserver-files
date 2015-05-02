	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???door3??????????
	//		TaskID:DXLM-Monster-Junyi-51773.s
	//
	//****************************************
	
	function OnDead(){


	$ectype_id = GetEctypeID(-1, 478)
	$count = GetEctypeVar(-1, 98)
	$count = $count + 1
	SetEctypeVar(-1, 98, $count)

		if $count < 10
			if $count > 6
			$b = 10 - $count
				if $b > 0
					BC( "screen", "map", $ectype_id, "You need to kill " , $b, " monsters to open the gate ahead.")
				endif		
			endif
		endif		

		if $count == 10
			$revaluet_2 = OpenMask(3,$ectype_id )
			if $revaluet_2 == 0
				BC( "screen", "map", $ectype_id, "The gate is open!")	
				AddMonster( 51771, 3, $ectype_id, 39, 61, 3)
				AddMonster( 51771, 3, $ectype_id, 35, 61, 3)	
				AddMonster( 51772, 3, $ectype_id, 42, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 46, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 48, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 54, 61, 3)
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif

	



}

