   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51102.s
	//		TaskID:??????????
	//****************************************
	
	function OnDead(){
		//???????
		
		$kill_number = GetEctypeVar(-1 ,110)
		$kill_number = $kill_number + 1
		SetEctypeVar(-1 ,110,$kill_number)
		$ectype_ID = GetEctypeID(-1 ,222)
		
		
		
		//BC("chat", "server", -1, "kill:" , $kill_number)
		//BC("chat", "server", -1, "ectype_type:" , $ectype_type)
		
		BC("screen", "map", $ectype_ID,"Ghost Pirate Sabers defeated: " ,$kill_number ," / 50")
		
			if $kill_number == 10
				BC("screen", "map", $ectype_ID, "The second round of Ghost Pirate Sabers will appear in 5 seconds.")
				StartEctypeTimer(-1, 222, 1)
			endif
			if $kill_number == 20
				BC("screen", "map", $ectype_ID, "The third round of Ghost Pirate Sabers will appear in 5 seconds.")
				StartEctypeTimer(-1, 222, 2)
			endif
			if $kill_number == 30
				BC("screen", "map", $ectype_ID, "The fourth round of Ghost Pirate Sabers will appear in 5 seconds.")
				StartEctypeTimer(-1, 222, 3)
			endif
			if $kill_number == 40
				BC("screen", "map", $ectype_ID, "The fifth round of Ghost Pirate Sabers will appear in 5 seconds.")
				StartEctypeTimer(-1, 222, 4)
			endif
			if $kill_number == 50
				BC("screen", "map", $ectype_ID, "Armond will appear in 5 seconds.")
				StartEctypeTimer(-1, 222, 5)
			endif
		
	}
		
