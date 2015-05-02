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

	//???????????98,?????????99
	$count = GetEctypeVar(-1, 98)
	$count = $count + 1
	SetEctypeVar(98, $count )

	$dif = GetEctypeVar(-1, 99)	
	//?????
	if $dif == 1	
	//??10???????,??DOOR3,???????
		if $count < 10
			$a = 10 - $count	
			BC( "screen", "team", -1, "You must kill $a more monsters to open the gate ahead.")
		else
			OpenMask( 3,-1)
			BC( "screen", "map", -1, "The gate has been opened. You can keep exploring.")	
			AddMonsterByFloat( 51771, 2, -1, 82, 232, 3)
			AddMonsterByFloat( 51771, 2, -1, 82, 232, 3)
			AddMonsterByFloat( 51771, 2, -1, 82, 232, 3)
		endif
	endif
	
	//?????
	if $dif == 2		
	//??????25,??door3,????????
		if $count < 25
			$b = 25 -$count
			BC( "screen", "team", -1, "You must kill $a more monsters to open the gate ahead.")
		else
			OpenMask( 3,-1)
			AddMonsterByFloat( 51772, 5, -1, 82, 232, 4)	
			AddMonsterByFloat( 51772, 5, -1, 82, 232, 4)	
			AddMonsterByFloat( 51772, 5, -1, 82, 232, 4)	
		endif
	endif		


}

