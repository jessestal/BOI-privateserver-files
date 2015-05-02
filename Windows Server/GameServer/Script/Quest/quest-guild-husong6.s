	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：
	//		Author：
	//		TaskName：
	//		TaskID：
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		//当天个人人气度是否已达到上限，10点
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
		
		
		//增加经验
		$level = GetPlayerInfo( -1 , "level" )
		if $level <= 44
			$exp = $level * $level
			$exp = $exp * 80
			
			//品质
			$exp = $exp * 3
			$exp = $exp / 2
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		else
			//大于44及
			//等级*等级*80*(等级*0.04 - 0.76)
			$exp = $level * $level
			$exp = $exp * 80
			$a = $level * 4
			$a = $a - 76
			$exp = $exp * $a
			$exp = $exp * 3
			$exp = $exp / 200
			
			AddPlayerInfo( -1 , "exp" , $exp )
			
		endif
		
		
		
		//增加公会资金
		//AddPlayerInfo( -1 , "guildmoney" , 22500 )
		
		
		//增加公会繁荣度
		AddPlayerInfo( -1 , "guildprosperity" , 750 )
		
		
		//增加个人贡献
		//周末双倍
		$week = GetSystemTime( "week" )
		if $week == 0
			AddPlayerInfo( -1 , "guildoffer" , 40 )
		else
			if $week == 6
				AddPlayerInfo( -1 , "guildoffer" , 40 )
			else
				AddPlayerInfo( -1 , "guildoffer" , 20 )
			endif
		endif
		
		//增加天魂值
		//标准天魂值 = 天域等级^2+0.6*天域等级+1000
		//最大天魂值 = 标准天魂值 * 140

		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 140
		$godexp = $godexp * 9
		$godexp = $godexp / 10
		
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		
	}
