   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51113.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		
		
		$ectype_ID = GetEctypeID(-1 ,222)
		SetEctypeVar(-1 ,3 , 1)
		$iskill = GetEctypeVar(-1 ,4 )
		//??????
		$ectype_type = GetEctypeVar(-1 ,0)
		
		if $iskill == 1
			AddMonster( 51142, 1,$ectype_ID, 55, 35,  0 )
			BC("screen", "map", $ectype_ID, "The Cursed Coin appears!")
			//BC("screen", "map", $ectype_ID, "GUID:04176000001")
			if $ectype_type == 0
			//	AddMonster( 51115, 1,$ectype_ID, 60, 41,  0 )
				AddMonster( 51105, 5,$ectype_ID, 68, 50, 10 )
				AddMonster( 51105, 5,$ectype_ID, 63, 49, 10 )
			else
				if $ectype_type == 1
				//	AddMonster( 51135, 1, $ectype_ID, 60, 41,  0 )
					AddMonster( 51125, 5, $ectype_ID, 68, 50,  10 )
					AddMonster( 51125, 5, $ectype_ID, 63, 49,  10 )
				else
					AddMonster( 51445, 5, $ectype_ID, 68, 50,  10 )
					AddMonster( 51445, 5, $ectype_ID, 63, 49,  10 )
				endif
			endif
		else
			BC("screen", "map", $ectype_ID, "Jocart: Have fun with them, Chivera! I'm gone...")
		endif
	}
		
