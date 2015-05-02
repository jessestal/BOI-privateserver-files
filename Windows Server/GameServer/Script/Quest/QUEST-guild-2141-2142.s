	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/19
	//		Author:???
	//		TaskName:QUEST-guild-2141-2142.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		
		
		//---1 gold ---2  silver---
		$type = GetPlayerVar(-1,3671)
		$complateone = GetPlayerVar(-1,3674)
		$complatetwo = GetPlayerVar(-1,3673)
		$complatethr = GetPlayerVar(-1,3674)
		$count = GetTeamMemberCount(-1)
		$level = GetPlayerInfo( -1 , "level")
		//------???? 2ma + na  m??????????? n??-----------
		$a = $level * $level
		$b = $a * 17
		$c = $b / 10
		
		
		if $count > 1
		
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			
			//-----------------
			$type1 = 0
			$type2 = 0
			$type3 = 0
			$type4 = 0
			$type5 = 0
			$type6 = 0
			//-----------------
			if $Men1 != -1
				$type1 = GetPlayerVar($Men1,3671)
			endif
				
			if $Men2 != -1
				$type2 = GetPlayerVar($Men2,3671)
			endif
				
			if $Men3 != -1
				$type3 = GetPlayerVar($Men3,3671)
			endif
				
			if $Men4 != -1
				$type4 = GetPlayerVar($Men4,3671)
			endif
				
			if $Men5 != -1
				$type5 = GetPlayerVar($Men5,3671)
			endif
				
			if $Men6 != -1
				$type6 = GetPlayerVar($Men6,3671)
			endif
				//------??????-------
			$gcount = 0
			if $type1 == 1
				$gcount += 1
			endif
			if $type2 == 1
				$gcount += 1
			endif
			if $type3 == 1
				$gcount += 1
			endif
			if $type4 == 1
				$gcount += 1
			endif
			if $type5 == 1
				$gcount += 1
			endif
			if $type6 == 1
				$gcount += 1
			endif
				//------??????-------
			$scount = 0
			if $type1 == 2
				$scount += 1
			endif
			if $type2 == 2
				$scount += 1
			endif
			if $type3 == 2
				$scount += 1
			endif
			if $type4 == 2
				$scount += 1
			endif
			if $type5 == 2
				$scount += 1
			endif
			if $type6 == 2
				$scount += 1
			endif
			//-----????---------
			$g = $gcount
			//-----????--------
			$s = $scount
			//-----????????---------	
			
			$e1 = 2 * $c
			$f1 = $e1 * $g
			$h1 = $s * $c
			$exp1 = $f1 + $h1
			//-----????????---------
			$e2 = 2 * $c
			$f2 = $e2 * $s
			$h2 = $g * $c
			$exp2 = $f2 + $h2
			
			$e3 = 14 * $c
			$exp3 = $e3
				
			if $g > $s
				if $type == 1
					$Info1 = SubPlayerInfo( -1 ,"item",12586,-1)
					if $Info1 == 0
						AddPlayerInfo( -1 , "exp",$exp1)
						AddPlayerInfo( -1 , "guildoffer",3)
						SetPlayerVar(-1,3674,1)
						SetTaskDone(-1,2143)
						AddPlayerInfo( -1 , "guildmoney",1000)
						AddPlayerInfo( -1 , "guildprosperity",30)
						AddPlayerInfo( -1 , "exp",$exp3)
						BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
						BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp3," EXP." )
					else
						BC( "screen", "player", -1, "You have to acquire a Golden Box of the God of Wisdom before you can receive a reward." )
					endif
				endif
				if $type == 2 
					$Info2 = SubPlayerInfo( -1 ,"item",12587,-1)
					if $Info2 == 0
						AddPlayerInfo( -1 , "exp",$exp1) 
						AddPlayerInfo( -1 , "guildoffer",3)
						SetPlayerVar(-1,3674,1)
						SetTaskDone(-1,2143)
						AddPlayerInfo( -1 , "guildmoney",1000)
						AddPlayerInfo( -1 , "guildprosperity",30)
						AddPlayerInfo( -1 , "exp",$exp3)
						BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
						BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp3," EXP." )
					else
						BC( "screen", "player", -1, "You have to acquire a Silver Kettle of the God of Wisdom before you can receive a reward." )
					endif
				endif
				SetPlayerVar(-1,3674,1)
			else
				if $type == 1
					$Info3 = SubPlayerInfo( -1 ,"item",12586,-1)
					if $Info3 == 0
						AddPlayerInfo( -1 , "exp",$exp2)
						AddPlayerInfo( -1 , "guildoffer",3)
						SetPlayerVar(-1,3674,1)
						SetTaskDone(-1,2143)
						AddPlayerInfo( -1 , "guildmoney",1000)
						AddPlayerInfo( -1 , "guildprosperity",30)
						AddPlayerInfo( -1 , "exp",$exp3)
						BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
						BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp3," EXP." )
					else
						BC( "screen", "player", -1, "You have to acquire a Golden Box of the God of Wisdom before you can receive a reward." )
					endif
				endif
				if $type == 2 
					$Info4 = SubPlayerInfo( -1 ,"item",12587,-1)
					if $Info4 == 0
						AddPlayerInfo( -1 , "exp",$exp2)
						AddPlayerInfo( -1 , "guildoffer",3)
						SetPlayerVar(-1,3674,1)
						SetTaskDone(-1,2143) 
						AddPlayerInfo( -1 , "guildmoney",1000)
						AddPlayerInfo( -1 , "guildprosperity",30)
						AddPlayerInfo( -1 , "exp",$exp3)
						BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
						BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp3," EXP." )
					else
						BC( "screen", "player", -1, "You have to acquire a Silver Kettle of the God of Wisdom before you can receive a reward." )
					endif
				endif
				SetPlayerVar(-1,3674,1)
			endif	
		else
			$exp5 = 2 * $c
			$exp6 = 2 * $c
			$e7 = 14 * $c
			$exp7 = $e7
			if $type == 1
				$Info5 = SubPlayerInfo( -1 ,"item",12586,-1)
				if $Info5 == 0
					AddPlayerInfo( -1 , "exp",$exp5)
					AddPlayerInfo( -1 , "guildoffer",3)
					SetPlayerVar(-1,3674,1)
					SetTaskDone(-1,2143)
					AddPlayerInfo( -1 , "guildmoney",1000)
					AddPlayerInfo( -1 , "guildprosperity",30)
					AddPlayerInfo( -1 , "exp",$exp7)
					BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
					BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp7," EXP." )
				else
					BC( "screen", "player", -1, "You have to acquire a Golden Box of the God of Wisdom before you can receive a reward." )
				endif
			endif
			if $type == 2
				$Info6 = SubPlayerInfo( -1 ,"item",12587,-1)
				if $Info6 == 0
					AddPlayerInfo( -1 , "exp",$exp6)
					AddPlayerInfo( -1 , "guildoffer",3)
					SetPlayerVar(-1,3674,1)
					SetTaskDone(-1,2143) 
					AddPlayerInfo( -1 , "guildmoney",1000)
					AddPlayerInfo( -1 , "guildprosperity",30)
					AddPlayerInfo( -1 , "exp",$exp7)
					BC( "chat", "player", -1, "You have acquired 3 Guild Contribution points. You have helped the Guild acquire 1,000 Guild Funds, and 30 Guild Development points." )
					BC( "messagebox", "player", -1, "You have completed [Ceremony of Gods], and acquired ",$exp7," EXP." )
				else
					BC( "screen", "player", -1, "You have to acquire a Silver Kettle of the God of Wisdom before you can receive a reward." )
				endif
			endif
			SetPlayerVar(-1,3674,1)	
		endif
	
	}
	
	
	
	
			