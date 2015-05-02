	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1???????51796
	//		TaskID:DXLM1-Monster-Weishou-51796.s
	//
	//****************************************
	
	function OnDead(){
	

	$ectype_id = GetEctypeID(-1, 479)
	$n = GetEctypeVar(-1, 36)
	$is_summon = GetEctypeVar(-1,96)

	//????		
	$n = $n + 1
	SetEctypeVar(-1, 36, $n)
	
		if $n >= 5
			if $is_summon == 0
				AddMonsterByFloat(51795, 1, $ectype_id, 293, 227, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 293, 233, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 293, 237, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 293, 241, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 294, 227, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 294, 233, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 294, 237, 0)
				AddMonsterByFloat(51795, 1, $ectype_id, 294, 241, 0)
				BC( "screen", "map", $ectype_id, "You insult us too much! We will take vengeance!")
				SetEctypeVar(-1,96,1)
			endif
		endif
			
	
}