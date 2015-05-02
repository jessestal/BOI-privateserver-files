   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/14
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51103.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		
		
		$kill_number = GetEctypeVar(-1 ,111)
		$kill_number = $kill_number + 1
		SetEctypeVar(-1 ,111,$kill_number)
		
		$ectype_ID = GetEctypeID(-1 ,222)
		
		$ectype_type = GetEctypeVar(-1 ,0)
		
		if $kill_number <= 30
			BC("screen", "map", $ectype_ID,"Royal Guards defeated: " ,$kill_number ," / 30")
		endif
		if $kill_number == 30
			if $ectype_type == 0
				AddMonster( 51113, 1, $ectype_ID, 58, 59,  0 )
				AddMonster( 51103, 10, $ectype_ID, 58, 59,  5 )
				BC("screen", "map", $ectype_ID,"Jocart: Ah! Invaders again.")
			else
				if $ectype_type == 1
					AddMonster( 51133, 1, $ectype_ID, 58, 59,  0 )
					AddMonster( 51123, 10, $ectype_ID, 58, 59,  5 )
					BC("screen", "map", $ectype_ID,"Jocart: Ah! Invaders again.")
				else
					AddMonster( 51453, 1, $ectype_ID, 58, 59,  0 )
					AddMonster( 51443, 10, $ectype_ID, 58, 59,  5 )
					BC("screen", "map", $ectype_ID,"Jocart: Ah! Invaders again.")
				endif
			endif
		endif
		
	}
		
