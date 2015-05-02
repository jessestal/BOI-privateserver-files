  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-HAQX-Monster-51211.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		
		$kill_number = GetEctypeVar($ectype_ID ,113)
		$kill_number = $kill_number + 1
		SetEctypeVar($ectype_ID ,113,$kill_number)
		
		if $ectype_ID > 0
			if $kill_number <= 30
				BC("screen", "map", $ectype_ID, "Orbus Surveillant:",$kill_number," / 30")
			endif
			if $kill_number == 30
				$monster_level = GetEctypeVar($ectype_ID ,110)
				if $monster_level > 0
					//AddLevelMonster( 51217 ,10,$monster_level,1 , $ectype_ID , 44, 41, 0)
					StartEctypeTimer($ectype_ID ,5)
					BC("screen", "map", $ectype_ID, "Death Orbus has appeared! The pillar guardian, Death Orbus, will appear!")
				endif
			endif		
		endif
		
	}
		