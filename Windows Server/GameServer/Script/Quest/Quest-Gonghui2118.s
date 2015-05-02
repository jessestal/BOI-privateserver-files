	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/12
	//		Author:???
	//		TaskName:Quest-Gonghui2118.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnTaskDone(){

		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You are not in any guild yet. There will be no quest completion reward for you.")
	  	return
	  endif
			
		$weekday = GetSystemTime( "week" )
			
		if $weekday == 0
					
			//????
			$level = GetPlayerInfo( -1, "level" )
			
			//??????:(??*50)*(6+??/15*2)*??*(??/10+7)/100/20*2
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$exp = $i / 2000
			
			AddPlayerInfo( -1, "exp", $exp )
			AddPlayerInfo( -1, "guildprosperity", 100 )
			AddPlayerInfo( -1, "guildoffer", 2 )
			BC( "screen", "player", -1, "Because of your efforts, your guild has gained 100 guild Development points (this number doubles on weekends). You have acquired 2 Contribution points (this number doubles on weekends).")
			return
		endif	
			
		if $weekday == 6
					
			//????
			$level = GetPlayerInfo( -1, "level" )
			
			//??????:(??*50)*(6+??/15*2)*??*(??/10+7)/100/20*2
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$exp = $i / 2000
			
			AddPlayerInfo( -1, "exp", $exp )
			AddPlayerInfo( -1, "guildprosperity", 100 )
			AddPlayerInfo( -1, "guildoffer", 2 )
			BC( "screen", "player", -1, "Because of your efforts, your guild has gained 100 guild Development points (this number doubles on weekends). You have acquired 2 Contribution points (this number doubles on weekends).")
			return
		endif
		
			//????
			$level = GetPlayerInfo( -1, "level" )
			
			//??????:(??*50)*(6+??/15*2)*??*(??/10+7)/100/20
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$exp = $i / 2000
			
			AddPlayerInfo( -1, "exp", $exp )
			AddPlayerInfo( -1, "guildprosperity", 50 )
			AddPlayerInfo( -1, "guildoffer", 1 )
			BC( "screen", "player", -1, "Because of your efforts, your guild has gained 50 Development points (this number doubles on weekends). You have acquired 1 Contribution points (this number doubles on weekends).")
			
	}