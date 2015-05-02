	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/17
	//		Author:???
	//		TaskName:Quest-caihong.s
	//		TaskID:?????
	//
	//****************************************
	
	//????1:?????????   3221
	//????2:???????       3222
	//????3:?????????? 20
	
	
	function OnTaskDone(){
		
		//????
		$level = GetPlayerInfo( -1, "level" )
		
		//?????
		$Task0 = GetPlayerVar( -1, 3221 )
		
		//?????
		$Task1 = GetPlayerVar( -1, 3222 )
		
		if $Task1 == 1
			//?????????:(980-(20000/(??+21)))*??*??/46
			$a = $Task0 + 21
			$b = 20000 / $a
			$c = 980 - $b
			$a1 = $c * $level
			$b1 = $a1 * $level
			$Expa = $b1 / 46
			if $level < 31
				$level = 31
			endif
			$Expb = $level - 31
			$Expc = $Expb * 7
			$Expd = $Expc + 1000
			$Expe = $Expd * $Expa
			//?????
			$add_exp1 = $Expe / 1000
			$add_exp1 = $add_exp1 * 15
			$add_exp1 = $add_exp1 / 10
			
			//?????????:(3800+(LV-20)*40)*(101+42*(N-1))/10000
			$a0 = $level - 20
			$b0 = $a0 * 40
			$c0 = $b0 + 3800
			$a2 = $Task0 - 1
			$b2 = $a2 * 42
			$c2 = $b2 + 101
			$d2 = $c2 * $c0
			//?????
			$add_money1 = $d2 / 10000
			
			//????
			AddPlayerInfo( -1, "exp", $add_exp1 )
			AddPlayerInfo( -1, "money", $add_money1 )
			BC( "dialogbox", "player", -1, "You are on the first phase of Rainbow Sonata, you will receive a greater reward!" )
		else
			//???????:((980-(20000/(??+21)))*??*??/46)/2
			$a10 = $Task0 + 21
			$b10 = 20000 / $a10
			$c10 = 980 - $b10
			$a20 = $c10 * $level
			$b20 = $a20 * $level
			$c20 = $b20 / 46
			$Expa = $c20 / 2
			if $level < 31
				$level = 31
			endif
			$Expb = $level - 31
			$Expc = $Expb * 7
			$Expd = $Expc + 1000
			$Expe = $Expd * $Expa
			//???????
			$add_exp = $Expe / 1000
			$add_exp = $add_exp * 15
			$add_exp = $add_exp / 10
		
			//???????:{(3800+(LV-20)*40)*(101+42*(N-1))*6}/100000
			$a30 = $level - 20
			$b30 = $a30 * 40
			$c30 = $b30 + 3800
			$a40 = $Task0 - 1
			$b40 = $a40 * 42
			$c40 = $b40 + 101
			$d40 = $c40 * 6
			$e40 = $d40 * $c30
			//???????
			$add_money = $e40 / 100000
		
			//????
			AddPlayerInfo( -1, "exp", $add_exp )
			AddPlayerInfo( -1, "money", $add_money )	
		endif		
		
		if $Task0 == 5
			AddPlayerInfo( -1, "item", 64411, 1 )
		endif
		if $Task0 == 10
			AddPlayerInfo( -1, "item", 64412, 1 )
		endif
		if $Task0 == 15
			AddPlayerInfo( -1, "item", 64413, 1 )
		endif
		if $Task0 == 20
			$Random = RandomNumber( 1, 1000 )
			if $Random <= 100
				AddPlayerInfo( -1, "item", 60014, 1 )
			endif
			if $Random > 100
				if $Random <= 400
					AddPlayerInfo( -1, "item", 60500, 1 )
				endif
			endif
			if $Random > 400
				if $Random <= 500
					AddPlayerInfo( -1, "item", 60501, 1 )
				endif
			endif
			if $Random > 500
				if $Random <= 560
					AddPlayerInfo( -1, "item", 60502, 1 )
				endif
			endif
			if $Random > 560
				if $Random <= 565
					AddPlayerInfo( -1, "item", 64404, 1 )
				endif
			endif
			if $Random > 565
				if $Random <= 880
					AddPlayerInfo( -1, "item", 64414, 1 )
				endif
			endif
			if $Random > 880
				if $Random <= 1000
					AddPlayerInfo( -1, "item", 64264, 1 )
				endif
			endif
		endif
		
		if $Task1 == 1
			if $Task0 == 20
				AddPlayerInfo( -1, "item", 59114, 1 )
			endif
		endif
				
		//??????
		SetPlayerVar( -1, 20, 0 )
		//????
		$Task0 = $Task0 + 1
		SetPlayerVar( -1 , 3221 , $Task0 )
		
		$Status = IsExistStatus( -1, 10509 )
		if $Status != 0
			return
		endif
		AddStatus( -1, 10509, 2 )
	}