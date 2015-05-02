	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/17
	//		Author:??
	//		TaskName:Item-52021.s
	//		TaskID:????????
	//
	//****************************************
	
	
	//59202	????
	//59203	??
	//59204	??????
	//59205	????	
	// ??3919 ?????????????
	// ??3920 ?????????????
	// ??    28 ??????????
	// ??    29 ????????
	// ??    36 45????????
	
	
				function OnRequest(){										
		}
		
//----------------------------??????-------------------------------		

				function OnOption0(){
						//??????
						$qualification = GetPlayerVar( -1, 28 )	
						$get = GetPlayerVar( -1, 29 )
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$job = GetPlayerInfo( -1, "profession")
						if $get == 1
								BC( "dialogbox", "player", -1, "N/A????~????????~" )
								return
						endif									
						
						if $qualification != 1 
								BC( "dialogbox", "player", -1, "N/A??????????~" )
								return
						endif			
			
						if $nullitem < 4
								BC( "dialogbox", "player", -1, "N/A????????4?" )
								return
						endif									
						
						if $job == 1
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6455, 1 )			
								$add = AddPlayerInfo(-1, "item", 59207, 1 )
						endif																
						if $job == 2
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6455, 1 )		
								$add = AddPlayerInfo(-1, "item", 59207, 1 )	
						endif	
						if $job == 3
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6455, 1 )			
								$add = AddPlayerInfo(-1, "item", 59207, 1 )
						endif	
						if $job == 4
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6457, 1 )		
								$add = AddPlayerInfo(-1, "item", 59207, 1 )	
						endif	
						if $job == 5
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6457, 1 )	
								$add = AddPlayerInfo(-1, "item", 59207, 1 )		
						endif		
						if $job == 6
								$add = AddPlayerInfo(-1, "item", 6463, 1 )	
								$add = AddPlayerInfo(-1, "item", 6464, 1 )
								$add = AddPlayerInfo(-1, "item", 6457, 1 )	
								$add = AddPlayerInfo(-1, "item", 59207, 1 )		
						endif			
						SetPlayerVar(-1,29,1 )
											
								
				}
								
// -------------------------------????????----------------------------------
				function OnOption1(){
						//?????????
						$pick = GetPlayerVar( -1, 3920 )					
						//??????.0-365	
						$Now_Yday =  GetSystemTime( "yday" )			
						//??	
						$Now_Minute =  GetSystemTime( "minute")	
						//??	
						$Now_Hour =  GetSystemTime( "hour" )	
						//??	
						$Now_Mday =  GetSystemTime( "mday" )	
						//??	
						$Now_Month =  GetSystemTime( "month" )	
						//????
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")		
						
						if $lv > 45 
								BC( "dialogbox", "player", -1, "N/A?~??????~???45??~????20?????????~" )
								return
						endif							
							
						
						if $pick == $Now_Yday			
								BC( "dialogbox", "player", -1, "N/A??????????" )
								return					
						endif											
					
//??20:00-20:30?????						
						if $Now_Hour > -1
								if $Now_Hour < 20								
										BC( "dialogbox", "player", -1, "N/A??20:00-20:30?????????~?????~" )
										return
								endif
						endif		
						if $Now_Hour > 20
								if $Now_Hour < 24								
										BC( "dialogbox", "player", -1, "N/A??20:00-20:30?????????~?????~" )	
										return	
								endif
						endif		
						
						if	$Now_Minute > 30
								BC( "dialogbox", "player", -1, "N/A??20:00-20:30?????????~?????~" )
								return
						endif							
						if $nullitem < 1
								BC( "dialogbox", "player", -1, "N/A??????,????????~" )
								return		
						endif
																	
						$ADD = AddPlayerInfo(-1, "item", 19912, 1 )
						BC( "dialogbox", "player", -1, "N/A???~??????~" )						
//?????????			
						SetPlayerVar(-1,3920,$Now_Yday )			
						
					}			
//---------------------------------------------????------------------------------------------------	

				function OnOption2(){
						//???????
						$item = GetPlayerInfo( -1, "item", 59203 )
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$lv = GetPlayerInfo( -1, "level")
						//??????
						$qualification = GetPlayerVar( -1, 28 )
						//??????
						$give = GetPlayerVar( -1, 3919 )
						//?????????
						$pick = GetPlayerVar( -1, 3920 )
						//??	
						$Now_Minute =  GetSystemTime( "minute")	
						//??	
						$Now_Hour =  GetSystemTime( "hour" )	
						//??	
						$Now_Mday =  GetSystemTime( "mday" )	
						//??	
						$Now_Month =  GetSystemTime( "month" )	
						//??????.0-365	
						$Now_Yday =  GetSystemTime( "yday" )	
						
//????45????		
						if $lv > 45 
								BC( "dialogbox", "player", -1, "N/A?~??????~???45??~????20?????????~" )
								return
						endif							
										
//??????						
						if $give == $Now_Yday
								BC( "dialogbox", "player", -1, "N/A????????,?????~" )	
								return
						endif													
//??20:00-20:30?????						
						if $Now_Hour > -1
								if $Now_Hour < 20								
										BC( "dialogbox", "player", -1, "I will only accept the roses from 20:00 to 21:00. From 20:00 to 20:30 every evening, there will be a lot of Crystal Roses. Collect 60 for me and I will give you a reward. " )
										return
								endif
						endif		
						if $Now_Hour > 20
								if $Now_Hour < 24								
										BC( "dialogbox", "player", -1, "I have been given a lot of roses today. Please come back tomorrow." )	
										return	
								endif
						endif		
				
											
//??????						
						
						if $item < 60 
								BC( "dialogbox", "player", -1, "N/A??~??????????????????????60??~" )
								return
						endif
						
						if $nullitem < 2
								BC( "dialogbox", "player", -1, "N/A??????,????2???~" )
								return		
						endif						
						
						
//?????????		lv^2*9
						$n1 = $lv * $lv
						$n2 = $n1 * 700
				
						$sub = SubPlayerInfo(-1, "item", 59203, 60 )
						$add = AddPlayerInfo(-1, "item", 6463, 1 )	
						$add = AddPlayerInfo(-1, "item", 6464, 1 )						
						$add = AddPlayerInfo(-1, "exp", $n2 )
						BC( "dialogbox", "player", -1, "N/A??~~????~~???~~????????~~" )
//?????????			
						SetPlayerVar(-1,3919,$Now_Yday )			

}

// -------------------------------??45????-----------------------------

				function OnOption3(){				
						//??????
						$qualification = GetPlayerVar( -1, 28 )	
						$get = GetPlayerVar( -1, 36 )
						$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
						$job = GetPlayerInfo( -1, "profession" )
						$lv = GetPlayerInfo( -1, "level")
						if $get == 1
								BC( "dialogbox", "player", -1, "N/A????~????????~" )
								return
						endif									
						
						if $qualification != 1 
								BC( "dialogbox", "player", -1, "N/A??????????~" )
								return
						endif			
						if $lv < 45
								BC( "dialogbox", "player", -1, "N/A??45????" )
								return
						endif									
						
						if $nullitem < 4
								BC( "dialogbox", "player", -1, "N/A???????~" )
								return
						endif			
						
						if $job == 1
								$add = AddPlayerInfo(-1, "item", 31001, 1 )	
								$add = AddPlayerInfo(-1, "item", 31002, 1 )
								$add = AddPlayerInfo(-1, "item", 31004, 1 )
								$add = AddPlayerInfo(-1, "item", 31005, 1 )			
						endif																
						if $job == 2
								$add = AddPlayerInfo(-1, "item", 31008, 1 )	
								$add = AddPlayerInfo(-1, "item", 31009, 1 )
								$add = AddPlayerInfo(-1, "item", 31011, 1 )
								$add = AddPlayerInfo(-1, "item", 31012, 1 )			
						endif							
						if $job == 3
								$add = AddPlayerInfo(-1, "item", 31016, 1 )	
								$add = AddPlayerInfo(-1, "item", 31017, 1 )
								$add = AddPlayerInfo(-1, "item", 31019, 1 )
								$add = AddPlayerInfo(-1, "item", 31020, 1 )			
						endif							
						if $job == 4
								$add = AddPlayerInfo(-1, "item", 31023, 1 )	
								$add = AddPlayerInfo(-1, "item", 31024, 1 )
								$add = AddPlayerInfo(-1, "item", 31026, 1 )
								$add = AddPlayerInfo(-1, "item", 31027, 1 )			
						endif							
						if $job == 5
								$add = AddPlayerInfo(-1, "item", 31030, 1 )	
								$add = AddPlayerInfo(-1, "item", 31031, 1 )
								$add = AddPlayerInfo(-1, "item", 31033, 1 )
								$add = AddPlayerInfo(-1, "item", 31034, 1 )			
						endif							
						SetPlayerVar(-1,36,1 )
}