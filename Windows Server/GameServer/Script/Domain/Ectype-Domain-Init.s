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
	//0???  ?????????? 0?? 1?? 2?????
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
	//80??? BOSS???????? 0??? 1??
		
	function OnCreate(){
		
		//????ID????????ID
		$ectype_ID = GetCurEctypeID()
		//????????????
		$zhanling = GetDomainMaster($ectype_ID)
		//????????????????
		$leixing = GetCurDomainState()
		
		//??????????,???????????????????,?????
		//?????????????
		if $leixing == 1
			if $zhanling == 0
				$n1 = 0
				$posx1 = 158
					while $n1 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx1 , 216 , 0 , 90 , 0 , 0 )
						$n1 = $n1 + 1
						$posx1 = $posx1 + 2			
					endwhile
					
				$n2 = 0
				$posx2 = 158
					while $n2 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx2 , 213 , 0 , 90 , 0 , 0 )
						$n2 = $n2 + 1
						$posx2 = $posx2 + 2			
					endwhile
					
				$n3 = 0
				$posx3 = 158
					while $n3 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx3 , 210 , 0 , 90 , 0 , 0 )
						$n3 = $n3 + 1
						$posx3 = $posx3 + 2			
					endwhile					
					
				$n4 = 0
				$posx4 = 158
					while $n4 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx4 , 207 , 0 , 90 , 0 , 0 )
						$n4 = $n4 + 1
						$posx4 = $posx4 + 2			
					endwhile								
					
				$n5 = 0
				$posx5 = 158
					while $n5 < 6
						AddGuildDomainMonster( 59240 , 1 , $ectype_ID , $posx5 , 204 , 0 , 90 , 0 , 0 )
						$n5 = $n5 + 1
						$posx5 = $posx5 + 2			
					endwhile
				//???????,????????????????	
				AddGuildDomainMonster( 59252 , 1 , $ectype_ID , 163 , 258 , 0 , 90 , -1 , 0 )
				//??????
//				AddGuildDomainMonster( 59282 , 1 , $ectype_ID , 69 , 238 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59283 , 1 , $ectype_ID , 254 , 238 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59284 , 1 , $ectype_ID , 69 , 76 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59285 , 1 , $ectype_ID , 254 , 76 , 0 , 90 , 0 , 1 )
									
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
				AddNpcByPos( 2458 , $ectype_ID , 174 , 66 , 10800 , 0 )
				AddNpcByPos( 2459 , $ectype_ID , 197 , 261 , 10800 , 0 )
				AddNpcByPos( 2460 , $ectype_ID , 122 , 64 , 10800 , 0 )
				AddNpcByPos( 2464 , $ectype_ID , 62 , 163 , 10800 , 0 )
				AddNpcByPos( 2465 , $ectype_ID , 264 , 163 , 10800 , 0 )
			endif
			
			if $zhanling > 0
//				//????????????
//				AddSingleVehicle( 59268 , $ectype_ID, 174, 256 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 168, 250 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 158, 250 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 153, 256 , 0 , -1 , 0 , 0 )

				//????????????
//				AddSingleVehicle( 59268 , $ectype_ID, 174, 76 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 179, 71 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 151, 71 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 156, 76 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 220, 70 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 148, 86 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 134, 86 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 120, 86 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 108, 86 , 0 , -1 , 0 , 0 )
//				AddSingleVehicle( 59268 , $ectype_ID, 108, 70 , 0 , -1 , 0 , 0 )
				//???????
				AddGuildDomainMonster( 59269 , 1 , $ectype_ID , 163 , 168 , 0 , 90 , -1 , 0 )
//				//??????????
//				AddGuildDomainMonster( 59273 , 1 , $ectype_ID , 57 , 163 , 0 , 90 , 3 , 0 )
//				AddGuildDomainMonster( 59267 , 1 , $ectype_ID , 268 , 163 , 0 , 90 , 3 , 0 )
				//??????
//				AddGuildDomainMonster( 59282 , 1 , $ectype_ID , 69 , 238 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59283 , 1 , $ectype_ID , 254 , 238 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59284 , 1 , $ectype_ID , 69 , 76 , 0 , 90 , 0 , 1 )
//				AddGuildDomainMonster( 59285 , 1 , $ectype_ID , 254 , 76 , 0 , 90 , 0 , 1 )
				
				SetEctypeVar( $ectype_ID , 0 , 1)		
				SetEctypeVar( $ectype_ID , 1 , 0)	
				SetEctypeVar( $ectype_ID , 2 , 0)							
				SetEctypeVar( $ectype_ID , 3 , 0)	
				SetEctypeVar( $ectype_ID , 4 , 0)
				SetEctypeVar( $ectype_ID , 5 , 0)
				SetEctypeVar( $ectype_ID , 26 , 5)
				SetEctypeVar( $ectype_ID , 27 , 5)
				SetEctypeVar( $ectype_ID , 28 , 5)
				SetEctypeVar( $ectype_ID , 29 , 5)
				AddNpcByPos( 2455 , $ectype_ID , 151 , 253 , 3600 , 0 )
				AddNpcByPos( 2456 , $ectype_ID , 176 , 253 , 3600 , 0 )
				AddNpcByPos( 2457 , $ectype_ID , 153 , 66 , 3600 , 0 )
				AddNpcByPos( 2458 , $ectype_ID , 174 , 66 , 3600 , 0 )
//				AddNpcByPos( 2459 , $ectype_ID , 197 , 261 , 3600 , 0 )
//				AddNpcByPos( 2460 , $ectype_ID , 122 , 64 , 3600 , 0 )
//				AddNpcByPos( 2464 , $ectype_ID , 62 , 163 , 3600 , 0 )
//				AddNpcByPos( 2465 , $ectype_ID , 264 , 163 , 3600 , 0 )	

				//??????ID,?? 59252 AI
				$GuildID = GetGuildDomainMasterGuild($ectype_ID)
				SetEctypeVar($ectype_ID,10,$GuildID)
//				BC("screen","map",$ectype_ID,"GUID:03744000000")
//				BC("chat","map",$ectype_ID,"GUID:03744000001")
			endif
		endif	
		
		//??????
		if $leixing == 2			
			AddMonsterByFloat( 41091, 1, $ectype_ID, 163 , 69 , 0 )
			AddMonsterByFloat( 41091, 1, $ectype_ID, 153 , 58 , 0 )
			AddMonsterByFloat( 41091, 1, $ectype_ID, 174 , 58 , 0 )		
			AddNpcByPos( 2457 , $ectype_ID , 153 , 66 , 10800 , 0 )
			AddNpcByPos( 2458 , $ectype_ID , 174 , 66 , 10800 , 0 )
			SetEctypeVar( $ectype_ID , 0 , 2)
		endif	
		
		//????NPC
		DeleteNPC(2459,-1)
		DeleteNPC(2460,-1)
		DeleteNPC(2461,-1)
		DeleteNPC(2462,-1)
		
		//????
		DeleteMonster(-1,59270)
		OpenMask(2,$ectype_ID)
		
		//????NPC
		DeleteNPC(2459,$ectype_ID)
		DeleteNPC(2460,$ectype_ID)
		DeleteNPC(2464,$ectype_ID)
		DeleteNPC(2465,$ectype_ID)			
							
	}
	
	function InitTimer(){
		
		//????ID????????ID
		$ectype_ID = GetCurEctypeID()
		SetEctypeTimer(0, 10, "EctypeTime0")
		SetEctypeTimer(1, 30, "EctypeTime1")
		SetEctypeTimer(2, 3600, "EctypeTime2")
  	  	StartEctypeTimer($ectype_ID , 0 )
  	  	StartEctypeTimer($ectype_ID , 2 )
		
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
		BC( "screen" , "map" , $ectype_ID , "The Territory War has begun! Destroy the Crystals in different territories to claim rights to that territory!" )
		BC( "dialogbox" , "map" , $ectype_ID , "This Territory War uses an attack/defense model: the attacking side needs to destroy the defenders' Crystals, and the defenders need to protect their Crystals from being destroyed for a whole hour in order to win." )
		StartEctypeTimer($ectype_ID , 1 )		
	endif
	
	if $a == 2
		BC( "screen" , "map" , $ectype_ID , "Enter Territory Foraging Grounds. Guild members can use the Celebeam Particle Extractor to collect Celebeam Particles." )
		BC( "dialogbox" , "map" , $ectype_ID , "Enter Territory Foraging Grounds. Guild members can use the Celebeam Particle Extractor to collect Celebeam Particles." )
		StartEctypeTimer($ectype_ID , 1 )	
	endif
		
	}
	
	function EctypeTime1(){
		
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	//?????5?????	
	$a = GetEctypeVar($ectype_ID , 0 )
	
	if $a == 1	
//		BC( "screen" , "map" , $ectype_ID , "GUID:03744000008" )
//		BC( "screen" , "map" , $ectype_ID , "GUID:03744000009" )
	endif
	
	if $a == 2 
		BC( "screen" , "map" , $ectype_ID , "Enter Territory Foraging Grounds. Guild members can use the Celebeam Particle Extractor to collect Celebeam Particles." )
	endif
	
	}	

	function EctypeTime2(){
		
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	//?????5?????	
	$a = GetEctypeVar($ectype_ID , 0 )
	
	if $a == 0
		BC( "screen" , "map" , $ectype_ID , "The attackers failed to defeat Thor in 1 hour; the attack has failed!" )
		SetGuildDomainEnd( $ectype_ID ,0 ,2)
	endif
	
	
	if $a == 1
		BC( "screen" , "map" , $ectype_ID , "The attackers failed to destroy all of the Territory Crystals in 1 hour; the defenders win!" )
		$GuildID = GetGuildDomainMasterGuild($ectype_ID)
		SetGuildDomainEnd( $ectype_ID ,$GuildID,2 )
		AddGuildDomainPlayerExp($mapID,$GuildID,1500000)
		BC( "screen" , "map" , $mapID , "The defending guild was the victor! All their members received 1,500,000 EXP!" )
	endif
	
	}
			
	function OnGuildDomainEnd(){
			
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	
//	BC("screen","map",$ectype_ID,"Beginning to disperse rewards; sending mail to the winning Guild")
	
	//????????????????
	SendGuildDomainMail( $ectype_ID , "Territory War Victory Reward" ,"Great warrior! Congratulations! You have won this Territory War. This will be your reward.\n{#ff00ff30=Check the attachment for the reward.#}", 0 , 59884 , 1 )
	//????????????????
	SendGuildDomainMail( $ectype_ID , "Territory War Participation Reward" ,"Loyal warrior! Congratulations! You have won this Territory War. This will be your reward.\n{#ff00ff30=Check the attachment for the reward.#}", 0 , 59885 , 2 )

	}