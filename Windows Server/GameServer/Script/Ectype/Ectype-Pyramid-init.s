	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/31
	//		Author:???
	//		TaskName:Ectype-Pyramid-init.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
		DeleteNPC( 1990, $ectype_ID )
		DeleteNPC( 1991, $ectype_ID )
		DeleteNPC( 1992, $ectype_ID )
		DeleteNPC( 1993, $ectype_ID )
		DeleteNPC( 1994, $ectype_ID )
		DeleteNPC( 1995, $ectype_ID )
		DeleteNPC( 1996, $ectype_ID )
		DeleteNPC( 1997, $ectype_ID )
		DeleteNPC( 1998, $ectype_ID )
		DeleteNPC( 1999, $ectype_ID )
		DeleteNPC( 2000, $ectype_ID )
		DeleteNPC( 2001, $ectype_ID )
		DeleteNPC( 2002, $ectype_ID )
		DeleteNPC( 2003, $ectype_ID )
		DeleteNPC( 2004, $ectype_ID )
		DeleteNPC( 2005, $ectype_ID )
		DeleteNPC( 2006, $ectype_ID )
		DeleteNPC( 2007, $ectype_ID )
		DeleteNPC( 2008, $ectype_ID )
		DeleteNPC( 2009, $ectype_ID )
		
		$Rad = RandomNumber( 1, 4 )
		if $Rad == 1
			SetEctypeVar( -1, 110, 1 )
			AddNPC( 1998, $ectype_ID )
			AddNPC( 1999, $ectype_ID )
			AddNPC( 2000, $ectype_ID )
			AddNPC( 2001, $ectype_ID )
		endif
		if $Rad == 2
			SetEctypeVar( -1, 110, 2 )
		endif
		if $Rad == 3
			SetEctypeVar( -1, 110, 3 )
		endif
		if $Rad == 4
			SetEctypeVar( -1, 110, 4 )
			AddNPC( 2008, $ectype_ID )
		endif
		
		$Random = RandomNumber( 1, 3 )
		if $Random == 1
			SetEctypeVar( -1, 113, 1234 )
		endif
		if $Random == 2
			SetEctypeVar( -1, 113, 2413 )
		endif
		if $Random == 3
			SetEctypeVar( -1, 113, 4123 )
		endif
		
	}
	
	
	function InitTimer(){
	  //??????????
	  SetEctypeTimer( 0, 2, "EctypeTime1" )	    
	}
	
	//?????
	function EctypeTime1(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
	
		$ectype_type = GetEctypeVar( -1, 110 )
		$ectype_var = GetEctypeVar( -1, 4 )
		if $ectype_type == 1
			BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
		endif
		if $ectype_type == 2
			if $ectype_var == 0
				AddMonster( 51497, 20, $ectype_ID, 48, 77 , 10 )
				AddMonster( 51497, 20, $ectype_ID, 54, 78 , 10 )
				AddMonster( 51497, 10, $ectype_ID, 56, 71 , 6 )
				$Rand = RandomNumber( 1, 5 )
				if $Rand == 1
					AddMonster( 51500, 1, $ectype_ID, 52, 71 , 0 )
				endif
				if $Rand == 2
					AddMonster( 51500, 1, $ectype_ID, 56, 72 , 0 )
				endif
				if $Rand == 3
					AddMonster( 51500, 1, $ectype_ID, 56, 77 , 0 )
				endif
				if $Rand == 4
					AddMonster( 51500, 1, $ectype_ID, 46, 71 , 0 )
				endif
				if $Rand == 5
					AddMonster( 51500, 1, $ectype_ID, 57, 72 , 0 )
				endif
				BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
			else
				AddMonster( 51228, 20, $ectype_ID, 48, 77 , 10 )
				AddMonster( 51228, 20, $ectype_ID, 54, 78 , 10 )
				AddMonster( 51228, 10, $ectype_ID, 56, 71 , 6 )
				$Rand = RandomNumber( 1, 5 )
				if $Rand == 1
					AddMonster( 51231, 1, $ectype_ID, 52, 71 , 0 )
				endif
				if $Rand == 2
					AddMonster( 51231, 1, $ectype_ID, 56, 72 , 0 )
				endif
				if $Rand == 3
					AddMonster( 51231, 1, $ectype_ID, 56, 77 , 0 )
				endif
				if $Rand == 4
					AddMonster( 51231, 1, $ectype_ID, 46, 71 , 0 )
				endif
				if $Rand == 5
					AddMonster( 51231, 1, $ectype_ID, 57, 72 , 0 )
				endif
				BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
			endif	
		endif
		if $ectype_type == 3
			if $ectype_var == 0
				AddMonster( 51498, 20, $ectype_ID, 48, 77 , 9 )
				AddMonster( 51498, 20, $ectype_ID, 54, 78 , 9 )
				AddMonster( 51498, 10, $ectype_ID, 56, 71 , 6 )
				BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
			else
				AddMonster( 51229, 20, $ectype_ID, 48, 77 , 9 )
				AddMonster( 51229, 20, $ectype_ID, 54, 78 , 9 )
				AddMonster( 51229, 10, $ectype_ID, 56, 71 , 6 )
				BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
			endif
		endif
		if $ectype_type == 4
			if $ectype_var == 0
				AddMonster( 51499, 7, $ectype_ID, 48, 77 , 8 )
				AddMonster( 51499, 7, $ectype_ID, 54, 78 , 8 )
				AddMonster( 51499, 6, $ectype_ID, 56, 71 , 8 )
				BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
			else
				AddMonster( 51230, 7, $ectype_ID, 48, 77 , 8 )
				AddMonster( 51230, 7, $ectype_ID, 54, 78 , 8 )
				AddMonster( 51230, 6, $ectype_ID, 56, 71 , 8 )
				BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
			endif
		endif
		
	}
	