   //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/1/18
	//		Author:??
	//		TaskName:HD-duobaoqibing-M30161.s
	//		TaskID:????,??????
	//****************************************
	
	function OnDead(){
	
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Minute =  GetSystemTime( "minute")
		$result = IsTaskAccept( -1, 4406 )
		if $result != 0
			BC("screen", "player", -1, "Unable to get a reward without Bountyhunter quest.")
			return
		endif
		
		if $Now_Hour >= 21
			if $Now_Hour <= 22
				$n = RandomNumber(1,10)
				if $n == 1
					#name = GetPlayerInfo(-1 , "name")
					$level = GetPlayerInfo(-1 , "level")
					$a = $level * $level 
					$b = $a * 2
					$add_exp = $b / 10
					BC("screen", "map", 154, "The hero ",#name, " has received the Blessings of Generosity after opening a Chest! All players in Wonderland receive bonus EXP: ",$add_exp,"." )
					AddMapPlayerInfo (154, "exp", $add_exp)
				endif
				
				$n2 = RandomNumber(1,40)
				if $n2 <= 36
					DropMonsterItems(-1, 60071)
				endif
				if $n2 == 37
					UseSkill(-1 , 8522 , 1)
				endif
				if $n2 == 38
					UseSkill(-1 , 8525 , 1)
				endif
				if $n2 == 39
					UseSkill(-1 , 8523 , 1)
				endif
				if $n2 == 40
					UseSkill(-1 , 8524 , 1)
				endif
			endif
		endif
		
		if $Now_Hour == 23
			if $Now_Minute == 0
				$n = RandomNumber(1,10)
				if $n == 1
					#name = GetPlayerInfo(-1 , "name")
					$level = GetPlayerInfo(-1 , "level")
					$a = $level * $level 
					$b = $a * 2
					$add_exp = $b / 10
					BC("screen", "map", 154, "The hero ",#name, " has received the Blessings of Generosity after opening a Chest! All players in Wonderland receive bonus EXP: ",$add_exp,"." )
					AddMapPlayerInfo (154, "exp", $add_exp)
				endif
				
				$n2 = RandomNumber(1,40)
				if $n2 <= 36
					DropMonsterItems(-1, 60071)
				endif
				if $n2 == 37
					UseSkill(-1 , 8522 , 1)
				endif
				if $n2 == 38
					UseSkill(-1 , 8525 , 1)
				endif
				if $n2 == 39
					UseSkill(-1 , 8523 , 1)
				endif
				if $n2 == 40
					UseSkill(-1 , 8524 , 1)
				endif
			endif
		endif
		
	}
