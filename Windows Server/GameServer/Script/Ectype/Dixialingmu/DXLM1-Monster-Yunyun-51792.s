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
		

		//???? ??id 479, ????? 2--?10?25
		$ectype_id = GetEctypeID(-1, 479)
		$count = GetEctypeVar(-1, 2)
		$count = $count + 1
		SetEctypeVar(-1, 2, $count)

		if $count <= 18
			$b = 18 - $count
			if $b > 0
				BC( "screen", "map", $ectype_id, "Sins left in your conscience: " , $b , " ")
				return
			endif
			if $b == 0
				BC( "screen", "map", $ectype_id, "Your conscience has been cleared.")
				return
			endif
		endif			


	
	
}