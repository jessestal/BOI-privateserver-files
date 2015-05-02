	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:Ectype-datanbao-Init.s
	//		TaskID:???-??????
	//
	//****************************************
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		SetEctypeTimer(2,5,"EctypeTime2")
		SetEctypeTimer(3,4,"EctypeTime3")
		SetEctypeTimer(4,1,"EctypeTime4")
		
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 854, $ectype_ID, 84, 84, 180000, 0 )
		
	}
	
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID( -1 , 559 )
		$playerid = GetEctypeVar($ectype_ID,110)
		$a = GetEctypeVar($ectype_ID,12)
		if $a == 0
			BC("screen","player",$playerid,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			SetEctypeVar($ectype_ID,10,1)
		else
			BC("screen","player",$playerid,"I'm sorry, you haven't yet passed the test of fate. Try again!")
			DeleteMonster($ectype_ID,53005)
			DeleteMonster($ectype_ID,53006)
			SetEctypeVar($ectype_ID,5,0)			
		endif
		
	}
	
	function EctypeTime3(){
		
		$ectype_ID = GetEctypeID( -1 , 559 )	
		$a = GetEctypeVar($ectype_ID,3)
		$playerid = GetEctypeVar($ectype_ID,110)
		
		
		$ceng = GetEctypeVar($ectype_ID,1)
		$x = GetPlayerInfo($playerid,"mapposx")
		$y = GetPlayerInfo($playerid,"mapposy")
		//???
		if $ceng < 2
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Kill all the monsters!")
				$level = GetPlayerInfo($playerid,"level")
				$fieldlevel = GetFieldLevel($playerid)
				if $fieldlevel < 1
					AddLevelMonster(53001,219,$level,1,$ectype_ID,31,33,0)
				else
					AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,31,33,0)
				endif
			endif
		endif
		//???
		if $ceng == 2
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,32,30)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,84,83,180000,0)
						SetPlayerVar($playerid,3419,1)
						SetEctypeVar($ectype_ID,1,1)
					endif
				else				
					BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Change all these monsters into the same color!")
					AddMonsterByFloat(53002,1,$ectype_ID,124,82,0)
					AddMonsterByFloat(53003,1,$ectype_ID,132,89,0)
					AddMonsterByFloat(53004,1,$ectype_ID,134,78,0)
					SetEctypeVar($ectype_ID,7,1)
					SetEctypeVar($ectype_ID,8,1)
					SetEctypeVar($ectype_ID,9,1)
				endif
			endif
		endif
		//???
		if $ceng == 3
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! Favor of the Goddess of Fate has bestowed an Opportunity of Fate! Destroy it to earn EXP!")
				BC( "screen" , "player" , $playerid, "You must kill all the monsters at once to pass on to the next level!" )
				AddMonsterByFloat(53006,1,$ectype_ID,180,83,0)
				AddMonsterByFloat(53006,1,$ectype_ID,167,84,0)
				$zhiye = GetPlayerInfo($playerid,"profession")
				$level = GetPlayerInfo($playerid,"level")
				$fieldlevel = GetFieldLevel($playerid)
				if $zhiye != 3
					if $zhiye != 6
						if $fieldlevel < 1
							AddLevelMonster(53005,234,$level,3,$ectype_ID,66,31,2)
							AddLevelMonster(53005,234,$level,3,$ectype_ID,68,34,2)
							AddLevelMonster(53005,234,$level,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,66,31,2)
							AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,68,34,2)
							AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					else 
						if $fieldlevel < 1
							AddLevelMonster(53005,220,$level,3,$ectype_ID,66,31,2)
							AddLevelMonster(53005,220,$level,3,$ectype_ID,68,34,2)
							AddLevelMonster(53005,220,$level,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,66,31,2)
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,68,34,2)
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				else
					if $fieldlevel < 1
						AddLevelMonster(53005,220,$level,3,$ectype_ID,66,31,2)
						AddLevelMonster(53005,220,$level,3,$ectype_ID,68,34,2)
						AddLevelMonster(53005,220,$level,3,$ectype_ID,70,32,2)
						SetEctypeVar($ectype_ID,12,9)
					else
						AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,66,31,2)
						AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,68,34,2)
						AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,70,32,2)
						SetEctypeVar($ectype_ID,12,9)
					endif
				endif
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,50,33)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,130,83,180000,0)
						SetPlayerVar($playerid,3419,2)
						SetEctypeVar($ectype_ID,1,2)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm very sorry, but you must take the challenge of fate!")
					AddMonsterByFloat(53006,1,$ectype_ID,167,84,0)
					$zhiye = GetPlayerInfo($playerid,"profession")
					$level = GetPlayerInfo($playerid,"level")
					$fieldlevel = GetFieldLevel($playerid)
					if $zhiye != 3
						if $zhiye != 6
							if $fieldlevel < 1
								AddLevelMonster(53005,234,$level,3,$ectype_ID,66,31,2)
								AddLevelMonster(53005,234,$level,3,$ectype_ID,68,34,2)
								AddLevelMonster(53005,234,$level,3,$ectype_ID,70,32,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,66,31,2)
								AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,68,34,2)
								AddLevelFieldMonster(53005,234,$level,234,$fieldlevel,3,$ectype_ID,70,32,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						else 
							if $fieldlevel < 1
								AddLevelMonster(53005,220,$level,3,$ectype_ID,66,31,2)
								AddLevelMonster(53005,220,$level,3,$ectype_ID,68,34,2)
								AddLevelMonster(53005,220,$level,3,$ectype_ID,70,32,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,66,31,2)
								AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,68,34,2)
								AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,70,32,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						endif
					else
						if $fieldlevel < 1
							AddLevelMonster(53005,220,$level,3,$ectype_ID,66,31,2)
							AddLevelMonster(53005,220,$level,3,$ectype_ID,68,34,2)
							AddLevelMonster(53005,220,$level,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,66,31,2)
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,68,34,2)
							AddLevelFieldMonster(53005,220,$level,220,$fieldlevel,3,$ectype_ID,70,32,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				endif
			endif
		endif
		//???
		if $ceng == 4
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! The Goddess of Fate will help you to slow down the monsters!") 
				AddMonsterByFloat(53007,1,$ectype_ID,222,80,0)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,68,33)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,174,83,180000,0)
						SetPlayerVar($playerid,3419,3)
						SetEctypeVar($ectype_ID,1,3)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm sorry, but you weren't able to obtain the goddess's help! You'll just have to rely on your own luck!")
					AddMonsterByFloat(53007,1,$ectype_ID,222,80,0)
				endif
			endif
		endif
		//???
		if $ceng == 5
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,87,33)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,222,83,180000,0)
						SetPlayerVar($playerid,3419,4)
						SetEctypeVar($ectype_ID,1,4)
					endif
				else				
					BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Kill all the monsters!")
					$level = GetPlayerInfo($playerid,"level")
					$fieldlevel = GetFieldLevel($playerid)
					if $fieldlevel < 1
						AddLevelMonster(53001,219,$level,1,$ectype_ID,31,50,0)
						AddLevelMonster(53001,219,$level,1,$ectype_ID,31,50,0)
					else
						AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,31,50,0)
						AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,35,51,0)
					endif
				endif
			endif
		endif
		//???
		if $ceng == 6
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,33,51)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,84,129,180000,0)
						SetPlayerVar($playerid,3419,5)
						SetEctypeVar($ectype_ID,1,5)
					endif
				else				
					BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Change all these monsters into the same color!")
					AddMonsterByFloat(53002,1,$ectype_ID,125,131,0)
					AddMonsterByFloat(53003,1,$ectype_ID,128,135,0)
					AddMonsterByFloat(53004,1,$ectype_ID,136,127,0)
					AddMonsterByFloat(53002,1,$ectype_ID,135,132,0)
					AddMonsterByFloat(53003,1,$ectype_ID,128,126,0)
					AddMonsterByFloat(53004,1,$ectype_ID,130,135,0)
					SetEctypeVar($ectype_ID,7,2)
					SetEctypeVar($ectype_ID,8,2)
					SetEctypeVar($ectype_ID,9,2)
				endif
			endif
		endif
		//???
		if $ceng == 7
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! Favor of the Goddess of Fate has bestowed an Opportunity of Fate! Destroy it to earn EXP!")
				BC( "screen" , "player" , $playerid, "You must kill all the monsters at once to pass on to the next level!" )
				AddMonsterByFloat(53006,1,$ectype_ID,180,130,0)
				AddMonsterByFloat(53006,1,$ectype_ID,167,130,0)
				$zhiye = GetPlayerInfo($playerid,"profession")
				$level = GetPlayerInfo($playerid,"level")
				$fieldlevel = GetFieldLevel($playerid)
				if $zhiye != 3
					if $zhiye != 6
						if $fieldlevel < 1
							AddLevelMonster(53005,235,$level,3,$ectype_ID,70,49,2)
							AddLevelMonster(53005,235,$level,3,$ectype_ID,66,50,2)
							AddLevelMonster(53005,235,$level,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,70,49,2)
							AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,66,50,2)
							AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					else 
						if $fieldlevel < 1
							AddLevelMonster(53005,221,$level,3,$ectype_ID,70,49,2)
							AddLevelMonster(53005,221,$level,3,$ectype_ID,66,50,2)
							AddLevelMonster(53005,221,$level,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,70,49,2)
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,66,50,2)
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				else
					if $fieldlevel < 1
						AddLevelMonster(53005,221,$level,3,$ectype_ID,70,49,2)
						AddLevelMonster(53005,221,$level,3,$ectype_ID,66,50,2)
						AddLevelMonster(53005,221,$level,3,$ectype_ID,69,52,2)
						SetEctypeVar($ectype_ID,12,9)
					else
						AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,70,49,2)
						AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,66,50,2)
						AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,69,52,2)
						SetEctypeVar($ectype_ID,12,9)
					endif
				endif
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,50,51)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,130,129,180000,0)
						SetPlayerVar($playerid,3419,6)
						SetEctypeVar($ectype_ID,1,6)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm very sorry, but you must take the challenge of fate!")
					AddMonsterByFloat(53006,1,$ectype_ID,167,130,0)
					$zhiye = GetPlayerInfo($playerid,"profession")
					$level = GetPlayerInfo($playerid,"level")
					$fieldlevel = GetFieldLevel($playerid)
					if $zhiye != 3
						if $zhiye != 6
							if $fieldlevel < 1
								AddLevelMonster(53005,235,$level,3,$ectype_ID,70,49,2)
								AddLevelMonster(53005,235,$level,3,$ectype_ID,66,50,2)
								AddLevelMonster(53005,235,$level,3,$ectype_ID,69,52,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,70,49,2)
								AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,66,50,2)
								AddLevelFieldMonster(53005,235,$level,235,$fieldlevel,3,$ectype_ID,69,52,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						else 
							if $fieldlevel < 1
								AddLevelMonster(53005,221,$level,3,$ectype_ID,70,49,2)
								AddLevelMonster(53005,221,$level,3,$ectype_ID,66,50,2)
								AddLevelMonster(53005,221,$level,3,$ectype_ID,69,52,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,70,49,2)
								AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,66,50,2)
								AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,69,52,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						endif
					else
						if $fieldlevel < 1
							AddLevelMonster(53005,221,$level,3,$ectype_ID,70,49,2)
							AddLevelMonster(53005,221,$level,3,$ectype_ID,66,50,2)
							AddLevelMonster(53005,221,$level,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,70,49,2)
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,66,50,2)
							AddLevelFieldMonster(53005,221,$level,221,$fieldlevel,3,$ectype_ID,69,52,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				endif
			endif
		endif	
		//???
		if $ceng == 8
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! The Goddess of Fate will help you to slow down the monsters!") 
				AddMonsterByFloat(53007,1,$ectype_ID,222,127,0)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,68,51)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,176,129,180000,0)
						SetPlayerVar($playerid,3419,7)
						SetEctypeVar($ectype_ID,1,7)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm sorry, but you weren't able to obtain the goddess's help! You'll just have to rely on your own luck!")
					AddMonsterByFloat(53007,1,$ectype_ID,222,127,0)
				endif
			endif
		endif
		//???
		if $ceng == 9
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,87,51)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,222,129,180000,0)
						SetPlayerVar($playerid,3419,8)
						SetEctypeVar($ectype_ID,1,8)
					endif
				else				
					BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Kill all the monsters!")
					$level = GetPlayerInfo($playerid,"level")
					$fieldlevel = GetFieldLevel($playerid)
					if $fieldlevel < 1
						AddLevelMonster(53001,219,$level,1,$ectype_ID,31,67,0)
						AddLevelMonster(53001,219,$level,1,$ectype_ID,35,67,0)
						AddLevelMonster(53001,219,$level,1,$ectype_ID,33,64,0)
						
					else
						AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,31,67,0)
						AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,35,67,0)
						AddLevelFieldMonster(53001,219,$level,219,$fieldlevel,1,$ectype_ID,33,64,0)
					endif
				endif
			endif
		endif
		//???
		if $ceng == 10
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"Congratulations, you lucky person! You've received Favor of the Goddess of Fate, you can directly enter the next level!")
				SetEctypeVar($ectype_ID,10,1)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,32,68)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,84,172,180000,0)
						SetPlayerVar($playerid,3419,9)
						SetEctypeVar($ectype_ID,1,9)
					endif
				else				
					BC("screen","player",$playerid,"I'm very sorry, but you must take the test of fate! Change all these monsters into the same color!")
					AddMonsterByFloat(53002,1,$ectype_ID,135,171,0)
					AddMonsterByFloat(53002,1,$ectype_ID,135,173,0)
					AddMonsterByFloat(53003,1,$ectype_ID,131,180,0)
					AddMonsterByFloat(53003,1,$ectype_ID,133,180,0)
					AddMonsterByFloat(53004,1,$ectype_ID,122,176,0)
					AddMonsterByFloat(53004,1,$ectype_ID,122,174,0)
					AddMonsterByFloat(53002,1,$ectype_ID,127,172,0)
					AddMonsterByFloat(53003,1,$ectype_ID,134,178,0)
					AddMonsterByFloat(53004,1,$ectype_ID,125,175,0)
					SetEctypeVar($ectype_ID,7,3)
					SetEctypeVar($ectype_ID,8,3)
					SetEctypeVar($ectype_ID,9,3)
				endif
			endif
		endif
		//????
		if $ceng == 11
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! Favor of the Goddess of Fate has bestowed an Opportunity of Fate! Destroy it to earn EXP!")
				BC( "screen" , "player" , $playerid, "You must kill all the monsters at once to pass on to the next level!" )
				$zhiye = GetPlayerInfo($playerid,"profession")
				$level = GetPlayerInfo($playerid,"level")
				$fieldlevel = GetFieldLevel($playerid)
				AddMonsterByFloat(53006,1,$ectype_ID,180,171,0)
				AddMonsterByFloat(53006,1,$ectype_ID,167,180,0)
				if $zhiye != 3
					if $zhiye != 6
						if $fieldlevel < 1
							AddLevelMonster(53005,236,$level,3,$ectype_ID,69,69,2)
							AddLevelMonster(53005,236,$level,3,$ectype_ID,65,69,2)
							AddLevelMonster(53005,236,$level,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,69,69,2)
							AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,65,69,2)
							AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					else 
						if $fieldlevel < 1
							AddLevelMonster(53005,222,$level,3,$ectype_ID,69,69,2)
							AddLevelMonster(53005,222,$level,3,$ectype_ID,65,69,2)
							AddLevelMonster(53005,222,$level,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,69,69,2)
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,65,69,2)
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				else
					if $fieldlevel < 1
						AddLevelMonster(53005,222,$level,3,$ectype_ID,69,69,2)
						AddLevelMonster(53005,222,$level,3,$ectype_ID,65,69,2)
						AddLevelMonster(53005,222,$level,3,$ectype_ID,68,66,2)
						SetEctypeVar($ectype_ID,12,9)
					else
						AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,69,69,2)
						AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,65,69,2)
						AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,68,66,2)
						SetEctypeVar($ectype_ID,12,9)
					endif
				endif
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,50,68)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,130,172,180000,0)
						SetPlayerVar($playerid,3419,10)
						SetEctypeVar($ectype_ID,1,10)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm very sorry, but you must take the challenge of fate!")
					AddMonsterByFloat(53006,1,$ectype_ID,167,180,0)
					$zhiye = GetPlayerInfo($playerid,"profession")
					$level = GetPlayerInfo($playerid,"level")
					$fieldlevel = GetFieldLevel($playerid)
					if $zhiye != 3
						if $zhiye != 6
							if $fieldlevel < 1
								AddLevelMonster(53005,236,$level,3,$ectype_ID,69,69,2)
								AddLevelMonster(53005,236,$level,3,$ectype_ID,65,69,2)
								AddLevelMonster(53005,236,$level,3,$ectype_ID,68,66,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,69,69,2)
								AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,65,69,2)
								AddLevelFieldMonster(53005,236,$level,236,$fieldlevel,3,$ectype_ID,68,66,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						else 
							if $fieldlevel < 1
								AddLevelMonster(53005,222,$level,3,$ectype_ID,69,69,2)
								AddLevelMonster(53005,222,$level,3,$ectype_ID,65,69,2)
								AddLevelMonster(53005,222,$level,3,$ectype_ID,68,66,2)
								SetEctypeVar($ectype_ID,12,9)
							else
								AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,69,69,2)
								AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,65,69,2)
								AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,68,66,2)
								SetEctypeVar($ectype_ID,12,9)
							endif
						endif
					else
						if $fieldlevel < 1
							AddLevelMonster(53005,222,$level,3,$ectype_ID,69,69,2)
							AddLevelMonster(53005,222,$level,3,$ectype_ID,65,69,2)
							AddLevelMonster(53005,222,$level,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						else
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,69,69,2)
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,65,69,2)
							AddLevelFieldMonster(53005,222,$level,222,$fieldlevel,3,$ectype_ID,68,66,2)
							SetEctypeVar($ectype_ID,12,9)
						endif
					endif
				endif
			endif
		endif	
		//????
		if $ceng == 12
			$b = GetEctypeVar($ectype_ID,2)
			if $a == $b 
				BC("dialogbox","player",$playerid,"What fortune! The Goddess of Fate will help you to slow down the monsters!") 
				AddMonsterByFloat(53007,1,$ectype_ID,222,172,0)
			else
				$eyun = RandomNumber(1,1000)
				if $eyun == 1
					BC("screen","player",$playerid,"Oh, what misfortune - you'll have to go back and complete the previous level!")
					$fly = FlyToMap($playerid,$ectype_ID,68,68)
					if $fly > 0
						SetEctypeVar($ectype_ID,5,0)
						SetEctypeVar($ectype_ID,10,0)
						DeleteNPC(854,-1)
						AddNpcByPos(854,$ectype_ID,174,172,180000,0)
						SetPlayerVar($playerid,3419,11)
						SetEctypeVar($ectype_ID,1,11)
					endif
				else				
					BC("dialogbox","player",$playerid,"I'm sorry, but you weren't able to obtain the goddess's help! You'll just have to rely on your own luck!")
					AddMonsterByFloat(53007,1,$ectype_ID,222,172,0)
				endif
			endif
		endif
	
	
	}
	
	function EctypeTime4(){
		
		$ectype_ID = GetEctypeID( -1 , 559 )
		$playerid = GetEctypeVar($ectype_ID,110)
		$a = GetEctypeVar($ectype_ID,7)
		$b = GetEctypeVar($ectype_ID,8)
		$c = GetEctypeVar($ectype_ID,9)
		
		if $a == 0
			if $b == 0
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",$playerid,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
		
		if $a == 0
			if $c == 0
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",$playerid,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
		
		if $b == 0
			if $c == 0
				SetEctypeVar($ectype_ID,10,1)
				BC("screen","player",$playerid,"Victorious, lucky warrior! Allow me to grant you the privilege of entering the next level!")
			endif
		endif
		
	}
		