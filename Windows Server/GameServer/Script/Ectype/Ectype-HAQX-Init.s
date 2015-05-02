		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/30
	//		Author:??
	//		TaskName:Ectype-HAQX-Init.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnCreate(){
		
	
		//??NPC
		DeleteNPC(1967, -1)
		DeleteNPC(1968, -1)
		DeleteNPC(1969, -1)
		DeleteNPC(1970, -1)
		DeleteNPC(2017, -1)
		DeleteNPC(2018, -1)
		DeleteNPC(2019, -1)

	}
	
	
	function InitTimer(){
	
	    //??????????
	    SetEctypeTimer(0, 2, "EctypeTime0")
	    //5????????
	 	SetEctypeTimer(1, 6, "EctypeTime1")
	 	
	 	SetEctypeTimer(2, 60, "EctypeTime2")
		SetEctypeTimer(3, 60, "EctypeTime3")
		SetEctypeTimer(4, 60, "EctypeTime4")
		
		SetEctypeTimer(5, 6, "EctypeTime5")
		SetEctypeTimer(6, 6, "EctypeTime6")
		SetEctypeTimer(7, 6, "EctypeTime7")
		
		
		SetEctypeTimer(8, 360, "EctypeTime8")
		SetEctypeTimer(9, 6, "EctypeTime9")
  
	}
	
	//????????
	function EctypeTime0(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		
		//????start
//32288	?????	187	133	123
//32289	?????	233	174	199
//32290	?????	166	96	119
//			AddMonsterByFloat(32290,1,$ectype_ID,96,119,0)
		//????end
		
		//BC("screen", "map", $ectype_ID, "GUID:04148000000")
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		//?????0???
		if $monster_level > 0
		//	AddLevelMonster( 51211 ,2,$monster_level,10 , $ectype_ID , 53, 90, 5)
		//	AddLevelMonster( 51211 ,2,$monster_level,15 , $ectype_ID , 24, 102, 10)
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51212 ,9,$monster_level,9,$monster_fieldlevel,1 , $ectype_ID , 65, 99, 0)
			else
				AddLevelMonster( 51212 ,9,$monster_level,1 , $ectype_ID , 65, 99, 0)
			endif
		endif
		
		
	}
	
	//5???
	function EctypeTime1(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		//?????0???
		if $monster_level > 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51218 ,5,$monster_level,5,$monster_fieldlevel,1 , $ectype_ID , 44, 41, 0)
			else
				AddLevelMonster( 51218 ,5,$monster_level,1 , $ectype_ID , 44, 41, 0)
			endif
			//AddLevelMonster( 51213 ,9,$monster_level,10 , $ectype_ID , 43, 40, 10)
			//AddLevelMonster( 51214 ,9,$monster_level,10 , $ectype_ID , 45, 40, 10)
			BC("screen", "map", $ectype_ID, "Undead Lord Mour has appeared!")
		endif

	}
	
	//1?????buff???
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$is_kill = GetEctypeVar(-1 ,1)
		if $is_kill == 0
			AddNPC(2017, -1)
			BC("screen", "map", $ectype_ID, "Crystal Orb of Energy appears")
		//	StartEctypeTimer(-1 ,2)
		endif
		
	}
	//2?????buff???
	function EctypeTime3(){
		$ectype_ID = GetEctypeID(-1 ,166)
		$is_kill = GetEctypeVar(-1 ,2)
		if $is_kill == 0
			AddNPC(2018, -1)
			BC("screen", "map", $ectype_ID, "Crystal Orb of Energy appears")
		//	StartEctypeTimer(-1 ,3)
		endif
	}
	//3?????buff???
	function EctypeTime4(){
		$ectype_ID = GetEctypeID(-1 ,166)
		$is_kill = GetEctypeVar(-1 ,3)
		if $is_kill == 0
			AddNPC(2019, -1)
			BC("screen", "map", $ectype_ID, "Crystal Orb of Energy appears")
		//	StartEctypeTimer(-1 ,4)
		endif
	}
	
	//5???
	function EctypeTime5(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		//?????0???
		if $monster_level > 0
			if $monster_fieldlevel > 0
			AddLevelFieldMonster( 51217 ,10,$monster_level,10,$monster_fieldlevel,1 , $ectype_ID , 44, 41, 0)
			else
			AddLevelMonster( 51217 ,10,$monster_level,1 , $ectype_ID , 44, 41, 0)
			endif
			BC("screen", "map", $ectype_ID, "Death Orbus has appeared!")
		endif
		

	}
	
	//5???
	function EctypeTime6(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		//?????0???
		if $monster_level > 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51215 ,10,$monster_level,10,$monster_fieldlevel,1 , $ectype_ID , 23, 103, 0)
			else
				AddLevelMonster( 51215 ,10,$monster_level,1 , $ectype_ID , 23, 103, 0)
			endif
			BC("screen", "map", $ectype_ID, "Abyss Dominator has appeared!")
		endif

	}
	
	//5???
	function EctypeTime7(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		//?????0???
		if $monster_level > 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51216 ,10,$monster_level,10,$monster_fieldlevel,1 , $ectype_ID , 78, 62, 0)
			else
				AddLevelMonster( 51216 ,10,$monster_level,1 , $ectype_ID , 78, 62, 0)
			endif
			BC("screen", "map", $ectype_ID, "Abyss Queen has appeared!")
		endif

	}
	
	//???????
	function EctypeTime8(){
		
		$ectype_ID = GetEctypeID(-1 ,166)
		$status = GetEctypeVar($ectype_ID,20)
		if $status == 0
			SetEctypeVar($ectype_ID,20,1)
			BC("screen", "map", $ectype_ID, "A burst of cold laughter rings out in the darkness.")
			BC("chat", "map", $ectype_ID, "A burst of cold laughter rings out in the darkness.")
		endif
		
	}
	
	//5???
	function EctypeTime9(){
//51219	??????
//51220	?????
//209	??????
//210	?????

		$ectype_ID = GetEctypeID(-1 ,166)
		$monster_level = GetEctypeVar(-1 ,110)
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		
		if $monster_level >= 100
			$monster_SID = 210
		else
			$monster_SID = 211
		endif
		
		$status = GetEctypeVar($ectype_ID,20)
		if $status == 2
			SetEctypeVar($ectype_ID,20,3)
			if $monster_level > 0
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51219 ,209,$monster_level,209,$monster_fieldlevel,1 , $ectype_ID , 44, 41, 0)
				else
					AddLevelMonster( 51219 ,209,$monster_level,1 , $ectype_ID , 44, 41, 0)
				endif
				BC("screen", "map", $ectype_ID, "The Specter Queen Sharna appeared!")
				StartEctypeTimer($ectype_ID,9)
			endif
		endif
		if $status == 3
			if $monster_level > 0
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51220 ,$monster_SID,$monster_level,$monster_SID,$monster_fieldlevel,30, $ectype_ID , 44, 41, 10)
				else
					AddLevelMonster( 51220 ,$monster_SID,$monster_level,30, $ectype_ID , 44, 41, 10)
				endif
				BC("screen", "map", $ectype_ID, "The True Observer appeared!")
			endif
		endif
		

		
	}
	
	