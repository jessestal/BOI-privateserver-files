	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/06/21
	//		Author:??
	//		TaskName:domain-shenyu.s
	//		TaskID:?????????
	//
	//****************************************
	//

	//??????53 1?? 0???
	//??????7   1?? 0???
	function OnRequest(){
	
	//???????
	$guildrank = GetPlayerInfo( -1 , "guildrank" )
	//?????ID?
	$id =  GetPlayerID()
	//??????????
	$guildid = GetPlayerInfo( -1 , "guildid" )
	$shenyu = GetGuildVar( $guildid , 7 )
	$nowweek = GetNowWeek()
	$week = GetSystemTime( "week" )
	$lingtu = DomainIsOpen()
	
	//?????????????
	if $lingtu == 0
		DisableNpcOption(0)
	endif
	
	//?????????????
	if $week == 0
		DisableNpcOption(0)
	endif	
	
	if $week == 6
		DisableNpcOption(0)
	endif	
	
	//????????????,????????
	if $tongyu == $nowweek
		DisableNpcOption(0)
	endif	
		
	}
	
	function OnOption0(){
		
	//?????ID
	$guildid = GetPlayerInfo( -1 , "guildid" )
		
	//???????
	$guildrank = GetPlayerInfo( -1 , "guildrank" )
		
	//????????
	$tongyu = GetGuildVar( $guildid , 7 )
	
	//??????????	
	$bag = GetPlayerInfo( -1, "nullitem", 0 )
	
	//??????????
	$nowweek = GetNowWeek()
	
	//????
	$week = GetSystemTime( "week" )
	
	//?????????????
	$low = GetGuildHoldDomainNum(0)
	
	//?????????????
	$middle = GetGuildHoldDomainNum(1)
	
	//?????????????
	$high = GetGuildHoldDomainNum(2)
	
	//????????????
	$most = GetGuildHoldDomainNum(-1)
	
	#name = GetPlayerInfo( -1 , "name") 
	#guildname = GetPlayerInfo( -1 , "guildname" ) 
	
	if $guildid == 0
		BC( "chat" , "player" , -1 , "You're not part of a guild; only the Guild Leader can collect the Oracle Crystal prize!" )
		BC( "screen" , "player" , -1 , "You're not part of a guild; only the Guild Leader can collect the Oracle Crystal prize!" )
		return
	endif					
	
	if $guildrank != 0
		BC( "chat" , "player" , -1 , "You're not a Guild Leader, you can't collect the Oracle Crystal prize!" )
		BC( "screen" , "player" , -1 , "You're not a Guild Leader, you can't collect the Oracle Crystal prize!" )		
		return
	endif	
	
	if $tongyu == $nowweek
		BC( "chat" , "player" , -1 , "Your guild's Oracle Crystal prize has already been collected this week." )
		BC( "screen" , "player" , -1 , "Your guild's Oracle Crystal prize has already been collected this week." )
		return	
	endif	
	
	if $week == 0
		BC( "chat" , "player" , -1 , "The Oracle Crystal prize can only be collected each week from Monday to Friday." )
		BC( "screen", "player", -1, "The Oracle Crystal prize can only be collected each week from Monday to Friday." )
		return
	endif	
	
	if $week == 6
		BC( "chat" , "player" , -1 , "The Oracle Crystal prize can only be collected each week from Monday to Friday." )
		BC( "screen", "player", -1, "The Oracle Crystal prize can only be collected each week from Monday to Friday." )
		return
	endif	
	
	if $low == 0 
		if $middle == 0
			if $high == 0 
				BC( "chat" , "player" , -1 , "Only Guilds who have occupied territories can collect the Oracle Crystal prize" )
				BC( "screen" , "player" , -1 , "Only Guilds who have occupied territories can collect the Oracle Crystal prize" )
				return
			endif
		endif
	endif			
	
	if $bag < 4
		BC( "chat" , "player" , -1 , "Make sure you have at least 4 empty slots in your bag before you collect the Oracle Crystal prize" )
		BC( "screen", "player", -1, "Make sure you have at least 4 empty slots in your bag before you collect the Oracle Crystal prize" )
		return
	endif
	
	if $low > 0
		$a = $low * 2
		$result1 = AddPlayerInfo(-1, "item" , 59326 , $a)
		$log = 1000 + $a
		SetPlayerActLog(-1,41,$log)
		//??????????????????
		if $result1 == 0
			#name = GetPlayerInfo( -1 , "name") 
			BC( "chat", "guild", $guildid , "This week's Guild occupied " , $low , " Junior Territory, Guild Lead " , #name , " has taken " , $a , "Oracle Crystals" )
			SetGuildVar($guildid , 7 , $nowweek)
		endif
	endif
	
	if $middle > 0 
		$b = $middle * 8	
		$result2 = AddPlayerInfo(-1, "item" , 59326 , $b)
		$log = 1000 + $b
		SetPlayerActLog(-1,41,$log)
		if $result2 == 0
			#name = GetPlayerInfo( -1 , "name") 
			BC( "chat", "guild", $guildid , "This week's Guild occupied " , $middle , " Senior Territory, Guild Lead " , #name , " has taken " , $b , "Oracle Crystals" )
			SetGuildVar($guildid , 7 , $nowweek)
		endif
	endif
	
	
	if $high > 0 
		$c = $high * 16			
		$result3 = AddPlayerInfo(-1, "item" , 59326 , $c)
		$log = 1000 + $c
		SetPlayerActLog(-1,41,$log)
		if $result3 == 0
			#name = GetPlayerInfo( -1 , "name") 
			BC( "chat", "guild", $guildid , "This week's Guild occupied " , $high , " Advanced Territory, Guild Lead " , #name , " has taken " , $c , "Oracle Crystals" )
			SetGuildVar($guildid , 7 , $nowweek)
		endif
	endif
	
	//if $most > 0 
		//$d = $most
		//$result4 = AddPlayerInfo(-1, "item" , 61099 , $d)
		//if $result4 == 0
			//#name = GetPlayerInfo( -1 , "name") 
			//BC( "chat", "guild", $guildid , "This week's Guild occupied " , $most , "GUID:03736000027" , #name , " has taken " , $d , "GUID:03736000029" )
			//SetGuildVar($guildid , 7 , $nowweek)
		//endif	
	//endif	

	BC( "screen" , "server", -1 , "Congratulations to " , #guildname , "'s Guild Leader " , #name , ") collected Oracle Crystal prize from Territory War Reward Agent Upth" )
	BC( "scrollbar" , "server", -1 , "Congratulations to " , #guildname , "'s Guild Leader " , #name , ") collected Oracle Crystal prize from Territory War Reward Agent Upth" )
										
	}											