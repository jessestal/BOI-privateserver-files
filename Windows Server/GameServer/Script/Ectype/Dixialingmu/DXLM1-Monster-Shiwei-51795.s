	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1???????51795
	//		TaskID:DXLM1-Monster-Shiwei-51795.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 479,  ???? 99--?1?2,??????? 36--?7?14
		$ectype_id = GetEctypeID(-1, 479)
		$n = GetEctypeVar(-1, 36)
		$is_summon = GetEctypeVar(-1,95)
			
		$n = $n + 1
		SetEctypeVar(-1, 36, $n)
	
		if $n >= 10
			if $is_summon == 0
				AddMonsterByFloat(51794, 1, $ectype_id, 300, 235, 0)
				AddMonsterByFloat(51794, 1, $ectype_id, 304, 231, 0)
				AddMonsterByFloat(51794, 1, $ectype_id, 304, 240, 0)
				BC( "screen", "map", $ectype_id, "We three Guard Captains protect this place. Anyone who comes here will die!")
				SetEctypeVar(-1,95,1)
			endif
		endif
		
	}