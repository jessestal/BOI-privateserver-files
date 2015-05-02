   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51112.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		
		
		$ectype_ID = GetEctypeID(-1 ,222)
		SetEctypeVar(-1 ,2 , 1)
		AddNPC(1900, $ectype_ID)
		BC("screen", "map", $ectype_ID, "Marcell: You very strong!  Armond and me help you!")
		$ectype_type = GetEctypeVar(-1 ,0)
		
		if $ectype_type == 0
			AddMonster( 51103, 30, $ectype_ID, 58, 59,  10 )
			AddMonster( 51104, 30,$ectype_ID, 72, 57,  10 )
		//	AddMonster( 51113, 1, $ectype_ID, 57, 59,  2 )
		//	AddMonster( 51114, 1, $ectype_ID, 74, 57,  2 )
		else
			if $ectype_type == 1
				AddMonster( 51123, 30, $ectype_ID, 58, 59,  10 )
				AddMonster( 51124, 30,$ectype_ID, 72, 57,  10 )
			//	AddMonster( 51133, 1, $ectype_ID, 57, 59,  2 )
			//	AddMonster( 51134, 1, $ectype_ID, 74, 57,  2 )
			else
				AddMonster( 51443, 30, $ectype_ID, 58, 59,  10 )
				AddMonster( 51444, 30,$ectype_ID, 72, 57,  10 )
			endif
		endif
	}
		
