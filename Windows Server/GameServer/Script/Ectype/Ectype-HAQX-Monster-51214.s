  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-HAQX-Monster-51214.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		
		$kill_number = GetEctypeVar($ectype_ID ,112)
		$kill_number = $kill_number + 1
		SetEctypeVar($ectype_ID ,112,$kill_number)
		
		if $ectype_ID > 0
			if $kill_number <= 30
		
				BC("screen", "map", $ectype_ID, "Abyss Witch: ",$kill_number," / 30")
			endif
			if $kill_number == 30
				$monster_level = GetEctypeVar($ectype_ID ,110)
				if $monster_level > 0
					//AddLevelMonster( 51216 ,10,$monster_level,1 , $ectype_ID , 78, 62, 0)
					StartEctypeTimer($ectype_ID ,7)
					BC("screen", "map", $ectype_ID, "The pillar guardian, Abyss Queen, will appear!")
				endif
			endif		
		endif
		
		
	}
		