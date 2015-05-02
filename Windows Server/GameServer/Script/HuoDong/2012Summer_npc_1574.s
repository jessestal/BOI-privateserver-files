 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/6/20
	//		Author:???
	//		TaskName:2012Summer_npc_1574.s
	//		TaskID:???????
	//****************************************
	
	
	function OnRequest(){
		
		$Now_Year =  GetSystemTime( "year" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		
		//2012?8?????
		if $Now_Year > 2012
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif			
		
		if $Now_Year == 2012
			if $Now_Month > 8
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
			endif 
		endif				
		
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		if $last_day == $day
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
			
	
		
	}
	
	//?? ???? 1  ??????? 9 ????? 64507 ????? 64506 ?????? 4901
	//?? ?????44045 ???? 65346 ????? 65342 ???? 65348 ???? 65345 ????? 65347 ????? 65344

	//??????????????????(???)?
	function OnOption0(){

		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",1 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your materials bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",44045)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have a Legendary Nocturnal Pearl (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",44045,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 9, 1)
			SetPlayerVar(-1,4060,$day)
		endif
				

		
	}
	
	//?????????????????(???)?	
	function OnOption1(){
		
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
	
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65346)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have Anubis' Judgment (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65346,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 64507, 1)
			SetPlayerVar(-1,4060,$day)
		endif
	
	}
	
	
	//??????????????????(???)?
	function OnOption2(){
	
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif	
	
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65342)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have a Conqueror's Gold Helm (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65342,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 64507, 1)
			SetPlayerVar(-1,4060,$day)
		endif
		
	}
	
	//????????????????(???)?
	function OnOption3(){
	
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
	
	$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65345)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have the Nether Classics (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65345,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 64506, 1)
			SetPlayerVar(-1,4060,$day)
		endif
		
		
	}
	
	//????????????????(???)?
	function OnOption4(){
	
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
	
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65348)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have Death's Scythe (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65348,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 64506, 1)
			SetPlayerVar(-1,4060,$day)
		endif
	}
	
	//?????????????????(???)?
	function OnOption5(){
	
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
	
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65347)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have Horus' Piccolo (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65347,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 4901, 1)
			SetPlayerVar(-1,4060,$day)
		endif
	}
	
	//????????????????(???)?
	function OnOption6(){
		
		$last_day = GetPlayerVar(-1, 4060)
		$day = GetSystemTime("yday")
		
		if $day == $last_day
			BC("dialogbox","player",-1,"You can only trade treasures once per day.")
			return
		endif
	
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "Your bag is full!" )
			return
		endif

		$count = GetPlayerInfo(-1,"item",65344)
		if $count < 1
			BC( "dialogbox", "player", -1, "You don't have a World Tree Branch (Unidentified), you can't trade treasures!" )
			return
		endif

		$result = SubPlayerInfo(-1,"item",65344,1)
		if $result == 0
			AddPlayerInfo(-1,"item", 1, 1)
			SetPlayerVar(-1,4060,$day)
		endif
	}	