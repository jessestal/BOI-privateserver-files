	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/30
	//		Author:??
	//		TaskName:Ectype-HAQX-NPC-1969.s
	//		TaskID:????
	//
	//****************************************
	//
	function OnRequest(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		
		DeleteNPC(1969, $ectype_ID)
		
		if $ectype_ID > 0
			$monster_level = GetEctypeVar($ectype_ID ,110)
			$monster_fieldlevel = GetEctypeVar($ectype_ID ,90)
			if $monster_level > 0
				if $monster_level >= 80
					if $monster_fieldlevel > 0
						AddLevelFieldMonster( 51211 ,82,$monster_level,82,$monster_fieldlevel,30, $ectype_ID , 44, 41, 10)
					else
						AddLevelMonster( 51211 ,82,$monster_level,30 , $ectype_ID , 44, 41, 10)
					endif
					BC("screen", "map", $ectype_ID, "The last Requiem Pillar has been destroyed.")
					PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
				else
					if $monster_fieldlevel > 0
						AddLevelFieldMonster( 51211 ,9,$monster_level,9,$monster_fieldlevel,30, $ectype_ID , 44, 41, 10)
					else
						AddLevelMonster( 51211 ,9,$monster_level,30 , $ectype_ID , 44, 41, 10)
					endif
					//AddLevelMonster( 51217 ,2,$monster_level,1 , $ectype_ID , 44, 41, 0)
					//StartEctypeTimer($ectype_ID ,1)
					BC("screen", "map", $ectype_ID, "The last Requiem Pillar has been destroyed.")
					PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
				endif
			endif
		endif

	}
	
	//??????
	function OnOption0(){
		


	}
	
	

