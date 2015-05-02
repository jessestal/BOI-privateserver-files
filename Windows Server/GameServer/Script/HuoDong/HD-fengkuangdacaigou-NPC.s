	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/10
	//		Author:??
	//		TaskName:HD-fengkuangdacaigou-NPC.s
	//		TaskID:?????????
	//
	//****************************************
	//61 ??1???????
	//62 ??2???????

	//3630 ????????????
	//3219 ?????????????????
	//3220 ?????????,5????????0
	
	//
	//??????????????????
	function OnRequest(){
		
		//call DisableAll()
		//????
		
		$level = GetPlayerInfo(-1 , "level")
		$Line = GetServerLineID()
		if $level < 45
			call DisableAll()
			return
		endif
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		//??????.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		
		//BC( "dialogbox", "player", -1, "h:",$Now_Hour,"w:",  $Now_Week )
		if $Line != 5
			call DisableAll()
			return
		endif
		if $Now_Hour < 13
			call DisableAll()
			return
		endif
		if $Now_Week == 1
			call DisableAll()
			return
		endif
		if $Now_Week == 2
			call DisableAll()
			return
		endif
		if $Now_Week == 4
			call DisableAll()
			return
		endif
		if $Now_Week == 5
			call DisableAll()
			return
		endif
		if $Now_Week == 6
			call DisableAll()
			return
		endif
		
		$first_number = GetServerVar(61)
		$second_number = GetServerVar(62)
	
		//BC( "chat", "player", -1, "f:",$first_number,"s:", $second_number ,"t:" , $third_number )
		//-----------------------------------------------
		$a = $Now_Mday + $Now_Month
		$b = $Now_Week + $Now_Yday
		$c = $a + $b
		$random_number = $c % 8	
		if $random_number == 0
		
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
		
			//-----------------------------------
			if $first_number >= 4000
				DisableNpcOption(0)
			endif
			if $second_number >= 1800
				DisableNpcOption(1)
			endif
			return
		endif
		if $random_number == 1
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 3000
				DisableNpcOption(2)
			endif
			if $second_number >= 500
				DisableNpcOption(3)
			endif

			return
		endif
		if $random_number == 2
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 4000
				DisableNpcOption(4)
			endif
			if $second_number >= 900
				DisableNpcOption(5)
			endif

			return
		endif
		if $random_number == 3
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 4000
				DisableNpcOption(6)
			endif
			if $second_number >= 800
				DisableNpcOption(7)
			endif

			return
		endif
		if $random_number == 4
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 6500
				DisableNpcOption(8)
			endif
			if $second_number >= 6000
				DisableNpcOption(9)
			endif

			return
		endif
		if $random_number == 5
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(12)
			DisableNpcOption(13)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 3000
				DisableNpcOption(10)
			endif
			if $second_number >= 900
				DisableNpcOption(11)
			endif

			return
		endif
		if $random_number == 6
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(14)
			DisableNpcOption(15)
			if $first_number >= 2800
				DisableNpcOption(12)
			endif
			if $second_number >= 1800
				DisableNpcOption(13)
			endif
			
			return
		endif
		if $random_number == 7
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
			DisableNpcOption(9)
			DisableNpcOption(10)
			DisableNpcOption(11)
			DisableNpcOption(12)
			DisableNpcOption(13)
			if $first_number >= 3000
				DisableNpcOption(14)
			endif
			if $second_number >= 900
				DisableNpcOption(15)
			endif
			return
		endif
		//-----------------------------------------------------------
		
			
			
			
	}
	
	function DisableAll(){
		
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)
		DisableNpcOption(10)
		DisableNpcOption(11)
		DisableNpcOption(12)
		DisableNpcOption(13)
		DisableNpcOption(14)
		DisableNpcOption(15)
		
		
	}
	function OnOption0(){
		
		//????????
		$count = GetPlayerInfo( -1, "item", 4041)
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Copper Chunk in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4041, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 1500 )
		
	}
	
	function OnOption1(){

		//????????
		$count = GetPlayerInfo( -1, "item", 4081)
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Copperite in your bag!" )
			return
		endif
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4081, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 10000 )
	}

	function OnOption2(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4061)
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Crystal Bead in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4061, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 1500 )
	}
	
	function OnOption3(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4122)
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Fine Iron in your bag!" )
			return
		endif
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4122, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 38600 )
	}
	
	
	function OnOption4(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4071 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Linen Thread in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4071, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 1500 )
	}
	
	function OnOption5(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4141 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Flawless Crystal in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4141, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 20000 )
	}
	
	
	
	
	function OnOption6(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4072 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Hemp Thread in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4072, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 1760 )
	}
	
	function OnOption7(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4082 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Ironite in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4082, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 21600 )
	}
	

	function OnOption8(){
	//????????
		$count = GetPlayerInfo( -1, "item", 4042 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Iron Chunk in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4042, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 1760 )
	}
	
	function OnOption9(){
	//????????
		$count = GetPlayerInfo( -1, "item", 4063 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Aquamarine Bead in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4063, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 2100 )
	}
	
	
	function OnOption10(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4062 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Quartz Bead in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4062, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 2100 )
	}
	
	function OnOption11(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4151 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Linen Cloth in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4151, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 20000 )
	}
	
	
	function OnOption12(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4043 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Silver Chunk in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4043, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 2100 )
	}
	
	function OnOption13(){
		//????????
		$count = GetPlayerInfo( -1, "item", 4101 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Crystalite in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4101, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 10000 )
	}
	
	
	function OnOption14(){
	//????????
		$count = GetPlayerInfo( -1, "item", 4073 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Cotton Thread in your bag!" )
			return
		endif
		
		call FirstItem()
		$result = SubPlayerInfo( -1, "item", 4073, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 2000 )
	}
	
	function OnOption15(){
	//????????
		$count = GetPlayerInfo( -1, "item", 4121 )
		if $count < 20
			BC( "dialogbox", "player", -1, "Insufficient Fine Copper in your bag!" )
			return
		endif
		
		call SecondItem()
		$result = SubPlayerInfo( -1, "item", 4121, 20 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "money", 20000 )
	}
	
	
	
//----------------------------------------------------------

	function FirstItem(){
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		//??????.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		
		$level = GetPlayerInfo(-1 , "level")
		if $level < 45
			return
		endif
		$first_number = GetServerVar(61)
		
		$a = $Now_Mday + $Now_Month
		$b = $Now_Week + $Now_Yday
		$c = $a + $b
		$random_number = $c % 8	
		if $random_number == 0
			if $first_number >= 4000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 1
			if $first_number >= 3000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 2
			if $first_number >= 4000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 3
			if $first_number >= 4000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 4
			if $first_number >= 6500
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 5
			if $first_number >= 3000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 6
			if $first_number >= 2800
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 7	
			if $first_number >= 3000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		//----------------------------------------------
		
		$today_days = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3630)
		$give_number = GetPlayerVar(-1 , 3219)
		if $days == $today_days
			if $give_number >= 3
				BC( "dialogbox", "player", -1, "Each player can doante materials three times per day." )
				exit()
			else
				$give_number = $give_number + 1
				SetPlayerVar(-1 , 3219 , $give_number)
			endif
		else
			SetPlayerVar(-1 , 3219 , 1)
			SetPlayerVar(-1 , 3630 , $today_days)
		endif
	
		$player_complate = GetPlayerVar(-1 , 3220)
		if $player_complate >= 5
			//???,???????0
			SetPlayerVar(-1 , 3220 , 1)
		else
			$player_complate = $player_complate + 1
			SetPlayerVar(-1 , 3220 , $player_complate)
		endif
	
	
		$first_number = $first_number + 20
		SetServerVar(61, $first_number)
		
		$first_number = GetServerVar(61)
		$second_number = GetServerVar(62)

		//????-START
			$TJ_join_number = GetGlobalVar(944)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(944 , $TJ_join_number)
		//????-END
		
		//-----------------------------------------------
		$a = $Now_Mday + $Now_Month
		$b = $Now_Week + $Now_Yday
		$c = $a + $b
		$random_number = $c % 8	
		if $random_number == 0
			if $first_number >= 4000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Copper Chunk enough today." )
				if $second_number >= 1800
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
				endif
			endif
		endif
		if $random_number == 1
			if $first_number >= 3000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Crystal Bead today." )
				if $second_number >= 500
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 2
			if $first_number >= 4000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Linen Thread today." )
				if $second_number >= 900
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 3
			if $first_number >= 4000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Hemp Thread today." )
				if $second_number >= 800
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 4
			if $first_number >= 6500
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Iron Chunk today." )
				if $second_number >= 6000
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 5
			if $first_number >= 3000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Quartz Bead today." )
				if $second_number >= 900
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 6
			if $first_number >= 2800
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Silver Chunktoday." )
				if $second_number >= 1800
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 7	
			if $first_number >= 3000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Cotton Threadtoday." )
				if $second_number >= 900
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
	}
	
	function SecondItem(){
				//??
		$Now_Hour =  GetSystemTime( "hour" )
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.2008????
		$Now_Year =  GetSystemTime( "year" )
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		//??????.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		
		$level = GetPlayerInfo(-1 , "level")
		if $level < 45
			return
		endif
		$second_number = GetServerVar(62)
		
		
		$a = $Now_Mday + $Now_Month
		$b = $Now_Week + $Now_Yday
		$c = $a + $b
		$random_number = $c % 8	
		if $random_number == 0
			if $second_number >= 1800
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 1
			if $second_number >= 500
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 2
			if $second_number >= 900
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 3
			if $second_number >= 800
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 4
			if $second_number >= 6000
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 5
			if $second_number >= 900
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 6
			if $second_number >= 1800
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		if $random_number == 7	
			if $second_number >= 900
				BC( "screen", "player", -1, "This item has stopped purchasing. It is full." )
				exit()
			endif
		endif
		//----------------------------------------
		$today_days = GetSystemTime( "yday" )
		$days = GetPlayerVar(-1 , 3630)
		$give_number = GetPlayerVar(-1 , 3219)
		if $days == $today_days
			if $give_number >= 3
				BC( "dialogbox", "player", -1, "Each player can doante materials three times per day." )
				exit()
			else
				$give_number = $give_number + 1
				SetPlayerVar(-1 , 3219 , $give_number)
			endif
		else
			SetPlayerVar(-1 , 3219 , 1)
			SetPlayerVar(-1 , 3630 , $today_days)
		endif
		
		
		$player_complate = GetPlayerVar(-1 , 3220)
		if $player_complate >= 5
			//???,???????0
			SetPlayerVar(-1 , 3220 , 1)
		else
			$player_complate = $player_complate + 1
			SetPlayerVar(-1 , 3220 , $player_complate)
		endif
		
		
		$second_number = $second_number + 20
		SetServerVar(62, $second_number)
		//-----------------------------------------
		$first_number = GetServerVar(61)
		$second_number = GetServerVar(62)

		//????-START
			$TJ_join_number = GetGlobalVar(944)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(944 , $TJ_join_number)
		//????-END
		
		$a = $Now_Mday + $Now_Month
		$b = $Now_Week + $Now_Yday
		$c = $a + $b
		$random_number = $c % 8	
		if $random_number == 0
			if $second_number >= 1800
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Copperite today." )
				if $first_number >= 4000
			
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 1
			if $second_number >= 500
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Fine Iron today." )
				if $first_number >= 3000
			
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
				
				endif
			endif
		endif
		if $random_number == 2
			if $second_number >= 900
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Flawless Crystal today." )
				if $first_number >= 4000
				
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
			
				endif
			endif
		endif
		if $random_number == 3
			if $second_number >= 800
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Ironite today." )
				if $first_number >= 4000
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 4
			if $second_number >= 6000
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Aquamarine Bead today." )
				if $first_number >= 6500
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
		if $random_number == 5
			if $second_number >= 900
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Linen Clothtoday." )
				if $first_number >= 3000
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
			
				endif
			endif
		endif
		if $random_number == 6
			if $second_number >= 1800
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Crystalite today." )
				if $first_number >= 2800
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
			
				endif
			endif
		endif
		if $random_number == 7	
			if $second_number >= 900
				BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough Fine Copper today." )
				if $first_number >= 3000
					
					BC( "screen", "server", -1, "Zorr,thank you for your help. I have collected enough material today." )
					
				endif
			endif
		endif
	}