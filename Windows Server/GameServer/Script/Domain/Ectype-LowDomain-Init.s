	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/13
	//		Author:??
	//		TaskName:Ectype-LowDomain-Init.s
	//		TaskID:??????????
	//
	//****************************************
	//????
	//0???  ?????????? 0?? 1?? 2???
	//1???  ??????? 0?? 1??
	//2???  ??????? 0?? 1??
	//3???  ??????? 0?? 1??
	//4???  ????????? 0?? 1?? 2??
	//5???  ????????? 0?? 1?? 2??
	//6???  
	//7???  
	//20??? ??59240????
	//21??? ??59241????
	//22??? ??59244????
	//23??? ??59245????
	//24??? ??59242????
	//25??? ??59243????
	//26??? ????????? ???5
	//27??? ????????? ???5
	//28??? ??????????? ???5
	//29??? ??????????? ???5
		
	function OnCreate(){
		
		//????ID????????ID
		$ectype_ID = GetCurEctypeID()
		//????????????
		$zhanling = GetDomainMaster($ectype_ID)
		//??????????????
		$leixing = GetCurDomainState()
		
		//??????????,???????????????????,?????
		//?????????????
		if $leixing == 1
			if $zhanling == 0
				$n1 = 0
				$posx1 = 158
					while $n1 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx1 , 216 , 0 , 90 , 2 , 0 )
						$n1 = $n1 + 1
						$posx1 = $posx1 + 2			
					endwhile
					
				$n2 = 0
				$posx2 = 158
					while $n2 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx2 , 213 , 0 , 90 , 2 , 0 )
						$n2 = $n2 + 1
						$posx2 = $posx2 + 2			
					endwhile
					
				$n3 = 0
				$posx3 = 158
					while $n3 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx3 , 210 , 0 , 90 , 2 , 0 )
						$n3 = $n3 + 1
						$posx3 = $posx3 + 2			
					endwhile					
					
				$n4 = 0
				$posx4 = 158
					while $n4 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx4 , 207 , 0 , 90 , 2 , 0 )
						$n4 = $n4 + 1
						$posx4 = $posx4 + 2			
					endwhile								
					
				$n5 = 0
				$posx5 = 158
					while $n5 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx5 , 204 , 0 , 90 , 2 , 0 )
						$n5 = $n5 + 1
						$posx5 = $posx5 + 2			
					endwhile
				//???????,????????????????	
				AddGuildDomainMonster( 59252 , 1 , $ectype_ID , 163 , 258 , 0 , 90 , 1 , 0 )					
				SetEctypeVar( $ectype_ID , 0 , 0)		
				SetEctypeVar( $ectype_ID , 1 , 0)	
				SetEctypeVar( $ectype_ID , 2 , 0)							
				SetEctypeVar( $ectype_ID , 3 , 0)	
				SetEctypeVar( $ectype_ID , 4 , 0)
				SetEctypeVar( $ectype_ID , 5 , 0)
				SetEctypeVar( $ectype_ID , 26 , 5)
				SetEctypeVar( $ectype_ID , 27 , 5)
				SetEctypeVar( $ectype_ID , 28 , 5)
				SetEctypeVar( $ectype_ID , 29 , 5)
				OpenMask(2,$ectype_ID)
				AddNpcByPos( 2455 , $ectype_ID , 151 , 253 , 10800 , 0 )
				AddNpcByPos( 2456 , $ectype_ID , 176 , 253 , 10800 , 0 )
				AddNpcByPos( 2457 , $ectype_ID , 153 , 66 , 10800 , 0 )
				AddNpcByPos( 2458 , $ectype_ID , 172 , 66 , 10800 , 0 )
				AddNpcByPos( 2459 , $ectype_ID , 199 , 266 , 10800 , 0 )
				AddNpcByPos( 2460 , $ectype_ID , 119 , 65 , 10800 , 0 )
			endif
			
			if $zhanling > 0
				//?????????
				AddGuildDomainMonster( 59227 , 1 , $ectype_ID , 163 , 258 , 0 , 270 , 1 , 0 )
				//?????????
				AddGuildDomainMonster( 59228 , 1 , $ectype_ID , 163 , 63 , 0 , 90 , 2 , 0 )
				//????????????
				AddSingleVehicle( 59268 , $ectype_ID, 180, 234 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 194, 234 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 208, 234 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 148, 234 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 134, 234 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 120, 234 , 0 , -1 , 0 , 0 )
				//????????????
				AddSingleVehicle( 59268 , $ectype_ID, 180, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 194, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 208, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 220, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 220, 70 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 148, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 134, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 120, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 108, 86 , 0 , -1 , 0 , 0 )
				AddSingleVehicle( 59268 , $ectype_ID, 108, 70 , 0 , -1 , 0 , 0 )
				AddGuildDomainMonster( 59269 , 1 , $ectype_ID , 163 , 168 , 0 , 90 , 1 , 0 )
				SetEctypeVar( $ectype_ID , 0 , 0)		
				SetEctypeVar( $ectype_ID , 1 , 0)	
				SetEctypeVar( $ectype_ID , 2 , 0)							
				SetEctypeVar( $ectype_ID , 3 , 0)	
				SetEctypeVar( $ectype_ID , 4 , 0)
				SetEctypeVar( $ectype_ID , 5 , 0)
				SetEctypeVar( $ectype_ID , 26 , 5)
				SetEctypeVar( $ectype_ID , 27 , 5)
				SetEctypeVar( $ectype_ID , 28 , 5)
				SetEctypeVar( $ectype_ID , 29 , 5)
				AddNpcByPos( 2455 , $ectype_ID , 151 , 253 , 10800 , 0 )
				AddNpcByPos( 2456 , $ectype_ID , 176 , 253 , 10800 , 0 )
				AddNpcByPos( 2457 , $ectype_ID , 153 , 66 , 10800 , 0 )
				AddNpcByPos( 2458 , $ectype_ID , 172 , 66 , 10800 , 0 )
				AddNpcByPos( 2459 , $ectype_ID , 199 , 266 , 10800 , 0 )
				AddNpcByPos( 2460 , $ectype_ID , 119 , 65 , 10800 , 0 )	
			endif
		endif			
							
	}
	
	function InitTimer(){
		
		//????ID????????ID
		$ectype_ID = GetCurEctypeID()
		SetEctypeTimer(0, 10, "EctypeTime0")
		SetEctypeTimer(1, 30, "EctypeTime1")
  	  	StartEctypeTimer($ectype_ID , 0 )
		
	}
				
	function EctypeTime0(){
		
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	//?????5?????	
	$a = GetEctypeVar($ectype_ID , 0 )
	
	if $a == 0
		BC( "screen" , "map" , $ectype_ID , "The current territory your Guild is attacking is occupied by Thor. Defeat Thor then you can get the occupation of that territory" )
		BC( "dialogbox" , "map" , $ectype_ID , "The current territory your Guild is attacking is occupied by Thor. Defeat Thor then you can get the occupation of that territory" )
	endif
	
	if $a == 1	
		BC( "screen" , "map" , $ectype_ID , "Territory War has started! Destroy the opposite side's Territory Crystal to win the battle!" )
		BC( "dialogbox" , "map" , $ectype_ID , "You have entered Territory Wars. The Attackers and Defenders are all trying to defeat each other. If you can destroy the opposite Guild's Territory Crystal or make them unable to revive anymore, you win this war." )
		StartEctypeTimer($ectype_ID , 1 )		
	endif
	
	if $a == 2
		BC( "screen" , "map" , $ectype_ID , "Hunting Ground Mode" )
		BC( "dialogbox" , "map" , $ectype_ID , "Hunting Ground Mode" )	
	endif
		
	}
	
	function EctypeTime1(){
		
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	//?????5?????	
	$a = GetEctypeVar($ectype_ID , 0 )
	
	if $a == 1	
		BC( "screen" , "map" , $ectype_ID , "Your base can produce the vessels Magic Butcher and Tank Killer, which can deal huge damage to humans or other vessels." )
		BC( "screen" , "map" , $ectype_ID , "If you occupy a Guild who has a Neutral Vessel Workshop, you can produce the vessel, Lord of Destruction, to deal huge damage to the Citygate" )
	endif
	
	}	
			
	function OnGuildDomainEnd(){
			
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	
	//????????????????
	SendGuildDomainMail( $ectype_ID , "Junior Territory War Victory Reward" ,"Congratulations, great warrior! You won this Junior Territory War! Here is your reward.\n{#ff00ff30=Check the attachment for the reward.#}", 0 , 59884 , 1 )
	//????????????????
	SendGuildDomainMail( $ectype_ID , "Junior Territory War Participation Reward" ,"Congratulations, loyal warrior! You won this Junior Territory War! Here is your reward.\n{#ff00ff30=Check the attachment for the reward.#}", 0 , 59885 , 2 )

	}