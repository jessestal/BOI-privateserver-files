	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/13
	//		Author:???
	//		TaskName:QUEST-npc-75.s
	//		TaskID:???? ???? 4425
	//
	//****************************************
	
	
	function OnTaskDone(){
		//--------????????56?,????????----
		$row = GetServerVar(56)
		//-----?????+1-----
		$row = $row + 1
		#name = GetPlayerInfo(-1,"name")
		//------????????,??69*(LV^3)/10----??-???lv*(300-lv)*15/10--2~5?lv*(300-lv)---	
		$lv = GetPlayerInfo( -1 , "level" )
		$lv2 = $lv * $lv
		$lv3 = $lv2 * $lv
		// ?1?
		$a1 = $lv3 / 100 
		$a11 = $a1 * 12
		$b1 = $a11 * 69 
		// ?2?~?5?
		$a2 = $lv3 / 50 
		$a22 = $a2 * 12
		$b2 = $a22 * 23
		
		$a3 = $lv3 / 250
		$a33 = $a3 * 12
		$b3 = $a33 * 92
		
		$a4 = $lv3 / 250
		$a44 = $a4 * 12
		$b4 = $a44 * 69
		
		$e = 300 - $lv
		$e1 = $e * 10
		$f = $e1 * $lv
		
		$g = $f * 15
		$h = $g / 10
		
		
		
		if $row == 1
			AddPlayerInfo( -1 , "exp" , $b1 )
			AddPlayerInfo( -1 , "money" , $h )
			AddPlayerInfo( -1 , "item" , 62527 , 1 )
			SetServerVar( 56 , $row )
			BC( "messagebox" , "player" , -1 ,  "Congratulations! You won Outer Starway's grade ",$row," prize and have been awarded ",$b1," EXP and a special pet Witch." )
			BC( "screen" , "server" , -1 , "The hero " , #name,"Congratulations! You won Outer Starway's grade ",$row," prize and has been awarded ",$b1," EXP and a special pet Witch.")
			PlayEffect( 0 , "common\liuxingyu2\keep\tx_liuxingyu2_keep_01.ini" )
			return
		endif
		if $row > 1
			if $row < 6
				AddPlayerInfo( -1 , "exp" , $b2 )
				AddPlayerInfo( -1 , "money" , $f )
				SetServerVar( 56 , $row )
				BC( "messagebox" , "player" , -1 ,  "Congratulations! You won Outer Starway's grade ",$row," prize and have been awarded ",$b2," EXP and a large amount of Coins." )
				BC( "screen" , "server" , -1 , "The hero " , #name,"Congratulations! You won Outer Starway's grade ",$row," prize and has been awarded ",$b2," EXP!")
				PlayEffect( 0 , "common\liuxingyu1\keep\tx_liuxingyu1_keep_01.ini" )
				return
			endif
		endif
		if $row >= 6
			if $row <= 30
				SetServerVar( 56 , $row )
				AddPlayerInfo( -1 , "exp" , $b3 )
				BC( "messagebox" , "player" , -1 ,  "Congratulations! You won Outer Starway's grade ",$row," prize and have been awarded ",$b3," EXP!" )
				return
			endif
		endif
		
		if $row > 30
			AddPlayerInfo( -1 , "exp" , $b4 )
			SetServerVar( 56 , $row )
			BC( "messagebox" , "player" , -1 ,  "Congratulations! You won Outer Starway's grade ",$row," prize and have been awarded ",$b4," EXP!" )
			return
		endif
		
	}
	
	
	
	
	