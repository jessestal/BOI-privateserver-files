   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/14
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51104.s
	//		TaskID:??????????
	//****************************************
	
	function OnDead(){
		
		
		$kill_number = GetEctypeVar(-1 ,112)
		$kill_number = $kill_number + 1
		SetEctypeVar(-1 ,112,$kill_number)
		
		$ectype_ID = GetEctypeID(-1 ,222)
		
		$ectype_type = GetEctypeVar(-1 ,0)
		
		if $kill_number <= 30
			BC("screen", "map", $ectype_ID,"Royal Squires Defeated: " ,$kill_number ," / 30")
		endif
		
		
		if $kill_number == 30
			if $ectype_type == 0
				AddMonster( 51114, 1, $ectype_ID, 72, 57,  0 )
				AddMonster( 51104, 10, $ectype_ID, 72, 57,  5 )
				BC("screen", "map", $ectype_ID,"Chivera: I am thinking I smyell blood of landlubber, yes...?")
			else
				if $ectype_type == 1
					AddMonster( 51134, 1, $ectype_ID, 72, 57,  0 )
					AddMonster( 51124, 10, $ectype_ID, 72, 57,  5 )
					BC("screen", "map", $ectype_ID,"Chivera: I am thinking I smyell blood of landlubber, yes...?")
				else
					AddMonster( 51454, 1, $ectype_ID, 72, 57,  0 )
					AddMonster( 51444, 10, $ectype_ID, 72, 57,  5 )
					BC("screen", "map", $ectype_ID,"Chivera: I am thinking I smyell blood of landlubber, yes...?")
				endif
			endif
		endif
		
	}