	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/16
	//		Author:??
	//		TaskName:NPC-Christmas-tree.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){

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
										
										
//??????						
						if $give == $Now_Yday
								BC( "dialogbox", "player", -1, "We're praying for you! When the prayer ends, you can receive Angel's Blessings and gain lots of EXP!")	
								return
						endif													
//??20:00-20:30?????									
						if $Now_Hour >= 0
								if $Now_Hour < 20								
										BC( "dialogbox", "player", -1, "N/A?????????20?30??22?????.??????????.?????????????,??????." )
										return
								endif
						endif		
						if $Now_Hour >= 22
								if $Now_Hour < 24								
										BC( "dialogbox", "player", -1, "N/A?????????20?30??22?????.??????????.?????????????,??????." )	
										return	
								endif
						endif				
//??????			
						if $Now_Hour == 20			
								if $Now_Minute < 30
										BC( "dialogbox", "player", -1, "N/A?????????20?30??22?????.??????????.?????????????,??????." )	
										return	
								endif
						endif


						$addbuff = AddStatus( -1, 10724, 1 )
						BC( "dialogbox", "player", -1, "We're praying for you. When the prayer ends, you can receive Angel's blessing here to gain lots of EXP!" )						

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
						$Now_Week =  GetSystemTime( "week" )
										
										
//???????				
						if $give != $Now_Yday
								BC( "dialogbox", "player", -1, "N/A?????????????.?????????20?30??22?????.??????????.?????????????,??????.")	
								return
						endif				
						
						if $qd == 0
								BC( "dialogbox", "player", -1, "N/A????????,?????")	
								return
						endif			
						
						if $getexp == $Now_Yday
								BC( "dialogbox", "player", -1, "You have received the blessing, please come again tomorrow.")	
								return
						endif																							
						
						
						//22:30????
						if $Now_Hour == 22
							if $Now_Minute >= 30
								BC( "dialogbox", "player", -1, "The prayer is over. Please, come back tomorrow!")	
								return
							endif
						else
							if $Now_Hour >= 23
								BC( "dialogbox", "player", -1, "The prayer is over. Please, come back tomorrow!")	
								return
							endif
						endif
						
								
						if $nullitem < 1
								BC( "dialogbox", "player", -1, "You bag is full, you can not receive the blessing.")	
								return
						endif																					
						
						
						//??+?????
						if $Now_Week == 6
							$add = AddPlayerInfo(-1, "item", 63713 , 1 )
						else
							$add = AddPlayerInfo(-1, "item", 63572, 1 )
						endif

				

//?????????			
						SetPlayerVar(-1,3931,$Now_Yday )	
						
						$no = GetGlobalVar( 960 )						
						$no1 = $no + 1
						$no2 = SetGlobalVar( 960,$no1 )
		
	}
	
	
	function OnOption2(){
		
		//????????????
		$result = IsTaskAccept( -1 , 4494 )
		if $result == 0
			BC( "dialogbox", "player", -1, "N/A??????????!" )	
			return
		endif
		
		//??????????????
		$myday = GetPlayerVar( -1, 3936 )
		$Now_Yday =  GetSystemTime( "yday" )
		if $myday == $Now_Yday
			BC( "dialogbox", "player", -1, "N/A?????????????????!" )	
			return
		endif
		
		AcceptTask( -1 , 4494 )
		SetPlayerVar( -1 , 3936 , $Now_Yday )
		
	}