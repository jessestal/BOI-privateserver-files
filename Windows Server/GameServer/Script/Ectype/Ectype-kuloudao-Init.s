	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/01
	//		Author:??
	//		TaskName:Ectype-init-kuloudao222.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnCreate(){
		
		//$ectype
		//AddMonster( 30121, 5, -1, 74, 84, 5)
		//AddMonster( 30121, 5, -1, 71, 85, 5)
		//????????NPC
		DeleteNPC(1900, -1)
		DeleteNPC(1901, -1)
		DeleteNPC(1904, -1)
		DeleteNPC(1909, -1)
	}
	
	
	function InitTimer(){
	
	    //??????????
	    SetEctypeTimer(0, 2, "EctypeTime1")
	    SetEctypeTimer(1, 5, "EctypeTime2")
	    SetEctypeTimer(2, 5, "EctypeTime3")
	    SetEctypeTimer(3, 5, "EctypeTime4")
	    SetEctypeTimer(4, 5, "EctypeTime5")
	 	SetEctypeTimer(5, 5, "EctypeTime6")
	}
	
	//?????
	function EctypeTime1(){
		//??????
		$ectype_type = GetEctypeVar(-1 ,0)
		//??????ID
		$ectype_ID = GetEctypeID(-1 ,222)
		//BC("screen", "map", $ectype_ID, "GUID:04170000000", $ectype_type)
		if $ectype_type == 0
		//????
			AddMonster( 51101, 3, $ectype_ID, 75, 85 , 3 )
			AddMonster( 51101, 3, $ectype_ID, 72, 86,  4 )
			AddMonster( 51101, 4, $ectype_ID, 70, 90,  5 )
			BC("screen", "map", $ectype_ID, "Well, well!  Invaders!  Scouts, go and have a look...")
			AddMonster( 51102, 10,$ectype_ID, 64, 88,  7 )
		else
		//????
			if $ectype_type == 1
				AddMonster( 51121, 3, $ectype_ID, 75, 85 , 3 )
				AddMonster( 51121, 3, $ectype_ID, 72, 86,  4 )
				AddMonster( 51121, 4, $ectype_ID, 70, 90,  5 )
				BC("screen", "map", $ectype_ID, "Well, well!  Invaders!  Scouts, go and have a look...")
				AddMonster( 51122, 10,$ectype_ID, 64, 88,  7 )
			else
		//??????
				AddMonster( 51441, 3, $ectype_ID, 75, 85 , 3 )
				AddMonster( 51441, 3, $ectype_ID, 72, 86,  4 )
				AddMonster( 51441, 4, $ectype_ID, 70, 90,  5 )
				BC("screen", "map", $ectype_ID, "Well, well!  Invaders!  Scouts, go and have a look...")
				AddMonster( 51442, 10,$ectype_ID, 64, 88,  7 )
			endif
			
		endif
		
	}
	//??????
	function EctypeTime2(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51102,10 ,$ectype_ID, 64, 88,  7 )
		else
			if $ectype_type == 1
				AddMonster( 51122,10 ,$ectype_ID, 64, 88,  7 )
			else
				AddMonster( 51442,10 ,$ectype_ID, 64, 88,  7 )
			endif
		endif
		BC("screen", "map", $ectype_ID, "Armond: Go, kill them!")
	}
	
	function EctypeTime3(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51102,10 ,$ectype_ID, 64, 88,  7 )
		else
			if $ectype_type == 1
				AddMonster( 51122,10 ,$ectype_ID, 64, 88,  7 )
			else
				AddMonster( 51442,10 ,$ectype_ID, 64, 88,  7 )
			endif
		endif
		BC("screen", "map", $ectype_ID, "Armond: Come on! Don't give them a chance to  breathe!")
	}
	
	function EctypeTime4(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51102,10 ,$ectype_ID, 64, 88,  7 )
		else
			if $ectype_type == 1
				AddMonster( 51122,10 ,$ectype_ID, 64, 88,  7 )
			else
				AddMonster( 51442,10 ,$ectype_ID, 64, 88,  7 )
			endif
		endif
		BC("screen", "map", $ectype_ID, "Armond: Kill the invaders! Don't stop now!")
	}
	
	function EctypeTime5(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51102,10 ,$ectype_ID, 64, 88,  7 )
		else
			if $ectype_type == 1
				AddMonster( 51122,10 ,$ectype_ID, 64, 88,  7 )
			else
				AddMonster( 51442,10 ,$ectype_ID, 64, 88,  7 )
			endif
		endif
		BC("screen", "map", $ectype_ID, "Armond: You wimps! Do I have to do everything myself?!")
	}
	//???BOSS??
	function EctypeTime6(){
		$ectype_ID = GetEctypeID(-1 ,222)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51111, 1, $ectype_ID, 64, 88,  0 )
		else
			if $ectype_type == 1
				AddMonster( 51131, 1,$ectype_ID, 64, 88,  0 )
			else
				AddMonster( 51451, 1,$ectype_ID, 64, 88,  0 )
			endif
		endif
		BC("screen", "map", $ectype_ID, "Armond: All right! Here I come!")
	}