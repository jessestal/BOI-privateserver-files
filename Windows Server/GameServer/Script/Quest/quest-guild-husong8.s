	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:
	//		Author:
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		//??????????????,10?
		#name = GetPlayerInfo( -1 , "name" )
		$popularity = GetPlayerInfo( -1 , "guildmemberpopularity" )
		if $popularity < 10
			if $popularity == 9
				AddPlayerInfo( -1 , "guildmemberpopularity" , 1 )
				AddPlayerInfo( -1 , "guildpopularity" , 1 )
			else					
				AddPlayerInfo( -1 , "guildmemberpopularity" , 2 )
				AddPlayerInfo( -1 , "guildpopularity" , 2 )
			endif
		endif
		
		
		//????
		$level = GetPlayerInfo( -1 , "level" )
		if $level <= 44
			$exp = $level * $level
			$exp = $exp * 80
			
			//??
			$exp = $exp * 3
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		else
			//??44?
			//??*??*80*(??*0.04 - 0.76)
			$exp = $level * $level
			$exp = $exp * 80
			$a = $level * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp * 3
			$exp = $exp / 100
			
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
			#guildname = GetPlayerInfo( -1 , "guildname" )
			
			//??????????
			BC( "screen", "servergroup", -1 , ">>>>>>" , #guildname , "s " , #name , " finished the Guild Quest by escorting Luxury Supplies. They gained " , $exp , " EXP.")
			
		endif
		
		
		
		//??????
		//AddPlayerInfo( -1 , "guildmoney" , 22500 )
		
		
		//???????
		AddPlayerInfo( -1 , "guildprosperity" , 750 )
		
		
		//??????
		//????
		$week = GetSystemTime( "week" )
		if $week == 0
			AddPlayerInfo( -1 , "guildoffer" , 60 )
		else
			if $week == 6
				AddPlayerInfo( -1 , "guildoffer" , 60 )
			else
				AddPlayerInfo( -1 , "guildoffer" , 30 )
			endif
		endif
		
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 140

		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 140
		$godexp = $godexp * 11
		$godexp = $godexp / 10
		
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		
				
	}
