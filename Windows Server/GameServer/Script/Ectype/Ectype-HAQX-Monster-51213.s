  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-HAQX-Monster-51213.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		

		$ectype_ID = GetEctypeID(-1 ,166)
		
		$kill_number = GetEctypeVar($ectype_ID ,111)
		$kill_number = $kill_number + 1
		SetEctypeVar($ectype_ID ,111,$kill_number)
		
		if $ectype_ID > 0
		
			if $kill_number == 20
				AddNPC(1967, $ectype_ID)
				AddNPC(2017, $ectype_ID)
				BC("screen", "map", $ectype_ID, "The Southern Requiem Pillar appears! Destroy it as soon as you can!")
			endif


			if $kill_number <= 20
				BC("screen", "map", $ectype_ID, "Abyss Wraith: ",$kill_number," / 20")
			else
				$kill_number_new = $kill_number - 20
				BC("screen", "map", $ectype_ID, "Abyss Wraith: ",$kill_number_new," / 30")
			endif

			if $kill_number == 50
				$monster_level = GetEctypeVar($ectype_ID ,110)
				if $monster_level > 0
					//AddLevelMonster( 51215 ,10,$monster_level,1 , $ectype_ID , 23, 103, 0)
					StartEctypeTimer($ectype_ID ,6)
					BC("screen", "map", $ectype_ID, "The pillar guardian, Abyss Dominator, will appear!")
				endif
			endif		
		endif
		
	}
		