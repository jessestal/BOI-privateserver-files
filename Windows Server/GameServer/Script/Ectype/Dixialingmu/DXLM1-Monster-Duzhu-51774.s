	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478????591???????
	//		TaskID:DXLM-Monster-Duzhu-51774.s
	//
	//****************************************

	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 478)
		$count = GetEctypeVar(-1, 97)
		$count = $count + 1
		SetEctypeVar(-1, 97, $count )
		
		if $count <= 25
			$b = 25 - $count
			if $b > 0
				BC( "screen", "map", $ectype_id, "You need to kill " , $b , " more spiders to activate the Seal of Inversion!")
				return
			endif
			
			if $b == 0
				BC( "screen", "map", $ectype_id, "The Seal of Inversion has been activated!")
				return
			endif
			
		endif


		
		
	}