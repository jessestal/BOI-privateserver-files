	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/19
	//		Author:???
	//		TaskName:quest-2617.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnTaskDone(){
		
		$gid = GetPlayerInfo( -1 , "guildid" )
		
		//??????????????,10?
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
		
		//????????????
		$yunbiao = GetOpenTransportTimet($gid)
		
		//????
		$level = GetPlayerInfo( -1 , "level" )
		
		//??*??*80*(??*0.04 - 0.76),?????*1.2
			$exp = $level * $level
			$exp = $exp * 80
			$a = $level * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp * 2
			$exp = $exp / 100
			$exp = $exp * 12
			$exp = $exp / 10
			$exp = $exp * 12
			$exp = $exp / 10
			$2exp = $exp * 15
			$2exp = $2exp / 10
			
			if $yunbiao != 0
				AddPlayerInfo( -1 , "exp" , $2exp )
			else
				AddPlayerInfo( -1 , "exp" , $exp )
			endif
			
			#name = GetPlayerInfo( -1 , "name" )
		
		//?????????????????
		$type = GetPlayerVar( -1 , 4063 )
		if $type == 100
			//??????
			AddPlayerInfo( -1 , "guildmoney" , 22500 )
			BC( "chat" , "guild" , $gid , "(" , #name , " finished the Guild Escort Quest, gaining 22500 Guild Funds." )
		endif
		
		//???????
		if $type == 200
			AddPlayerInfo( -1 , "guildprosperity" , 750 )
			BC( "chat" , "guild" , $gid , "(" , #name , " finished the Guild Escort Quest, gaining 750 Guild Development" )
		endif
		
		
		//??????
		//????
		$week = GetSystemTime( "week" )
		if $week == 0
			AddPlayerInfo( -1 , "guildoffer" , 30 )
		else
			if $week == 6
				AddPlayerInfo( -1 , "guildoffer" , 30 )
			else
				AddPlayerInfo( -1 , "guildoffer" , 15 )
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
		$godexp = $godexp * 12
		$godexp = $godexp / 10
		$godexp = $godexp * 12
		$godexp = $godexp / 10
		$2godexp = $godexp * 15
		$2godexp = $2godexp / 10
		
		if $fieldlevel > 0
			if $yunbiao != 0
				AddFieldExp( -1 , $2godexp )
			else
				AddFieldExp( -1 , $godexp )
			endif
		endif
		
		AddPlayerInfo(-1,"item",4988,2)
		AddPlayerInfo(-1,"money",50000)
	
	}