	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/12
	//		Author:???(??,??,??)
	//		TaskName:???479??1Monster????51792
	//		TaskID:DXLM1-Monster-Yunyun-51792.s
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 479)
		$count = GetEctypeVar(-1, 2)
		$count = $count - 1
		SetEctypeVar(-1, 2, $count)
		
		if $count < 18
			$a = 18 - $count
			if $a > 0
				BC( "screen", "map", $ectype_id, "You shouldn't have done that!")
				return
			endif
			if $a == 0
					BC( "screen", "map", $ectype_id, "Your conscience has been cleared. The Nirvana Gateway is open.")
				return
			endif
		endif
	
		
		
	}