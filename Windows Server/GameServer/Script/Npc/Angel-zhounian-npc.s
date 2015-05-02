	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/6
	//		Author:??
	//		TaskName:
	//		TaskID:???????????
	//
	//****************************************
	
	function OnRequest(){
		
	$Now_week =  GetSystemTime( "week" )
	
	//???????0\1  ????3\4~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	if $Now_week == 6
		DisableNpcOption(0)
		DisableNpcOption(1)
	else
		DisableNpcOption(3)
		DisableNpcOption(4)
	endif


	}
//-----------------------------------????BUFF--------------------------------------
	
				function OnOption0(){
//???????
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")

//??????
						$give = GetPlayerVar( -1, 3930 )
						$getexp = GetPlayerVar( -1, 3931 )

//??	
						$Now_Minute =  GetSystemTime( "minute")		
						$Now_Hour =  GetSystemTime( "hour" )	
						$Now_Mday =  GetSystemTime( "mday" )	
						$Now_Month =  GetSystemTime( "month" )	
						$Now_Yday =  GetSystemTime( "yday" )
						$Now_week =  GetSystemTime( "week" )		
										
						$revaluet = IsExistStatus( -1 , 10724 )
						
//?????,????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						if $Now_week == 6
							return
						endif
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
						
//??????			
						if $give == $Now_Yday
							if $revaluet == 0
								BC( "dialogbox", "player", -1, "Thank you for participating in {#ffff002a=Angel's Blessings#}. We will pray for you now. {#ffff002a=Check your status icon in the upper-right corner. When the prayer ends, you can receive your rewards here!#}")	
								return
							else
								BC( "dialogbox", "player", -1, "You've completed {#ffff002a=Angel's Blessings#}. Select {#ffff002a=Draw Reward#} to gain lots of EXP. Hope to see you tomorrow!")	
								return
							endif
						endif													
//??20:00-20:30?????									
						if $Now_Hour >= 0
								if $Now_Hour < 20								
										BC( "dialogbox", "player", -1, "{#ffff002a=Angel's Blessings#} is available from {#ffff002a=20:30 - 22:00#}.\nLots of EXP awaits you!" )
										return
								endif
						endif		
						if $Now_Hour >= 22
								if $Now_Hour < 24								
										BC( "dialogbox", "player", -1, "{#ffff002a=Angel's Blessings#} is available from {#ffff002a=20:30 - 22:00#}.\nLots of EXP awaits you!" )	
										return	
								endif
						endif				
//??????			
						if $Now_Hour == 20			
								if $Now_Minute < 30
										BC( "dialogbox", "player", -1, "{#ffff002a=Angel's Blessings#} is available from {#ffff002a=20:30 - 22:00#}.\nLots of EXP awaits you!" )	
										return	
								endif
						endif


						$addbuff = AddStatus( -1, 10724, 1 )
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						BC( "dialogbox", "player", -1, "Thank you for participating in {#ffff002a=Angel's Blessings#}. We will pray for you now. {#ffff002a=Check your status icon in the upper-right corner. When the prayer ends, you can receive your rewards here!#}" )						

//?????????			
						SetPlayerVar(-1,3930,$Now_Yday )			

}

//-------------------------------------------------------?????------------------------------------------------

	function OnOption1(){
		
//???????

						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")

//??????
						$give = GetPlayerVar( -1, 3930 )
						$getexp = GetPlayerVar( -1, 3931 )
						$qd = IsExistStatus(-1 , 10724)
//??	
						$Now_Minute =  GetSystemTime( "minute")		
						$Now_Hour =  GetSystemTime( "hour" )	
						$Now_Mday =  GetSystemTime( "mday" )	
						$Now_Month =  GetSystemTime( "month" )	
						$Now_Yday =  GetSystemTime( "yday" )	
						$Now_week =  GetSystemTime( "week" )
										
//?????,????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						if $Now_week == 6
							return
						endif
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	

				
//???????				
						if $give != $Now_Yday
								BC( "dialogbox", "player", -1, "You must participate in {#ffff002a=Angel's Blessings#} to receive a reward. It's available from {#ffff002a=20:30 - 22:00#}.\nLots of EXP awaits you!")	
								return
						endif				
						
						if $qd == 0
								BC( "dialogbox", "player", -1, "We're praying for you!\n{#ffff002a=Check your status icon in the upper-right corner. When the prayer ends, you can receive your rewards here!#}")	
								return
						endif			
						
						if $getexp == $Now_Yday
								BC( "dialogbox", "player", -1, "You've completed {#ffff002a=Angel's Blessings#}. Hope to see you tomorrow!")	
								return
						endif																							
						
						
						//22:30????
						if $Now_Hour == 22
							if $Now_Minute >= 30
								BC( "dialogbox", "player", -1, "{#ffff002a=Angel's Blessings#} is done for the day. Please, come back tomorrow.")	
								return
							endif
						else
							if $Now_Hour >= 23
								BC( "dialogbox", "player", -1, "{#ffff002a=Angel's Blessings#} is done for the day. Please, come back tomorrow.")	
								return
							endif
						endif
						
						
						//??+?????
						if $Now_week == 6
							if $nullitem < 2
								BC( "dialogbox", "player", -1, "You need at least 2 open Bag slots for the rewards.")	
								return
							endif
							
							BC( "dialogbox", "player", -1, "Since today is Saturday, you get better rewards!\n{#ffff002a=Ode to Angels Firework*1\nDeity Medal (Gold)*2#}")
						//???????+??????																					
							AddPlayerInfo(-1, "item", 59233 , 1 )
							AddPlayerInfo(-1, "item", 59271 , 2 )
							
						else
							if $nullitem < 1
								BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")	
								return
							endif
							//???????
							AddPlayerInfo(-1, "item", 59242, 1 )
						endif	
							
		
							
						//else
						//	
						////???,???4?30?
						//	if $Now_Month == 4
						//		if $Now_Mday == 30
						//			if $nullitem < 2
						//				BC( "dialogbox", "player", -1, "You need at least 2 open Bag slots for the rewards.")	
						//				return
						//			else
						//				//???????+??????																					
						//				AddPlayerInfo(-1, "item", 59233 , 1 )
						//				AddPlayerInfo(-1, "item", 59271 , 2 )
						//			endif
						//		else
						//			if $nullitem < 1
						//				BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")	
						//				return
						//			endif
						//			//???????
						//			AddPlayerInfo(-1, "item", 59242, 1 )
						//		endif	
						//	else
						//	//???,???5?1-3?
						//		if $Now_Month == 5
						//			if $Now_Mday < 4
						//				if $nullitem < 2
						//					BC( "dialogbox", "player", -1, "You need at least 2 open Bag slots for the rewards.")	
						//					return
						//				else
						//					//???????+??????																					
						//					AddPlayerInfo(-1, "item", 59233 , 1 )
						//					AddPlayerInfo(-1, "item", 59271 , 2 )
						//				endif
						//			else
						//				if $nullitem < 1
						//					BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")	
						//					return
						//				endif
						//				//???????
						//				AddPlayerInfo(-1, "item", 59242, 1 )	
						//			endif
						//		else
						//			if $nullitem < 1
						//				BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")	
						//				return
						//			endif
						//			//???????
						//			AddPlayerInfo(-1, "item", 59242, 1 )		
						//		endif		
						//	endif		
						//endif				

//?????????			
						SetPlayerVar(-1,3931,$Now_Yday )	
						
						$no = GetGlobalVar( 960 )						
						$no1 = $no + 1
						$no2 = SetGlobalVar( 960,$no1 )
		
	}
	
//---------------------??8??????(?????)----------------------
	function OnOption2(){
		
		//????????????
		$result = IsTaskAccept( -1 , 1625 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You have received the {#ffff002a=Concerns of the Gods#} quest\n{#ffff002a=Once a day only. Reward: Angel's Kiss.#}" )	
			return
		endif
		
		//??????????????
		$myday = GetPlayerVar( -1, 3950 )
		$Now_Yday =  GetSystemTime( "yday" )
		if $myday == $Now_Yday
			BC( "screen", "player", -1, "You have already received this quest. Come back tomorrow." )
			return
		endif
		
		//??????30?
		$lv = GetPlayerInfo( -1, "level")
		if $lv < 30
			BC( "screen", "player", -1, "You need to reach at least LV30 to receive this quest." )	
			return
		endif
		
		AcceptTask( -1 , 1625 )
		SetPlayerVar( -1 , 3950 , $Now_Yday )
		
		//????
		$task = GetGlobalVar( 970 )						
		$task1 = $task + 1
		$task2 = SetGlobalVar( 970,$task1 )
		
		
	}
	
//-----------------------------------------?????????buff(????????)----------------------------------------	
	
				function OnOption3(){
//???????
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")

//??????
						$give = GetPlayerVar( -1, 3930 )
						$getexp = GetPlayerVar( -1, 3931 )

//??	
						$Now_Minute =  GetSystemTime( "minute")		
						$Now_Hour =  GetSystemTime( "hour" )	
						$Now_Mday =  GetSystemTime( "mday" )	
						$Now_Month =  GetSystemTime( "month" )	
						$Now_Yday =  GetSystemTime( "yday" )
						$Now_week =  GetSystemTime( "week" )		
										
						$revaluet = IsExistStatus( -1 , 7555 )
						
//??????,????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						if $Now_week != 6
							return
						endif
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~					

						
//?????????buff			
						if $give == $Now_Yday
							if $revaluet == 0
								BC( "dialogbox", "player", -1, "You have taken the {#ffff002a=Angel#} quest. The {#ffff002a=Angel#} event is available on {#ffff002a=Saturday evening from 20:30 to 22:00#}. You have a chance to win great EXP rewards, LV4 and 5 Gem Chests, and a Platinum VIP Card!")	
								return
							else
								BC( "dialogbox", "player", -1, "You have completed today's {#ffff002a=Angel#} event. Thanks!")	
								return
							endif
						endif													
//??20:00-20:30?????									
						if $Now_Hour >= 0
								if $Now_Hour < 20								
										BC( "dialogbox", "player", -1, " The {#ffff002a=Angel#} event is available on {#ffff002a=Saturday evening from 20:30 to 22:00#}. You have a chance to win great EXP rewards, LV4 and 5 Gem Chests, and a Platinum VIP Card!" )
										return
								endif
						endif		
						if $Now_Hour >= 22
								if $Now_Hour < 24								
										BC( "dialogbox", "player", -1, " The {#ffff002a=Angel#} event is available on {#ffff002a=Saturday evening from 20:30 to 22:00#}. You have a chance to win great EXP rewards, LV4 and 5 Gem Chests, and a Platinum VIP Card!" )	
										return	
								endif
						endif				
//??????			
						if $Now_Hour == 20			
								if $Now_Minute < 30
										BC( "dialogbox", "player", -1, " The {#ffff002a=Angel#} event is available on {#ffff002a=Saturday evening from 20:30 to 22:00#}. You have a chance to win great EXP rewards, LV4 and 5 Gem Chests, and a Platinum VIP Card!" )	
										return	
								endif
						endif


						$addbuff = AddStatus( -1, 7555, 1 )
						$addbuff = AddStatus( -1, 7556, 1 )
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						BC( "dialogbox", "player", -1, "You have joined the {#ffff002a=Angel#} event. {#ffff002a=You can check the remaining time at the right upper icon. When the event ends, you can get your rewards here.#}" )						

//?????????			
						SetPlayerVar(-1,3930,$Now_Yday )			

}



//-------------------------------------------------------???????????------------------------------------------------

	function OnOption4(){
		
//???????

						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")

//??????
						$give = GetPlayerVar( -1, 3930 )
						$getexp = GetPlayerVar( -1, 3931 )
						$qd = IsExistStatus(-1 , 7555)
//??	
						$Now_Minute =  GetSystemTime( "minute")		
						$Now_Hour =  GetSystemTime( "hour" )	
						$Now_Mday =  GetSystemTime( "mday" )	
						$Now_Month =  GetSystemTime( "month" )	
						$Now_Yday =  GetSystemTime( "yday" )	
						$Now_week =  GetSystemTime( "week" )
										
//??????,????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
						if $Now_week != 6
							return
						endif
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	

				
//???????				
						if $give != $Now_Yday
								BC( "dialogbox", "player", -1, "You didn't take the {#ffff002a=Angel#} quest. The {#ffff002a=Angel#} event is available on {#ffff002a=Saturday evening from 20:30 to 22:00#}. You have a chance to win great EXP rewards, LV4 and 5 Gem Chests, and a Platinum VIP Card!")	
								return
						endif				
						
						if $qd == 0
								BC( "dialogbox", "player", -1, "You have joined the {#ffff002a=Angel#} event. {#ffff002a=You can check the remaining time at the right upper icon. When the event ends, you can get your rewards here.#}")	
								return
						endif			
						
						if $getexp == $Now_Yday
								BC( "dialogbox", "player", -1, "You have completed today's {#ffff002a=Angel#} event. Thanks!")	
								return
						endif																							
						
						
						//22:30????
						if $Now_Hour == 22
							if $Now_Minute >= 30
								BC( "dialogbox", "player", -1, "{#ffff002a=Angel#} has ended. We hope you enjoyed that!")	
								return
							endif
						else
							if $Now_Hour >= 23
								BC( "dialogbox", "player", -1, "{#ffff002a=Angel#} has ended. We hope you enjoyed that!")	
								return
							endif
						endif
						
						
						//????
						if $nullitem < 2
							BC( "dialogbox", "player", -1, "You need at least 2 open Bag slots for the rewards.")	
							return
						endif
							
						//BC( "dialogbox", "player", -1, "Since today is Saturday, you get better rewards!\n{#ffff002a=Ode to Angels Firework*1\nDeity Medal (Gold)*2#}")
						//???+??????																					
						AddPlayerInfo(-1, "item", 63763 , 1 )
						AddPlayerInfo(-1, "item", 59271 , 5 )
							
							

//?????????			
						SetPlayerVar(-1,3931,$Now_Yday )	
						
						$no = GetGlobalVar( 960 )						
						$no1 = $no + 1
						$no2 = SetGlobalVar( 960,$no1 )
		
	}