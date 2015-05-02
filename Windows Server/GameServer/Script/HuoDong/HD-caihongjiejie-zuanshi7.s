	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/21
	//		Author:???
	//		TaskName:HD-caihongjiejie-zuanshi7.s
	//		TaskID:????-??????NPC?????
	//
	//****************************************
	function OnRequest(){
		$Accept = IsTaskAccept( -1 , 1862 )
		$44281 = GetPlayerInfo( -1 ,"item" , 44281 )
		$44282 = GetPlayerInfo( -1 ,"item" , 44282 )
		$44283 = GetPlayerInfo( -1 ,"item" , 44283 )
		$44284 = GetPlayerInfo( -1 ,"item" , 44284 )
		$44285 = GetPlayerInfo( -1 ,"item" , 44285 )
		$44280 = GetPlayerInfo( -1 ,"item" , 44280 )
				
		if $Accept != 0
			DisableNpcOption(0)
		endif
		
		if $44281 == 1
			DisableNpcOption(0)
			return
		endif		
		
		if $44282 == 1
			DisableNpcOption(0)
			return
		endif		
		
		if $44283 == 1
			DisableNpcOption(0)
			return
		endif
		
		if $44284 == 1
			DisableNpcOption(0)
			return
		endif		
		
		if $44285 == 1
			DisableNpcOption(0)
			return
		endif			
		
		if $44280 == 1
			DisableNpcOption(0)
			return
		endif

	}


	function OnOption0(){
		$44286 = GetPlayerInfo( -1 ,"item" , 44286 )
		if $44286 == 1
			SubPlayerInfo( -1 , "item" , 12848 , 1)
			SubPlayerInfo( -1 , "item" , 44286 , 1)
			AddPlayerInfo( -1 , "item" , 44280 , 1)
			return
		else
			BC( "screen" , "player" , -1 , "Sorry, you have to open the LV6 barrier first!" )
		endif
	}