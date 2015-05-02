  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-HAQX-Monster-51212.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		

		$ectype_ID = GetEctypeID(-1 ,166)
		
		if $ectype_ID > 0
			$monster_level = GetEctypeVar($ectype_ID ,110)
			$monster_fieldlevel = GetEctypeVar($ectype_ID ,90)
			//?????0???
			if $monster_level > 0
				if $monster_level >= 80
					if $monster_fieldlevel > 0
						AddLevelFieldMonster( 51213 ,82,$monster_level,82,$monster_fieldlevel,20 , $ectype_ID , 54, 95, 10)
					else
						AddLevelMonster( 51213 ,82,$monster_level,20 , $ectype_ID , 54, 95, 10)
					endif
					BC("screen", "map", $ectype_ID, "Undead Lord Mour: The living!  Protect the Requiem Pillars!  Kill them, my minions!")
				else
					if $monster_fieldlevel > 0
						AddLevelFieldMonster( 51213 ,9,$monster_level,9,$monster_fieldlevel,20 , $ectype_ID , 54, 95, 10)
					else
						AddLevelMonster( 51213 ,9,$monster_level,20 , $ectype_ID , 54, 95, 10)
					endif
					BC("screen", "map", $ectype_ID, "Undead Lord Mour: The living!  Protect the Requiem Pillars!  Kill them, my minions!")
				endif
			endif
		endif
		
	}
		