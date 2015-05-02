	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1????????51794
	//		TaskID:DXLM1-Monster-Shiweizhang-51794.s
	//
	//****************************************
	
	function OnDead(){
	
		$ectype_id = GetEctypeID(-1, 479)	
		$n = GetEctypeVar(-1, 58)
		$n = $n + 1
		SetEctypeVar(-1, 58, $n)
		
		$is_summon = GetEctypeVar(-1,94)
		
		if $n >= 2
			if $is_summon == 0
				BC( "screen", "map", $ectype_id, "All Guard Captains are dead. The Palace Secret Passage is now unlocked.")
				SetEctypeVar(-1,94,1)
			endif
		endif	
		
	}