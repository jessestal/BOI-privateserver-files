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

	//???? ??id 478  NPC?? 681 M??? 51845 M???? 51823

	$ectype_id = GetEctypeID(-1, 478)
	$count = GetEctypeVar(-1, 98)
	$count = $count + 1
	SetEctypeVar(-1, 98, $count)
	BC( "screen", "map", $ectype_id, "Dark Ants Troops ", $count, "/30 ")


		if $count < 10
			if $count > 6
			$a = 10 - $count
				if $a > 0
					BC( "screen", "map", $ectype_id, "First wave of ants:" , $a, " more ants to kill!")
				endif		
			endif
		endif		
		
		if $count < 20
			if $count > 16
			$b = 20 - $count
				if $b > 0
					BC( "screen", "map", $ectype_id, "Second wave of ants:" , $b, " more ants to kill!")
				endif		
			endif
		endif	
		
		if $count < 30
			if $count > 26
			$c = 30 - $count
				if $c > 0
					BC( "screen", "map", $ectype_id, "Last wave of ants: " , $c, " more ants to kill!")
				endif		
			endif
		endif		

		if $count == 30
			$revaluet_2 = OpenMask(3,$ectype_id )
			if $revaluet_2 == 0
				BC( "screen", "map", $ectype_id, "The gate has been opened! You can go deeper into the catacomb to explore.")	
				AddMonster( 51771, 3, $ectype_id, 39, 61, 3)
				AddMonster( 51771, 3, $ectype_id, 35, 61, 3)	
				AddMonster( 51772, 3, $ectype_id, 42, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 46, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 48, 61, 3)
				AddMonster( 51771, 2, $ectype_id, 54, 61, 3)
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				
				AddNPC(583, $ectype_id)
				
				AddMonsterByFloat(51845, 1, $ectype_id, 295, 151, 0) 
				AddMonsterByFloat(51845, 1, $ectype_id, 304, 151, 0)
				
				AddMonsterByFloat(51823, 1, $ectype_id, 293, 156, 0)
				AddMonsterByFloat(51823, 1, $ectype_id, 298, 153, 0)
				AddMonsterByFloat(51823, 1, $ectype_id, 304, 156, 0)
				AddMonsterByFloat(51823, 1, $ectype_id, 301, 151, 0)
				AddMonsterByFloat(51823, 1, $ectype_id, 299, 158, 0)
				
			endif
		endif

	



}

