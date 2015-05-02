//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2008/10/17
//		Author:??
//		TaskName:
//		TaskID:????
//
//****************************************

//**???????**
//?? SendActivityRecord ???????:
//??????:(????????????)
//?????????? SendActivityRecord( -1, 0 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//???????:(??????3???????,???????????)
//?????????? SendActivityRecord( -1, 1 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//?????????:(??????3???????,???????????)
//?????????? SendActivityRecord( -1, 2 ) ???
//????????? SendActivityRecord( -1, 4 ) ???
//**???????end**

//--------------------------------------------------------------
//--------------------?????------------------------------
//--------------------------------------------------------------
	function OnMapLoaded(){
	
		$map_id = GetPlayerInfo(-1 , "mapid")
		if $map_id == 146
			BC("chat", "player", -1, "[color=ffff3817]Character data corrupted. Please contact Customer Service.")
			BC("screen", "player", -1, "Character data corrupted. Please contact Customer Service.")
		endif
		//??????5??????BUFF
		if $map_id == 83
			AddStatus(-1 , 10561, 1)
		endif
		//???????BUFF
			AddStatus(-1 , 11815, 2)
		//???????BUFF
			AddStatus( -1, 6073, 1 )
		//????????BUFF
			AddStatus( -1, 6349, 2 )
		//???????BUFF
			AddStatus(-1,2362,2)
		//????????????
//4072			???????
//			SetPlayerVar(-1,4071,0)
			SetPlayerVar(-1,4072,0)
			
		$isreset = GetPlayerVar(-1,294)
		if $isreset == 0
			$indexW = 286
			while $indexW < 293
				SetPlayerVar(-1,$indexW,0)
				$indexW += 1
			endwhile
			SetPlayerVar(-1,4049,0)
			SetPlayerVar(-1,4050,0)
			SetPlayerVar(-1,3436,0)
			SetPlayerVar(-1,4076,0)
			SetPlayerVar(-1,4077,0)
			SetPlayerVar(-1,4079,0)
			SetPlayerVar(-1,4080,0)
			SetPlayerVar(-1,3445,0)
			SetPlayerVar(-1,294,1)
		endif
		
		call checkresult()
		call valentine()
		//?????? ????????
		$level = GetPlayerInfo(-1 , "level")
		if $level < 3
			SetPlayerVar(-1 , 28 , 1)
		endif
		//???,??????14801-14833??????,?????????BUFF
		if $map_id < 14801
			AddStatus( -1, 7881, 2 )
			AddStatus( -1, 7882, 2 )
			AddStatus( -1, 7883, 2 )
			AddStatus( -1, 7884, 2 )
		endif
		if $map_id > 14833
			AddStatus( -1, 7881, 2 )
			AddStatus( -1, 7882, 2 )
			AddStatus( -1, 7883, 2 )
			AddStatus( -1, 7884, 2 )
		endif
//--------------------?????---------------------------------
		$isspecial = 0
		//--???
		if $map_id >= 25801
			if $map_id <= 25910
				$isspecial = 1
			endif
		endif
		//--?????
		if $map_id >= 26421
			if $map_id <= 26520
				$isspecial = 1
			endif
		endif
		
		if $isspecial == 0
			SetPlayerVar(-1,3595,0)
		endif
		//??????,??????15101-25100??????,?????BUFF
		if $map_id < 15101
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			RemoveStatusByID(-1,21627)
		endif
		if $map_id > 25100
			RemoveStatusByID(-1,21625)
			RemoveStatusByID(-1,21626)
			RemoveStatusByID(-1,21627)
		endif
		//??90???,??????24001-24100??????,?????BUFF
		if $map_id < 24001
			RemoveStatusByID(-1,6451)
			RemoveStatusByID(-1,6458)
			RemoveStatusByID(-1,6459)
			RemoveStatusByID(-1,6460)
			RemoveStatusByID(-1,6461)
		endif
		if $map_id > 24100
			RemoveStatusByID(-1,6451)
			RemoveStatusByID(-1,6458)
			RemoveStatusByID(-1,6459)
			RemoveStatusByID(-1,6460)
			RemoveStatusByID(-1,6461)
		endif
		//????,??????26221-26320??????,?????BUFF???
		if $map_id < 26221
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
		endif
		if $map_id > 26320
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
		endif

	}
//--------------------------------------------------------------
//--------------------????---------------------------------
//--------------------------------------------------------------
	function OnLogin(){
		//3.82????????bug
		$wenzhangbug = GetPlayerVar(-1, 311)
		if $wenzhangbug == 0
			RemoveStatusByID(-1,12026)
			RemoveStatusByID(-1,12027)
			RemoveStatusByID(-1,12028)
			RemoveStatusByID(-1,12029)
			RemoveStatusByID(-1,12030)
			RemoveStatusByID(-1,12031)
			RemoveStatusByID(-1,12032)
			RemoveStatusByID(-1,12033)
			RemoveStatusByID(-1,12034)
			SetPlayerVar(-1, 311, 1)
		endif
		BC("chat", "player", -1, "[color=ffff3817]Welcome to Battle of the Immortals!")
		$Now_Week =  GetSystemTime( "week" )
		$Now_Yday =  GetSystemTime( "yday" )
    $double_days = GetPlayerVar(-1 , 3626)
    $double_weeks = GetPlayerVar(-1 , 3216)
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Year =  GetSystemTime( "year" )
		$level = GetPlayerInfo(-1,"level")
		$levelf = GetFieldLevel(-1)
//		//----------------------------?????????-----------------------------
//		if $Now_Year == 2011
//			if $Now_Month == 12
//				if $Now_Mday >= 20
//					if $Now_Mday <= 26
//						if $level >= 45
//							$issentmail = GetPlayerVar(-1,3305)
//							if $issentmail < 5
//								SetPlayerVar(-1,3305,5)
//								SendMail(-1,"Merry Christmas","Merry Christmas! Atlantis is celebrating with a festival, will you get the present you want? Find your friends to take part in all kinds of surprising events!",0,44093)
//								SendMail(-1,"Christmas Event Invitation","Though Christmas Event, you can get a Christmas Card. During Christmas time, go to the Christmas Tree to finish quest and receive a Christmas Card. When the Christmas Tree grows enough, you can get a reward for how many times you watered it.",0,44140)
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		if $Now_Year == 2012
//			if $Now_Month == 1
//				if $Now_Mday >= 1
//					if $Now_Mday <= 7
//						if $level >= 60
//							$issentmail = GetPlayerVar(-1,3305)
//							if $issentmail < 10
//								SetPlayerVar(-1,3305,10)
//								SendMail(-1,"Happy New Year","The people of Atlantis are preparing to ring in the New year! If you're interested, there are many presents waiting for those tho participate!",0,44093)
//								SendMail(-1,"Champion's Celebration","Thank you for your contributions to Atlantis' safety in the past year. Please accept this Badge as a token of our gratitude.\n\nAtlantis Paladin Order",0,21164)
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		if $Now_Year == 2012
//			if $Now_Month == 1
//				if $Now_Mday >= 21
//					if $Now_Mday <= 31
//						if $level >= 60
//							$issentmail = GetPlayerVar(-1,3305)
//							if $issentmail < 15
//								SetPlayerVar(-1,3305,15)
//								SendMail(-1,"Happy Spring Festival","Thank you for your loyalty and love for BOI. We have been together celebrating every meaningful days. Now we are together to welcome the arrival of the New Year.\nWe were experiencing each update and upgrading of BOI. Without your support, Atlantis wouldn't be nearly so prosperous. Hence, with your support, we have confidence in facing our future!\nThanks again, let's rally together in the coming year to experience BOI.",0,44093)
//								SendMail(-1,"Spring Festival Invitation","Please take this Dragon Badge.\nFrom January 21st through January 31st, the Chinese New Year Festival Beast will be held in Atlantis at 20:00 each night. In this event, the players with the highest scores will have a chance to get a Festival Beast Pet or Mount, Exquisite Badge, and other great prizes!",0,21165)
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
////			if $dayadd >= 412
//				if $dayadd <= 529
//					if $level >= 60
//						$issentmail = GetPlayerVar(-1,3305)
//						if $issentmail < 20
//							SetPlayerVar(-1,3305,20)
//							SendMail(-1,"Anniversary Celebration!","The BOI team really appreciates your support! It is because of you that we strive to make our game better and better. It's already our third year, but we'll keep working to make it the best we can! As a thanks for your support, we've prepared an Anniversary Souvenir for you! Take it, and enjoy all the new content in BOI!",0,21177)
//							SendMail(-1,"Anniversary Celebration Invitation","Hi, I am Misha. During the Anniversary Celebration (April 17th through May 29th) I will be handing out daily prizes. There is a small gift for you. Please remember stop by!",0,44093)
//						endif
//					endif
//				endif
////			endif
//		endif
////---------------------------------???????---------------------------------start
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
//			if $dayadd >= 710
//				if $dayadd <= 810
//					if $level >= 45
//						$issentmail = GetPlayerVar(-1,3305)
//						if $issentmail < 25
//						//???????????0,3871?? 3873?? 76????--start
//							SetPlayerVar(-1,3871,0)
//							SetPlayerVar(-1,3873,0)
//							SetPlayerVar(-1,76,0)
//						//?0--end
//							SetPlayerVar(-1,3305,25)
//							SendMail(-1,"Easter Egg","Another year, another Easter! You found a gift inside your Easter Egg. Happy Easter!",0,63756)
//						endif
//					endif
//				endif
//			endif
//		endif
////--------------------------------???????------------------------------------end
////---------------------------------?????---------------------------------start
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
//			//???id???????10?ID??
//			$myselfid = GetPlayerID()
//			$rank = 0
//			$check = 0
//			while $rank <= 9
//				$targetid = GetRankPlayerID(2,$rank)
//				$rank = $rank + 1
//				if $myselfid == $targetid
//					$check = 1
//				endif
//			endwhile			
//			if $dayadd >= 925
//				if $dayadd <= 926
//					if $check == 1
//						$issentmail = GetPlayerVar(-1,3305)
//						if $issentmail < 30
//							SetPlayerVar(-1,3305,30)
//							SendMail(-1,"GUID:08287000021","GUID:08287000022",0,44482)
//						endif
//					endif
//				endif
//			endif
//		endif
////--------------------------------?????------------------------------------end
//---------------------------------??????130???---------------------------------start
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday		
			if $dayadd >= 1120
				if $dayadd <= 1202
					if $level == 130
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 35
							SetPlayerVar(-1,3305,35)
							SendMail(-1,"Expedition Week Compensation","Honored warrior, we apologize profusely for our error that robbed you of your chance to collect last week's Expedition prize! Please accept the attached compensation, and our apology.",0,44553)
						endif
					endif
				endif
			endif
		endif
//--------------------------------??????130???------------------------------------end
//---------------------------------3.80??---------------------------------start
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday		
			if $dayadd >= 1211
				if $dayadd <= 1231
					if $level >= 60
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 40
							SetPlayerVar(-1,3305,40)
//44570	??????(???)
							SendMail(-1,"New Year's Celebration Invitation","A new year is once again upon us. BoI is thrilled to have passed this last year together with you! We've prepared a bounty of festive treats for our loyal heroes, including Crisis in Atlantis (12/11), Snowmen Siege (12/25), New Year's Race (12/28), and Thunderguns (1/1). For more information, check the Events window.",0,44570)
						endif
					endif
				endif
			endif
		endif
//--------------------------------3.80??------------------------------------end
//---------------------------------3.81??????---------------------------------start
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday		
			if $dayadd >= 1211
				if $dayadd <= 1231
					if $level >= 60
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 45
							SetPlayerVar(-1,3305,45)
//44604	????????
							SendMail(-1,"Celestial Platinum Noble Coupon","Welcome to the end-of-year expansion, the Celestial Lord! We've got plenty of new and exciting playable content in store for you, and gifts aplenty!",0,44604)
						endif
					endif
				endif
			endif
		endif
//--------------------------------3.81??????------------------------------------end
//---------------------------------????????30?????---------------------------------start
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday		
			if $dayadd >= 1211
				if $dayadd <= 1231
					if $levelf >= 25
						$issentmail = GetPlayerVar(-1,3305)
						if $issentmail < 50
							SetPlayerVar(-1,3305,50)
							SendMail(-1,"Fae Shrine Expedition Compensation","Honored warrior, we apologize profusely for our error that may have robbed you of your chance to collect last week's Fae Shrine Expedition prize! Please accept the attached compensation, and our apology.",0,44607)
						endif
					endif
				endif
			endif
		endif
//--------------------------------????????30?????------------------------------------end

//---------------------------------??????????---------------------------------start


//		$fuwuqi = GetServerGrade()
//		if $Now_Year == 2013		
//			if $Now_Month == 1		
//				if $Now_Mday > 22		
//					if $Now_Mday < 29		
//						$issentmail = GetPlayerVar(-1,3305)
//						if $fuwuqi > 2
//							if $issentmail < 55
//							$paiming1 = GetPlayerInfo(-1, "battleranklist")
//								//???
//								if $paiming1 == 0
//									SetPlayerVar(-1,3305,55)
//									SendMail(-1,"GUID:08287000031","GUID:08287000032",0,44615) 
//								endif
//								//2-5?
//								if $paiming1 >= 1
//									if $paiming1 <= 4
//										SetPlayerVar(-1,3305,55)
//										SendMail(-1,"GUID:08287000033","GUID:08287000034",0,44616) 
//									endif
//								endif
//								//6-20?
//								if $paiming1 >= 5
//									if $paiming1 <= 19
//										SetPlayerVar(-1,3305,55)
//										SendMail(-1,"GUID:08287000035","GUID:08287000036",0,44617)
//									endif
//								endif
//								//21-100?
//								if $paiming1 >= 20
//									if $paiming1 <= 99
//										SetPlayerVar(-1,3305,55)
//										SendMail(-1,"GUID:08287000037","GUID:08287000038",0,44618)
//									endif
//								endif												
//							endif
//						endif
//					endif
//				endif
//			endif
//		endif
		//---------------------------------??????---------------------------------start
		//---------2?5-2?18-44614,2?14-44623,2?10-2?26-44624-------------


		if $Now_Year == 2013		
			if $Now_Month == 2		
				if $Now_Mday > 4		
					if $Now_Mday < 26
						$issentmail = GetPlayerVar(-1,308)
						if $level >= 60
						if $issentmail < 1 
								SetPlayerVar(-1,308,1)
								SendMail(-1,"Spring Festival Card","Spring Festival is once again upon us. BoI is thrilled to have passed this last year together with you! We've prepared a bounty of festive treats for our loyal heroes. Open your Spring Festival Card to receive them!",0,44614)
					
						endif
						endif
					endif												
				endif
			endif
				
		endif
		if $Now_Year == 2013		
			if $Now_Month == 2		
				if $Now_Mday == 14		
						$issentmail = GetPlayerVar(-1,309)
						if $issentmail < 1 
								SetPlayerVar(-1,309,1 )
								SendMail(-1,"Best wishes for all!","The Fortune God's Pouch, bringing you riches and blessings for the new year!",0,44623)
						endif
							
				endif
			endif
				
		endif
		if $Now_Year == 2013		
			if $Now_Month == 2		
				if $Now_Mday > 9		
					if $Now_Mday < 27		
						$issentmail = GetPlayerVar(-1,310)
						if $issentmail < 1 
								SetPlayerVar(-1,310,1)
								SendMail(-1,"Lucky Money","In just a flash, another year has gone by. And under your watchful eye, BoI's grown another year older! To celebrate, we've prepared a special lucky red envelope for you. Just talk to the corresponding NPC to receive one of your very own!",0,44624)
					
						endif		
					endif												
				endif
			endif
				
		endif

//--------------------------------??????????------------------------------------end


//--------------------------------????------------------------------------start
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday		
			if $dayadd >= 1211
				if $dayadd <= 1231
					$leave_days = GetOffLineDays(-1)
					
//					BC("messagebox","player",-1,"leave_days=",$leave_days)
					
//44589	??????????
//44590	??????????
//44591	??????????
//44595	??????????
//44596	??????????
//44597	??????????
					$isget = GetPlayerVar(-1,296)
					if $isget == 0
						if $level >= 90
						
							if $leave_days >= 30
								if $leave_days < 60
									SendMail(-1,"Returning Veteran Silver EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44589)
									SendMail(-1,"Returning Veteran Silver Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44595)
									SetPlayerVar(-1,296,1)
								endif
							endif
							
							if $leave_days >= 60
								if $leave_days < 120
									SendMail(-1,"Returning Veteran Gold EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44590)
									SendMail(-1,"Returning Veteran Gold Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44596)
									SetPlayerVar(-1,296,1)
								endif
							endif
							
							if $leave_days >= 120
								if $leave_days < 1366
									SendMail(-1,"Returning Veteran Diamond EXP Pack","Welcome back to Battle of the Immortals! Here's a welcoming gift for you to help you recover any EXP you missed out on.",0,44591)
									SendMail(-1,"Returning Veteran Diamond Letter","Welcome back to Battle of the Immortals! Please accept this welcome letter. Bring enough Welcoming Keys to the goddess of fate to exchange for valuable gifts!",0,44597)
									SetPlayerVar(-1,296,1)
								endif
							endif
							
						endif
					endif
				endif
			endif
		endif
//--------------------------------????------------------------------------end
		//----------------------------???????-----------------------------
   	//??????????,?????????1?1?????,?????,???????
    $level = GetPlayerInfo(-1 , "level")
    //?????????,??????????????? 2010?3?25?
    $vip_level = GetPlayerInfo(-1 , "noblelevel")
    $double_exp_time = 18000
    if $vip_level == 0
    	$double_exp_time = 18000
    endif
    if $vip_level == 1
    	$double_exp_time = 18000
    endif
    if $vip_level == 2
    	$double_exp_time = 18000
    endif
    if $vip_level == 3
    	$double_exp_time = 21600
    endif
    if $vip_level == 4
    	$double_exp_time = 25200
    endif
    if $vip_level == 5
    	$double_exp_time = 28800
    endif
    if $vip_level == 6
    	$double_exp_time = 32400
    endif
    if $vip_level == 7
    	$double_exp_time = 36000
    endif
    if $vip_level == 8
    	$double_exp_time = 36000
    endif
    if $vip_level == 9
    	$double_exp_time = 36000
    endif
    if $vip_level == 10
    	$double_exp_time = 36000
    endif
    if $vip_level == 11
    	$double_exp_time = 36000
    endif
		//10?????
		if $level >= 10
			if $double_days == 0
				if $double_weeks == 0
					SetExpAddons(-1 , $double_exp_time , 1)
					SetPlayerVar(-1 , 3626 , $Now_Yday)                                 
					SetPlayerVar(-1 , 3216 , $Now_Week)         			
				endif
			endif
		  //???????
			//?????????????????,?????????
			if $Now_Week < $double_weeks
				SetExpAddons(-1 , $double_exp_time , 1)
				SetPlayerVar(-1 , 3626 , $Now_Yday)
				SetPlayerVar(-1 , 3216 , $Now_Week)
			//?????????????????????,?????????????7?,???????
			else
				//?????????????????,????????,??????
				if $Now_Yday >= $double_days
					$decrease_days = $Now_Yday - $double_days
					if $decrease_days >= 7
						SetExpAddons(-1 , $double_exp_time , 1)
						SetPlayerVar(-1 , 3626 , $Now_Yday)
						SetPlayerVar(-1 , 3216 , $Now_Week)
					endif
				//???????...
				else
					//?????0???,??365?????????,???????????,????12??1???????????????
					$temp_value = $Now_Yday + 365
		      $decrease_days = $temp_value - $double_days
					if $decrease_days >= 7
						SetExpAddons(-1 , $double_exp_time , 1)
						SetPlayerVar(-1 , 3626 , $Now_Yday)
						SetPlayerVar(-1 , 3216 , $Now_Week)
					endif
				endif
			endif
		endif
	//----------------------------???????----------------------------
	
	//???????????----------------------------
		$Battle_line = GetServerLineID()
		$Battle_season = GetBattleTeamLeagueSection
		if $Battle_season == 4
			if $Battle_line >= 106
				BC( "dialogbox", "player", -1, "Time Periods:\nFirst Round: 14:00-14:10\nSecond Round 15:00-15:10\nThird Round: 16:00-16:10\nSemifinals: 17:00-17:10\nFinals: 20:00-20:10" )
			endif
		endif	
		
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )
		
	 	$UseTime = GetPlayerVar(-1 , 3956 )
		$UseHour = GetPlayerVar(-1 , 3963 )
	
		
		if $UseTime != $Time
			if $Now_Hour >= 2
				CancelTask( -1 , 2533 )
				CancelTask( -1 , 2534 )
				CancelTask( -1 , 2535 )
				CancelTask( -1 , 2536 )
				CancelTask( -1 , 2537 )
			endif
		endif
	//???????????end----------------------------
	//??????????????----------------------------
	$teamid = GetBattleTeam( -1 , 2 )
	$battle_section = GetBattleTeamLeagueSection
	$team_rank = GetBattleTeamRank($teamid)
	$mail_week = GetPlayerVar( -1 , 3278 )
	$mail_day = GetPlayerVar( -1 , 3990 )
	$battle_line = GetServerLineID()
		if $battle_section == 3
			if $battle_line < 50
				if $Now_Week != 6
					if $team_rank >= 0
						if $team_rank <= 95
							if $mail_week == 0
								if $mail_week == 0
		 							SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
									SetPlayerVar(-1 , 3278 , $Now_Week)
									SetPlayerVar(-1 , 3990 , $Now_Yday)       			
								endif
							endif		
						  //???????
							//??????????????,?????????
							if $Now_Week < $mail_week
								SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
								SetPlayerVar(-1 , 3278 , $Now_Week)
								SetPlayerVar(-1 , 3990 , $Now_Yday)
							//???????????????????,?????????????7?,???????
							else
								//??????????????????,????????,??????
								if $Now_Yday >= $mail_day
									$decrease_days = $Now_Yday - $mail_day
									if $send_days > 7
										SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
										SetPlayerVar(-1 , 3278 , $Now_Week)
										SetPlayerVar(-1 , 3990 , $Now_Yday)
									endif
								//???????...
								else
									$send_value = $Now_Yday + 365
						      $decrease_days = $send_value - $double_days
									if $decrease_days > 7
										SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
										SetPlayerVar(-1 , 3278 , $Now_Week)
										SetPlayerVar(-1 , 3990 , $Now_Yday)
									endif
								endif
							endif
						endif
					endif
				endif
			endif	
		endif
		//??????????????end----------------------------

		
		//---------------------------------????------------------------------
    $level = GetPlayerInfo( -1, "level" )
		if $level >= 30
			$count = GetPackMaxCount( -1, 0 )
			if $count < 30
				//????
				$newcount = 30
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 1 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 60
			$count = GetPackMaxCount( -1, 0 )
			if $count < 35
				//????
				$newcount = 35
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 2 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 75
			$count = GetPackMaxCount( -1, 0 )
			if $count < 40
				//????
				$newcount = 40
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 3 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 90
			$count = GetPackMaxCount( -1, 0 )
			if $count < 45
				//????
				$newcount = 45
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 4 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 100
			$count = GetPackMaxCount( -1, 0 )
			if $count < 50
				//????
				$newcount = 50
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 5 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 105
			$count = GetPackMaxCount( -1, 0 )
			if $count < 55
				//????
				$newcount = 55
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 6 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 110
			$count = GetPackMaxCount( -1, 0 )
			if $count < 60
				//????
				$newcount = 60
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 7 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 115
			$count = GetPackMaxCount( -1, 0 )
			if $count < 65
				//????
				$newcount = 65
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 8 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		if $level >= 120
			$count = GetPackMaxCount( -1, 0 )
			if $count < 70
				//????
				$newcount = 70
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 9 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif
		endif
		//---------------------------------????------------------------------end
		
		//?????,?????????,?????4???5?????????
		//SendActivityRecord ???-????????
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$Time = GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1, "level" )
	//???
		$last_time = GetPlayerVar( -1, 3605 )
		if $last_time == $Time
			InsertPlayerVar( -1, 1, 1 )
		else
			InsertPlayerVar( -1, 1, 0 )
		endif
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//???????
//		$Varenci = GetPlayerVar( -1, 4027 )
//		if $Varenci == $Time
//			InsertPlayerVar( -1, 117, 1 )
//		else
//			InsertPlayerVar( -1, 117, 0 )
//		endif
	//?????
		$Varenci = GetPlayerVar( -1, 3536 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 118, 1 )
		else
			InsertPlayerVar( -1, 118, 0 )
		endif
	//????
		$Varenci = GetPlayerVar( -1, 3539 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 119, 1 )
		else
			InsertPlayerVar( -1, 119, 0 )
		endif
	//?????
		$player_time = GetPlayerVar( -1, 3935 )
		$player_round = GetPlayerVar( -1, 3253 )
		if $player_time == $Time
			InsertPlayerVar( -1, 87, 1 )
		else
			InsertPlayerVar( -1, 87, 0 )
		endif
	//?????
		$Var = GetPlayerVar( -1, 3956 )
		if $Var == $Time
			InsertPlayerVar( -1, 93, 1 )
		else
			InsertPlayerVar( -1, 93, 0 )
		endif
	//????
		if $Now_Hour >= 19
			if $Now_Hour <= 21
				$player_time = GetPlayerVar( -1, 3627 )
				if $player_time == $Time
					InsertPlayerVar( -1, 26, 1 )
				else
					InsertPlayerVar( -1, 26, 0 )
				endif
			endif
		endif
	//?????
//		InsertPlayerVar( -1, 28, 0 )
	//????????
//		if $Now_Hour >= 18
//			if $Now_Hour <= 20
//				InsertPlayerVar( -1, 43, 0 )
//			endif
//		endif
	//?????
//		if $Now_Hour >= 19
//			if $Now_Hour <= 21
//				$Task_Time = GetPlayerVar( -1, 3643 )
//				if $Task_Time == $Time
//					InsertPlayerVar( -1, 44, 1 )
//				else
//					InsertPlayerVar( -1, 44, 0 )
//				endif
//			endif
//		endif
	//???????
		$dati = GetPlayerVar( -1, 3710 )
		if $dati == $Time
			InsertPlayerVar( -1, 45, 1 )
		else
			InsertPlayerVar( -1, 45, 0 )
		endif
	//????
//		$shu =  GetPlayerVar( -1, 3715 )
//		if $shu == $Time
//			InsertPlayerVar( -1, 46, 1 )
//		else
//			InsertPlayerVar( -1, 46, 0 )
//		endif
	//???????
//		$quest_time = GetPlayerVar( -1, 3606 )
//		if $quest_time == $Time
//			$mofa = GetPlayerVar( -1 , 3203 )
//			$mofa = $mofa - 1
//			InsertPlayerVar( -1, 47, $mofa )
//		else
//			InsertPlayerVar( -1, 47, 0 )
//		endif
	//??????
//		$quest_time =  GetPlayerVar( -1	, 3609 )
//		$number = GetPlayerVar( -1 , 3204 )
//		if $quest_time == $Time
//			InsertPlayerVar( -1, 49, $number )
//		else
//			InsertPlayerVar( -1, 49, 0 )
//		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				if $player1_time == $Time
					InsertPlayerVar( -1, 50, 1 )
				else
					InsertPlayerVar( -1, 50, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				if $player1_time == $Time
					InsertPlayerVar( -1, 52, 1 )
				else
					InsertPlayerVar( -1, 52, 0 )
				endif
			endif
		endif
	//????
//		InsertPlayerVar( -1, 55, 0 )
	//?????
//		InsertPlayerVar( -1, 56, 0 )
	//?????
		$use_number = GetPlayerVar( -1, 3644 )
		$use_time = GetPlayerVar( -1, 3645 )
		if $use_time == $Time
			InsertPlayerVar( -1, 61, $use_number )
		else
			InsertPlayerVar( -1, 61, 0 )
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
		$levelf = GetFieldLevel(-1)
		if $levelf < 10
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 70, $player4_number )
				else
					InsertPlayerVar( -1, 70, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 72, $player4_number )
				else
					InsertPlayerVar( -1, 72, 0 )
				endif
			endif
		endif
	//????
//		$day = GetPlayerVar( -1, 3759 )
//		$count = GetPlayerVar( -1, 3228 )
//		if $day == $Time
//			InsertPlayerVar( -1, 74, $count )
//		else
//			InsertPlayerVar( -1, 74, 0 )
//		endif
	//????????
		$player1_time =  GetPlayerVar( -1, 3756 )
		$player1_number =  GetPlayerVar( -1, 3398 )
		if $player1_time == $Time
			InsertPlayerVar( -1, 76, $player1_number )
		else
			InsertPlayerVar( -1, 76, 0 )
		endif
	//?????
//		InsertPlayerVar( -1, 77, 0 )
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
//		$today_time = GetSystemTime( "yday" )
//		$player1_time =  GetPlayerVar( -1, 3770 )
//		if $player1_time == $today_time
//			InsertPlayerVar( -1, 79, 1 )
//		else
//			InsertPlayerVar( -1, 79, 0 )
//		endif	
	//???
//		InsertPlayerVar( -1, 80, 0 )
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )	
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0						
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else 
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//		InsertPlayerVar( -1, 105, 0 )
	//???
//		InsertPlayerVar( -1, 107, 0 )
	//?????
//		$player_time = GetPlayerVar( -1, 4011 )
//		if $player_time == $Now_Yday
//			InsertPlayerVar( -1, 108, 1 )
//		else
//			InsertPlayerVar( -1, 108, 0 )
//		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 30
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
	//3?????
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
//		if $year == 2012
//			$monthadd = $month * 100
//			$dayadd = $monthadd + $day
//			if $dayadd < 529
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//			endif
//		endif
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3420 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 121, 1 )
		else
			InsertPlayerVar( -1, 121, 0 )
		endif

//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif		
//	ePurpose_Login = 1//?????????
		SendActivityRecord( -1, 1 )
//	//?????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$shiluo = GetPlayerVar( -1, 3915 )
//					if $shiluo == $Time
//						InsertPlayerVar( -1, 6, 1 )
//					else
//						InsertPlayerVar( -1, 6, 0 )
//					endif
//				endif
//			endif
//	//??????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$last_time =  GetPlayerVar( -1, 3915 )
//					if $last_time == $Time
//						InsertPlayerVar( -1, 7, 1 )
//					else
//						InsertPlayerVar( -1, 7, 0 )
//					endif
//				endif
//			endif
	//????
//		$luoxuan = GetPlayerVar( -1, 3171 )
//		if $Now_Hour >= 14
//			if $Now_Hour < 18
//				if $shiluo == 1
//					InsertPlayerVar( -1, 123, 1 )
//				else
//					InsertPlayerVar( -1, 123, 0 )
//				endif
//			endif
//		endif
	//???????
			if $Now_Hour >= 19
				if $Now_Hour <= 21
					$jinzita = GetPlayerVar( -1, 3615 )
					if $jinzita == $Time
						InsertPlayerVar( -1, 8, 1 )
					else
						InsertPlayerVar( -1, 8, 0 )
					endif
				endif
			endif	
	//???
			if $Now_Hour >= 18
				if $Now_Hour <= 20
					$days = GetPlayerVar( -1, 3617 )
					if $days == $Time
						InsertPlayerVar( -1, 9, 1 )
					else
						InsertPlayerVar( -1, 9, 0 )
					endif
				endif
			endif
	//?????
			$chongbai = GetPlayerVar( -1, 3667 )
			if $chongbai == $Time
				InsertPlayerVar( -1, 27, 1 )
			else
				InsertPlayerVar( -1, 27, 0 )	
			endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
//		$Task0 = GetPlayerVar( -1, 3221 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )	
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $Now_Hour >= 13
						if $Now_Hour <= 15
							if $TaskVar == $Time
								InsertPlayerVar( -1, 75, 1 )
							else
								InsertPlayerVar( -1, 75, 0 )
							endif
						endif	
					endif	
				endif
			endif	
		endif
	//????2012-6-24????
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
							if $TaskVar == $Time
								InsertPlayerVar( -1, 115, 1 )
							else
								InsertPlayerVar( -1, 115, 0 )
							endif
				endif
			endif
		endif
	//????
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar( -1, 3769 )
			if $days == $today_time
				InsertPlayerVar( -1, 81, 1 )
			else
				InsertPlayerVar( -1, 81, 0 )
			endif
//????
		InsertPlayerVar( -1, 100, 0 )
//???
		InsertPlayerVar( -1, 104, 0 )
//????
//		InsertPlayerVar( -1, 120, 0 )
		
////?????
//		InsertPlayerVar( -1, 98, 0 )
//	ePurpose_Weekly = 4//????
		SendActivityRecord( -1, 4 )
	
			
		//??????
		if $level >= 20
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 0
				BC( "screen", "player", -1, "Fate Card system activated!" )
				AddTarotSlot(-1,2)
				AddTarotCostMax(-1,10)
				AddTarotCard(-1,103)
				AddTarotCard(-1,104)
				AddTarotCard(-1,108)
				AddTarotCard(-1,110)
				AddTarotCard(-1,113)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
			$VarCardplus = GetPlayerVar( -1, 250 )
			if $VarCardplus == 0
				AddTarotCostMax(-1,10)
				SetPlayerVar( -1, 250, 1 )
			endif
		endif
		if $level >= 85
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 1
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $level >= 110
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 2
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $levelf >= 25
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 3
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		
		//??????????
		$today_time = GetSystemTime( "yday" )
		$shuishen_time = GetPlayerVar( -1, 4031 )
		$SThour = GetSystemTime( "hour" )
		if $shuishen_time != $today_time
			AddStatus( -1, 21601, 4 )
			AddStatus( -1, 21604, 4 )
			AddStatus( -1, 21605, 4 )
			CancelTask ( -1 , 2621 )
			CancelTask ( -1 , 2622 )
			CancelTask ( -1 , 2623 )
			CancelTask ( -1 , 2624 )
			CancelTask ( -1 , 2629 )
			SubPlayerInfo( -1 , "item", 54090 , 1 )
			SubPlayerInfo( -1 , "item", 54091 , 1 )
			SubPlayerInfo( -1 , "item", 54092 , 1 )
			SubPlayerInfo( -1 , "item", 54093 , 1 )
			SubPlayerInfo( -1 , "item", 54094 , 1 )
			SubPlayerInfo( -1 , "item", 54109 , 1 )
		endif
		if $shuishen_time == $today_time
			if $SThour >= 23
				AddStatus( -1, 21601, 4 )
				AddStatus( -1, 21604, 4 )
				AddStatus( -1, 21605, 4 )
				CancelTask ( -1 , 2621 )
				CancelTask ( -1 , 2622 )
				CancelTask ( -1 , 2623 )
				CancelTask ( -1 , 2624 )
				CancelTask ( -1 , 2629 )
				SubPlayerInfo( -1 , "item", 54090 , 1 )
				SubPlayerInfo( -1 , "item", 54091 , 1 )
				SubPlayerInfo( -1 , "item", 54092 , 1 )
				SubPlayerInfo( -1 , "item", 54093 , 1 )
				SubPlayerInfo( -1 , "item", 54094 , 1 )
				SubPlayerInfo( -1 , "item", 54109 , 1 )
			endif
		endif
		$taitan_time = GetPlayerVar( -1, 4034 )
		if $taitan_time != $today_time
			AddStatus( -1, 21603, 4 )
			AddStatus( -1, 21604, 4 )
			AddStatus( -1, 21605, 4 )
			CancelTask ( -1 , 2625 )
			CancelTask ( -1 , 2626 )
			CancelTask ( -1 , 2627 )
			CancelTask ( -1 , 2628 )
			SubPlayerInfo( -1 , "item", 54096 , 1 )
		endif
		if $taitan_time == $today_time
			if $SThour >= 23
				AddStatus( -1, 21603, 4 )
				AddStatus( -1, 21604, 4 )
				AddStatus( -1, 21605, 4 )
				CancelTask ( -1 , 2625 )
				CancelTask ( -1 , 2626 )
				CancelTask ( -1 , 2627 )
				CancelTask ( -1 , 2628 )
				SubPlayerInfo( -1 , "item", 54096 , 1 )
			endif
		endif
				
	}
//--------------------------------------------------------------
//--------------------????????-------------------------
//--------------------------------------------------------------
	function OnAppraisalTreasure(){
		
		$lasttime = GetPlayerVar( -1 , 3696 )
		$a = GetPlayerVar( -1 , 3697 )
		$time = GetSystemTime( "yday" )
		$exp = GetPlayerInfo( -1 , "treasureawardexp" )
		$a = $a + 1
		if $time == $lasttime
			if $a <= 8
				BC( "screen", "player", -1 , "You have done " , $a , " attempts of treasure identification for today. EXP given: " , $exp )
				AddPlayerInfo ( -1 , "exp" , $exp )
				SetPlayerVar( -1 , 3697 , $a )
			else
				BC( "screen", "player", -1, "You have performed more than 8 treasure identifications today. No more EXP will be acquired." )
			endif
		else
			BC( "screen", "player", -1, "This is your 1st attempt at treasure identification. EXP given: ",$exp )
			AddPlayerInfo ( -1 , "exp" , $exp )
			SetPlayerVar( -1 , 3697 , 1 )
			SetPlayerVar( -1 , 3696 , $time )
		endif
		
	}
	function OnFrozenFortVote(){
		//----??????????----------??---????????? 0 1 --------
		$yday =  GetSystemTime( "yday" )
		$next_day = GetPlayerVar( -1 , 3711 )
		$lv = GetPlayerInfo( -1 , "level" )
		$a = 50 * $lv
		$b = $lv / 15
		$c = $b * 2
		$d = $c + 6
		$e = $a * $d
		$f = $e * $lv
		$g = $lv / 10
		$h = $g + 7
		$i = $h * $f
		$exp = $i / 200
		//----??????????--------??---????????? 0 1 --------
		if $next_day == 0
			CanFrozenFortVote( 1 )
			AddPlayerInfo( -1 , "exp" , $exp )
			BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
			SetPlayerVar( -1, 3711 , $yday)
			return
		endif
		if $yday >= $next_day
			$dis_days = $yday - $next_day
			if $dis_days >= 6
				CanFrozenFortVote( 1 )
				AddPlayerInfo( -1 , "exp" , $exp )
				BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
				SetPlayerVar( -1 , 3711 , $yday )
			endif
		else
			$temp_value = $yday + 365
			$dis_days = $temp_value - $next_day
			if $dis_days >= 6
				CanFrozenFortVote( 1 )
				AddPlayerInfo( -1 , "exp" , $exp )
				BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
				SetPlayerVar( -1  , 3711 , $yday )
			endif
		endif
	}
//--------------------------------------------------------------
//--------------------??????-----------------------------
//--------------------------------------------------------------
	function OnNormalReqActivity(){
		
		//SendActivityRecord ???-?????????
		
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )
	//???
		if $level < 100
			$last_time = GetPlayerVar( -1, 3605 )
			if $last_time == $Time
				InsertPlayerVar( -1, 1, 1 )
			else
				InsertPlayerVar( -1, 1, 0 )
			endif
		endif
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//???????
//		$Varenci = GetPlayerVar( -1, 4027 )
//		if $Varenci == $Time
//			InsertPlayerVar( -1, 117, 1 )
//		else
//			InsertPlayerVar( -1, 117, 0 )
//		endif
	//?????
		$Varenci = GetPlayerVar( -1, 3536 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 118, 1 )
		else
			InsertPlayerVar( -1, 118, 0 )
		endif
	//????
		$Varenci = GetPlayerVar( -1, 3539 )
		if $Varenci == $Time
			InsertPlayerVar( -1, 119, 1 )
		else
			InsertPlayerVar( -1, 119, 0 )
		endif
	//?????
		if $level < 120
			$Var = GetPlayerVar( -1, 3956 )
			if $Var == $Time
				InsertPlayerVar( -1, 93, 1 )
			else
				InsertPlayerVar( -1, 93, 0 )
			endif
		endif
	//????
		$player_time = GetPlayerVar( -1, 3627 )
		if $player_time == $Time
			InsertPlayerVar( -1, 26, 1 )
		else
			InsertPlayerVar( -1, 26, 0 )
		endif
	//?????
		InsertPlayerVar( -1, 28, 0 )
	//????????
		InsertPlayerVar( -1, 43, 0 )
	//?????
		if $level < 120
			$Task_Time = GetPlayerVar( -1, 3643 )
			if $Task_Time == $Time
				InsertPlayerVar( -1, 44, 1 )
			else
				InsertPlayerVar( -1, 44, 0 )
			endif
		endif
	//???????
		if $level < 120
			$dati = GetPlayerVar( -1, 3710 )
			if $dati == $Time
				InsertPlayerVar( -1, 45, 1 )
			else
				InsertPlayerVar( -1, 45, 0 )
			endif
		endif
	//????
		if $level < 90
			$shu =  GetPlayerVar( -1, 3715 )
			if $shu == $Time
				InsertPlayerVar( -1, 46, 1 )
			else
				InsertPlayerVar( -1, 46, 0 )
			endif
		endif
	//???????
		if $level < 100
			$quest_time = GetPlayerVar( -1, 3606 )
			if $quest_time == $Time
				$mofa = GetPlayerVar( -1 , 3203 )
				$mofa = $mofa - 1
				InsertPlayerVar( -1, 47, $mofa )
			else
				InsertPlayerVar( -1, 47, 0 )
			endif
		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $player1_time == $Time
			InsertPlayerVar( -1, 50, 1 )
			InsertPlayerVar( -1, 52, 1 )
		else
			InsertPlayerVar( -1, 50, 0 )
			InsertPlayerVar( -1, 52, 0 )
		endif
	//????
		if $level < 120
			InsertPlayerVar( -1, 55, 0 )
		endif
	//?????
		InsertPlayerVar( -1, 56, 0 )
	//?????
		if $level < 120
			$use_number = GetPlayerVar( -1, 3644 )
			$use_time = GetPlayerVar( -1, 3645 )
			if $use_time == $Time
				InsertPlayerVar( -1, 61, $use_number )
			else
				InsertPlayerVar( -1, 61, 0 )
			endif
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
		if $level < 120
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		$player4_time =  GetPlayerVar( -1, 3765 )
		$player4_number =  GetPlayerVar( -1, 3405 )
		if $player4_time == $Time
			InsertPlayerVar( -1, 70, $player4_number )
			InsertPlayerVar( -1, 72, $player4_number )
		else
			InsertPlayerVar( -1, 70, 0 )
			InsertPlayerVar( -1, 72, 0 )
		endif
	//????
		if $level < 120
			$day = GetPlayerVar( -1, 3759 )
			$count = GetPlayerVar( -1, 3228 )
			if $day == $Time
				InsertPlayerVar( -1, 74, $count )
			else
				InsertPlayerVar( -1, 74, 0 )
			endif
		endif
	//????????
		if $level < 50
			$player1_time =  GetPlayerVar( -1, 3756 )
			$player1_number =  GetPlayerVar( -1, 3398 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 76, $player1_number )
			else
				InsertPlayerVar( -1, 76, 0 )
			endif
		endif
	//?????
		InsertPlayerVar( -1, 77, 0 )
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
		$today_time = GetSystemTime( "yday" )
		$player1_time =  GetPlayerVar( -1, 3770 )
		if $player1_time == $today_time
			InsertPlayerVar( -1, 79, 1 )
		else
			InsertPlayerVar( -1, 79, 0 )
		endif	
	//???
		InsertPlayerVar( -1, 80, 0 )
	//?????
		$player_time = GetPlayerVar( -1, 3935 )
		$player_round = GetPlayerVar( -1, 3253 )
		if $player_time == $Time
			if $player_round <= 3
				InsertPlayerVar( -1, 87, $player_round )
			endif
		else
			InsertPlayerVar( -1, 87, 0 )
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
////?????
//		$zsynhzn = GetPlayerVar( -1, 3950 )
//		if $zsynhzn == $Time
//			InsertPlayerVar( -1, 94, 1 )
//		else
//			InsertPlayerVar( -1, 94, 0 )
//		endif
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )	
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0						
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else 
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//--???-3412
//--???-3413
		if $level < 120
			$quest_time = GetPlayerVar( -1, 3412 )
			$sysyweek = GetNowWeek()
			if $quest_time == $sysyweek
				$timejoin = GetPlayerVar( -1 , 3413 )
				InsertPlayerVar( -1, 105, $timejoin )
			else
				InsertPlayerVar( -1, 105, 0 )
			endif
		endif
	//???
		InsertPlayerVar( -1, 107, 0 )
	//?????
		$player_time = GetPlayerVar( -1, 4011 )
		if $player_time == $Now_Yday
			InsertPlayerVar( -1, 108, 1 )
		else
			InsertPlayerVar( -1, 108, 0 )
		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 20
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
		
	//????
//		$player_time = GetPlayerVar( -1, 4048 )
//		if $player_time == $Now_Yday
//			InsertPlayerVar( -1, 125, 1 )
//		else
//			InsertPlayerVar( -1, 125, 0 )
//		endif

	//??????
		InsertPlayerVar( -1, 110, 0 )
	//????
	//???????                  					 3307
	//?????????           						 3332
			$quest_time = GetPlayerVar( -1, 3307 )
			$sysyweek = GetNowWeek()
			if $quest_time == $sysyweek
				$timejoin = GetPlayerVar( -1 , 3332 )
				InsertPlayerVar( -1, 111, $timejoin )
			else
				InsertPlayerVar( -1, 111, 0 )
			endif
	//3?????
//		$year = GetSystemTime( "year" )
//		$month = GetSystemTime( "month" )
//		$day = GetSystemTime( "mday" )
//		if $year == 2012
//			$monthadd = $month * 100
//			$dayadd = $monthadd + $day
//			if $dayadd < 529
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//			endif
//		endif
//????-????????
		$today_week = GetNowWeek()
		$last_week = GetPlayerVar(-1 , 3415)
		if $today_week != $last_week
			$cishu = 0
			SetPlayerVar(-1 , 3416 ,$cishu)
		endif
		$player_time = GetPlayerVar( -1, 3416 )
		InsertPlayerVar( -1, 113, $player_time )
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3420 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 121, 1 )
		else
			InsertPlayerVar( -1, 121, 0 )
		endif

//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif	
		
		SendActivityRecord( -1, 0 )
		
//	//?????
//		$shiluo = GetPlayerVar( -1, 3915 )
//		if $shiluo == $Time
//			InsertPlayerVar( -1, 6, 1 )
//		else
//			InsertPlayerVar( -1, 6, 0 )
//		endif
//	//??????
//		$last_time =  GetPlayerVar( -1, 3915 )
//		if $last_time == $Time
//			InsertPlayerVar( -1, 7, 1 )
//		else
//			InsertPlayerVar( -1, 7, 0 )
//		endif	
	//????
		$today_week = GetNowWeek()
		$luoxuan = GetPlayerVar( -1, 3576 )
		if $today_week == $luoxuan
			InsertPlayerVar( -1, 126, 1 )
		else
			InsertPlayerVar( -1, 126, 0 )
		endif
	//???????
		$jinzita = GetPlayerVar( -1, 3615 )
		if $jinzita == $Time
			InsertPlayerVar( -1, 8, 1 )
		else
			InsertPlayerVar( -1, 8, 0 )
		endif
	//???
		$days = GetPlayerVar( -1, 3617 )
		if $days == $Time
			InsertPlayerVar( -1, 9, 1 )
		else
			InsertPlayerVar( -1, 9, 0 )
		endif
	//?????
		$chongbai = GetPlayerVar( -1, 3667 )
		if $chongbai == $Time
			InsertPlayerVar( -1, 27, 1 )
		else
			InsertPlayerVar( -1, 27, 0 )	
		endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
//		$Task0 = GetPlayerVar( -1, 3221 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )	
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $TaskVar == $Time
						InsertPlayerVar( -1, 75, 1 )
					else
						InsertPlayerVar( -1, 75, 0 )
					endif
				endif
			endif	
		endif
	//????2012-6-24????
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
							if $TaskVar == $Time
								InsertPlayerVar( -1, 115, 1 )
							else
								InsertPlayerVar( -1, 115, 0 )
							endif
				endif
			endif
		endif
//	//2012-9-3?9-9????
//		if $Now_Year == 2012
//			if $Now_Month == 9
//				if $Now_Mday >= 3
//					if $Now_Mday <= 9
//							InsertPlayerVar( -1, 118, 0 )
//					endif
//				endif
//			endif
//		endif			
	//????
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar( -1, 3769 )
		if $days == $today_time
			InsertPlayerVar( -1, 81, 1 )
		else
			InsertPlayerVar( -1, 81, 0 )
		endif
		
//????
		$last_time = GetPlayerVar(-1,4087)
		$today_time = GetSystemTime( "yday" )
		if $last_time == $today_time
			InsertPlayerVar( -1, 124, 1 )
		else
			InsertPlayerVar( -1, 124, 0 )
		endif		
		
	//?????
		InsertPlayerVar( -1, 98, 0 )
	//????
		InsertPlayerVar( -1, 100, 0 )
	//???
		InsertPlayerVar( -1, 104, 0 )
//????
		InsertPlayerVar( -1, 120, 0 )
	//??
	//	InsertPlayerVar( -1, 114, 0 )
	//??
		InsertPlayerVar( -1, 116, 0 )
		
		SendActivityRecord( -1, 4 )
			
	}
//--------------------------------------------------------------
//--------------------????---------------------------------
//--------------------------------------------------------------
	function OnLogoutReqActivity(){
		//???????????,?????4???5?????????
		//SendActivityRecord ???-????????
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$Time = GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1, "level" )
	//???
//		$last_time = GetPlayerVar( -1, 3605 )
//		if $last_time == $Time
//			InsertPlayerVar( -1, 1, 1 )
//		else
//			InsertPlayerVar( -1, 1, 0 )
//		endif
	//?????
		$Var2 = GetPlayerVar( -1, 3763 )
		if $Var2 == $Time
			InsertPlayerVar( -1, 3, 1 )
		else
			InsertPlayerVar( -1, 3, 0 )
		endif
	//???????
//		$Varenci = GetPlayerVar( -1, 4027 )
//		if $Varenci == $Time
//			InsertPlayerVar( -1, 117, 1 )
//		else
//			InsertPlayerVar( -1, 117, 0 )
//		endif
	//?????
//		$player_time = GetPlayerVar( -1, 3935 )
//		$player_round = GetPlayerVar( -1, 3253 )
//		if $player_time == $Time
//			InsertPlayerVar( -1, 87, 1 )
//		else
//			InsertPlayerVar( -1, 87, 0 )
//		endif
	//?????
//		$Var = GetPlayerVar( -1, 3956 )
//		if $Var == $Time
//			InsertPlayerVar( -1, 93, 1 )
//		else
//			InsertPlayerVar( -1, 93, 0 )
//		endif
	//????
//		if $Now_Hour >= 19
//			if $Now_Hour <= 21
//				$player_time = GetPlayerVar( -1, 3627 )
//				if $player_time == $Time
//					InsertPlayerVar( -1, 26, 1 )
//				else
//					InsertPlayerVar( -1, 26, 0 )
//				endif
//			endif
//		endif
	//?????
//		InsertPlayerVar( -1, 28, 0 )
	//????????
//		if $Now_Hour >= 18
//			if $Now_Hour <= 20
//				InsertPlayerVar( -1, 43, 0 )
//			endif
//		endif
	//?????
//		if $Now_Hour >= 19
//			if $Now_Hour <= 21
//				$Task_Time = GetPlayerVar( -1, 3643 )
//				if $Task_Time == $Time
//					InsertPlayerVar( -1, 44, 1 )
//				else
//					InsertPlayerVar( -1, 44, 0 )
//				endif
//			endif
//		endif
	//???????
		$dati = GetPlayerVar( -1, 3710 )
		if $dati == $Time
			InsertPlayerVar( -1, 45, 1 )
		else
			InsertPlayerVar( -1, 45, 0 )
		endif
	//????
//		$shu =  GetPlayerVar( -1, 3715 )
//		if $shu == $Time
//			InsertPlayerVar( -1, 46, 1 )
//		else
//			InsertPlayerVar( -1, 46, 0 )
//		endif
	//???????
//		$quest_time = GetPlayerVar( -1, 3606 )
//		if $quest_time == $Time
//			$mofa = GetPlayerVar( -1 , 3203 )
//			$mofa = $mofa - 1
//			InsertPlayerVar( -1, 47, $mofa )
//		else
//			InsertPlayerVar( -1, 47, 0 )
//		endif
	//??????
//		$quest_time =  GetPlayerVar( -1	, 3609 )
//		$number = GetPlayerVar( -1 , 3204 )
//		if $quest_time == $Time
//			InsertPlayerVar( -1, 49, $number )
//		else
//			InsertPlayerVar( -1, 49, 0 )
//		endif
	//??????
		$player1_time = GetPlayerVar( -1, 3923 )
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				if $player1_time == $Time
					InsertPlayerVar( -1, 50, 1 )
				else
					InsertPlayerVar( -1, 50, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				if $player1_time == $Time
					InsertPlayerVar( -1, 52, 1 )
				else
					InsertPlayerVar( -1, 52, 0 )
				endif
			endif
		endif
	//????
//		InsertPlayerVar( -1, 55, 0 )
	//?????
//		InsertPlayerVar( -1, 56, 0 )
	//?????
		$use_number = GetPlayerVar( -1, 3644 )
		$use_time = GetPlayerVar( -1, 3645 )
		if $use_time == $Time
			InsertPlayerVar( -1, 61, $use_number )
		else
			InsertPlayerVar( -1, 61, 0 )
		endif
	//?????
		if $level < 60
			$player2_time =  GetPlayerVar( -1, 3761 )
			$player2_number =  GetPlayerVar( -1, 3401 )
			if $player2_time == $Time
				InsertPlayerVar( -1, 65, $player2_number )
			else
				InsertPlayerVar( -1, 65, 0 )
			endif
		endif
	//?????
		if $level < 75
			$player_time =  GetPlayerVar( -1, 3760 )
			$player_number =  GetPlayerVar( -1, 3400 )
			if $player_time == $Time
				InsertPlayerVar( -1, 63, $player_number )
			else
				InsertPlayerVar( -1, 63, 0 )
			endif
		endif
	//???????
		if $level < 90
			$player3_time =  GetPlayerVar( -1, 3764 )
			$player3_number =  GetPlayerVar( -1, 3404 )
			if $player3_time == $Time
				InsertPlayerVar( -1, 66, $player3_number )
			else
				InsertPlayerVar( -1, 66, 0 )
			endif
		endif
	//??????
		if $level < 100
			$player1_time =  GetPlayerVar( -1, 3762 )
			$player1_number =  GetPlayerVar( -1, 3402 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 64, $player1_number )
			else
				InsertPlayerVar( -1, 64, 0 )
			endif
		endif
	//??????
//		$levelf = GetFieldLevel(-1)
		if $level < 120
			$Player_titan = GetPlayerVar( -1, 4099 )
			if $Player_titan == $Time
				InsertPlayerVar( -1, 101, 1 )
			else
				InsertPlayerVar( -1, 101, 0 )
			endif
		endif
	//?????
		if $Now_Hour >= 12
			if $Now_Hour <= 13
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 70, $player4_number )
				else
					InsertPlayerVar( -1, 70, 0 )
				endif
			endif
		endif
		if $Now_Hour >= 20
			if $Now_Hour <= 21
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 72, $player4_number )
				else
					InsertPlayerVar( -1, 72, 0 )
				endif
			endif
		endif
	//????
		$day = GetPlayerVar( -1, 3759 )
		$count = GetPlayerVar( -1, 3228 )
		if $day == $Time
			InsertPlayerVar( -1, 74, $count )
		else
			InsertPlayerVar( -1, 74, 0 )
		endif
	//????????
		if $level < 45
			$player1_time =  GetPlayerVar( -1, 3756 )
			$player1_number =  GetPlayerVar( -1, 3398 )
			if $player1_time == $Time
				InsertPlayerVar( -1, 76, $player1_number )
			else
				InsertPlayerVar( -1, 76, 0 )
			endif
		endif
	//?????
//		InsertPlayerVar( -1, 77, 0 )
	//????
		$RankList = GetRankListValue( 1, 499 )
		$level = GetPlayerInfo( -1, "level" )
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $RankList >= 75
			if $RankList <= 89
				if $level <= 60
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 90
			if $RankList <= 99
				if $level <= 75
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 100
			if $RankList <= 109
				if $level <= 90
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 110
			if $RankList <= 119
				if $level <= 100
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
		if $RankList >= 120
			if $RankList <= 130
				if $level <= 110
					if $playervar1 == $today_time
						InsertPlayerVar( -1, 78, 1 )
					else
						InsertPlayerVar( -1, 78, 0 )
					endif
				endif
			endif
		endif
	//???
//		$today_time = GetSystemTime( "yday" )
//		$player1_time =  GetPlayerVar( -1, 3770 )
//		if $player1_time == $today_time
//			InsertPlayerVar( -1, 79, 1 )
//		else
//			InsertPlayerVar( -1, 79, 0 )
//		endif	
	//???
//		InsertPlayerVar( -1, 80, 0 )
	//??????
		$xpxt1 = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$result = IsTaskDone( -1, 1735 )	
		$xpds = GetPlayerVar( -1, 3321 )
		if $xpds < 24
			if $result == 0						
				if $xpxt1 == $Now_Yday
						InsertPlayerVar( -1, 102, 1 )
				else 
						InsertPlayerVar( -1, 102, 0 )
				endif
			endif
		endif
	//?????
    $xpxt2 = GetPlayerVar( -1, 3995 )
    if $xpds >= 24
    	if $xpxt2 == $Now_Yday
    		 InsertPlayerVar( -1, 103, 1 )
    	else
    	   InsertPlayerVar( -1, 103, 0 )
    	endif
    endif
	//???
//		InsertPlayerVar( -1, 105, 0 )
	//???
//		InsertPlayerVar( -1, 107, 0 )
	//?????
//		$player_time = GetPlayerVar( -1, 4011 )
//		if $player_time == $Now_Yday
//			InsertPlayerVar( -1, 108, 1 )
//		else
//			InsertPlayerVar( -1, 108, 0 )
//		endif
	//????
		$levelf = GetFieldLevel(-1)
		if $levelf < 20
			$player_time = GetPlayerVar( -1, 4013 )
			if $player_time == $Now_Yday
				InsertPlayerVar( -1, 109, 1 )
			else
				InsertPlayerVar( -1, 109, 0 )
			endif
		endif
	//-----??????-----
		$Time = GetSystemTime( "yday" )
		$Playervarsg = GetPlayerVar( -1, 3943 )
		if $Playervarsg == $Time
			InsertPlayerVar( -1, 91, 1 )
		else
			InsertPlayerVar( -1, 91, 0 )
		endif
	//3?????
//		$year = GetSystemTime( "year" )
//		$month = GetSystemTime( "month" )
//		$day = GetSystemTime( "mday" )
//		if $year == 2012
//			$monthadd = $month * 100
//			$dayadd = $monthadd + $day
//			if $dayadd < 529
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
//			endif
//		endif
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3420 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 121, 1 )
		else
			InsertPlayerVar( -1, 121, 0 )
		endif
//????
		$today_week = GetNowWeek()
		$weeks = GetPlayerVar( -1, 3561 )
		if $weeks == $today_week
			InsertPlayerVar( -1, 122, 1 )
		else
			InsertPlayerVar( -1, 122, 0 )
		endif
//	ePurpose_Logout = 2//?????????
		SendActivityRecord( -1, 2 )
//		//?????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$shiluo = GetPlayerVar( -1, 3915 )
//					if $shiluo == $Time
//						InsertPlayerVar( -1, 6, 1 )
//					else
//						InsertPlayerVar( -1, 6, 0 )
//					endif
//				endif
//			endif
//	//??????
//			if $Now_Hour >= 12
//				if $Now_Hour <= 14
//					$last_time =  GetPlayerVar( -1, 3915 )
//					if $last_time == $Time
//						InsertPlayerVar( -1, 7, 1 )
//					else
//						InsertPlayerVar( -1, 7, 0 )
//					endif
//				endif
//			endif
	//???????
//			if $Now_Hour >= 19
//				if $Now_Hour <= 21
//					$jinzita = GetPlayerVar( -1, 3615 )
//					if $jinzita == $Time
//						InsertPlayerVar( -1, 8, 1 )
//					else
//						InsertPlayerVar( -1, 8, 0 )
//					endif
//				endif
//			endif	
	//???
			if $Now_Hour >= 18
				if $Now_Hour <= 20
					$days = GetPlayerVar( -1, 3617 )
					if $days == $Time
						InsertPlayerVar( -1, 9, 1 )
					else
						InsertPlayerVar( -1, 9, 0 )
					endif
				endif
			endif
	//?????
			$chongbai = GetPlayerVar( -1, 3667 )
			if $chongbai == $Time
				InsertPlayerVar( -1, 27, 1 )
			else
				InsertPlayerVar( -1, 27, 0 )	
			endif
	//?????
		$Task_Time = GetPlayerVar( -1, 3334 )
//		$Task0 = GetPlayerVar( -1, 3221 )
		$sysweek = GetNowWeek()
		if $Task_Time == $Time
			InsertPlayerVar( -1, 62, 1 )
		else
			InsertPlayerVar( -1, 62, 0 )
		endif
	//????
		$Now_Mday = GetSystemTime( "mday" )	
		$Now_Week = GetSystemTime( "week" )
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $Now_Mday > 7
			if $Now_Mday <= 14
				if $Now_Week == 0
					if $Now_Hour >= 13
						if $Now_Hour <= 15
							if $TaskVar == $Time
								InsertPlayerVar( -1, 75, 1 )
							else
								InsertPlayerVar( -1, 75, 0 )
							endif
						endif	
					endif	
				endif
			endif	
		endif
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
							if $TaskVar == $Time
								InsertPlayerVar( -1, 115, 1 )
							else
								InsertPlayerVar( -1, 115, 0 )
							endif
				endif
			endif
		endif
	//????
		$today_time = GetSystemTime( "yday" )
		$days = GetPlayerVar( -1, 3769 )
			if $days == $today_time
				InsertPlayerVar( -1, 81, 1 )
			else
				InsertPlayerVar( -1, 81, 0 )
			endif
//????
		InsertPlayerVar( -1, 100, 0 )
//???
		InsertPlayerVar( -1, 104, 0 )
//????
//		InsertPlayerVar( -1, 120, 0 )
////?????
//		InsertPlayerVar( -1, 98, 0 )
//	ePurpose_Weekly = 4//????
		SendActivityRecord( -1, 4 )
  	//SendActivityRecord ???- ???????
			
	}
//--------------------------------------------------------------
//--------------------------------------------------------------
//--------------------------------------------------------------
	function OnMosnterKillHalfLimit(){
		
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday = GetSystemTime( "mday" )
		$Now_Week = GetSystemTime( "week" )
		$Time = GetSystemTime( "yday" )
		$Now_Hour = GetSystemTime( "hour" )
		$Now_Minute = GetSystemTime( "minute")
		$level = GetPlayerInfo( -1, "level" )
  	//???Record3??????
		SendActivityRecord( -1, 3 )
		
	}
	function OnIncreaseLoveExp(){
		
		PlayEffect( -1  , "common\xin\xin.ini" )
		
	}
	function OnIncreaseLoveLevel(){
		
		PlayEffect( -1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
		
	}
	
	function OnGainHappiness(){
		
	}	

	function OnIncreaseMarriageExp(){
		
	}	
	
	function OnIncreaseMarriageLevel(){
		
	}	
	
	function OnMarriageCeremonyBegin(){
		
		//??????2????
		
		//???????ID,??????ID?-1
		$id1 = GetPlayerID()
		$id2 = GetTeamHeaderID( -1 )
		//????????
		if $id1 == $id2
			$pid1 = GetTeamMemberID( -1 , 0 )
			$pid2 = GetTeamMemberID( -1 , 1 )
			$pid3 = GetTeamMemberID( -1 , 2 )
			$pid4 = GetTeamMemberID( -1 , 3 )
			$pid5 = GetTeamMemberID( -1 , 4 )
			$pid6 = GetTeamMemberID( -1 , 5 )
			//???ID,???????ID
			if $pid1 > 0
				if $pid1 != $id1
					$id1 = $pid1
				endif
			endif
			
			if $id1 == $id2
				if $pid2 > 0
					if $pid2 != $id1
						$id1 = $pid2
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid3 > 0
					if $pid3 != $id1
						$id1 = $pid3
					endif
				endif
			endif
				
			if $id1 == $id2
				if $pid4 > 0
					if $pid4 != $id1
						$id1 = $pid4
					endif
				endif
			endif	
			
			if $id1 == $id2
				if $pid5 > 0
					if $pid5 != $id1
						$id1 = $pid5
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid6 > 0
					if $pid6 != $id1
						$id1 = $pid6
					endif
				endif
			endif
		endif
		
		#name1 = GetPlayerInfo( $id1 , "name" )
		#name2 = GetPlayerInfo( $id2 , "name" )
		//???????????????+1
		$rea = CheckRelation($id1, $id2)
		
		if $rea != 3
			$marrycount = GetServerVar( 114 )
			$marrycount = $marrycount + 1
			SetServerVar ( 114 , $marrycount )
			//???????????,3725
			SetPlayerVar( $id1 , 3725 , $marrycount)
			SetPlayerVar( $id2 , 3725 , $marrycount)
			//???????????
			$line = GetServerLineID() 
			SetPlayerVar( $id1 , 3727 , $line )
			SetPlayerVar( $id2 , 3727 , $line )
		endif
		
	}
	//????
	function OnMarriageCeremonyEnd(){
		
		BC( "screen", "map", 208, "The wedding has ended. Thanks for your participation. Enjoy the rest of the game." )
	
	}
//------------??????-----------
	function OnLevelUp(){
		$level = GetPlayerInfo( -1, "level" )
		
		//??????
		if $level >= 20
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 0
				BC( "screen", "player", -1, "Fate Card system activated!" )
				AddTarotSlot(-1,2)
				AddTarotCostMax(-1,10)
				AddTarotCard(-1,103)
				AddTarotCard(-1,104)
				AddTarotCard(-1,108)
				AddTarotCard(-1,110)
				AddTarotCard(-1,113)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
			$VarCardplus = GetPlayerVar( -1, 250 )
			if $VarCardplus == 0
				AddTarotCostMax(-1,10)
				SetPlayerVar( -1, 250, 1 )
			endif
		endif
		if $level >= 85
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 1
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		if $level >= 110
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 2
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		
		if $level >= 30
			if $level < 60
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 0
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 30
						BC( "screen", "player", -1, "You have already enabled 30 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 30
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 1 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif	
		endif
		
		if $level >= 60
			if $level < 75
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 1
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 35
						BC( "screen", "player", -1, "You have already enabled 35 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 35
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 2 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 75
			if $level < 90
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 2
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 40
						BC( "screen", "player", -1, "You have already enabled 40 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 40
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 3 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 90
			if $level < 100
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 3
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 45
						BC( "screen", "player", -1, "You have already enabled 45 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 45
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 4 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 100
			if $level < 105
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 4
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 50
						BC( "screen", "player", -1, "You have already enabled 50 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 50
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 5 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 105
			if $level < 110
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 5
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 55
						BC( "screen", "player", -1, "You have already enabled 55 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 55
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 6 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 110
			if $level < 115
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 6
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 60
						BC( "screen", "player", -1, "You have already enabled 60 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 60
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 7 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 115
			if $level < 120
				$Var1 = GetPlayerVar( -1, 4089 )
				if $Var1 == 7
					//?????????????????
					$count = GetPackMaxCount( -1, 0 )
					if $count >= 65
						BC( "screen", "player", -1, "You have already enabled 65 slots. Cannot have more. " )
						return
					endif
					if $count == 70
						BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
						return
					endif
					//?????,???????5???
					$a = $count % 5
					if $a != 0
						BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
						return
					endif
					//????
					$newcount = 65
					SetPackMaxCount( -1, 0, $newcount )
					SetPlayerVar( -1, 4089, 8 )
					BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
				endif	
			endif		
		endif
		
		if $level >= 120
			$Var1 = GetPlayerVar( -1, 4089 )
			if $Var1 == 8
				//?????????????????
				$count = GetPackMaxCount( -1, 0 )
				if $count >= 70
					BC( "screen", "player", -1, "Your bag is extended to the max. Cannot extend further. " )
					return
				endif
				//?????,???????5???
				$a = $count % 5
				if $a != 0
					BC( "screen", "player", -1, "System error. Can not extend bag. Please seek Customer Service for help." )
					return
				endif
				//????
				$newcount = 70
				SetPackMaxCount( -1, 0, $newcount )
				SetPlayerVar( -1, 4089, 9 )
				BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount, )
			endif	
		endif
		
	}
	
	function OnFieldLevelUp(){
		
		$levelf = GetFieldLevel(-1)
		if $levelf >= 25
			$VarCard = GetPlayerVar( -1, 3538 )
			if $VarCard == 3
				BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
				AddTarotSlot(-1,1)
				$VarCard = $VarCard + 1
				SetPlayerVar( -1, 3538, $VarCard )
			endif
		endif
		
		}
	
	function OnDead(){
		
		
		$killerid = GetKillerID(-1)
//		BC("chat", "player", -1, "GetKillerID = ", $killerid)
//		#name = GetPlayerInfo($killerid,"name")
//		$level = GetPlayerInfo($killerid,"level")
//		BC("chat","player",-1,"GUID:08287000126",#name,"GUID:08287000127",$level,"GUID:08287000128")
		
		if $killerid > 0
			$map_id = GetPlayerInfo(-1,"mapid")
		
			//4072 ??????start
			if $map_id >= 25801
				if $map_id <= 25910
					$killerid = GetKillerID(-1)
					#name = GetPlayerInfo($killerid,"name")
					$getvar = GetPlayerVar($killerid,4072)
					$getvar += 1
					SetPlayerVar($killerid,4072,$getvar)
					if $getvar == 10
						BC("screen","map",$map_id,"The hero ",#name,"] is on a killing spree! Killed ",$getvar," people so far!")
					endif
					if $getvar == 20
						BC("screen","map",$map_id,"The hero ",#name,"] is on a murderous rampage! Killed ",$getvar," people so far!")
					endif
					if $getvar == 50
						BC("screen","map",$map_id,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
						BC("chat","map",$map_id,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
					endif
					if $getvar == 100
						BC("screen","map",$map_id,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
						BC("chat","map",$map_id,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
						BC("screen","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
					endif
					if $getvar == 200
						BC("screen","map",$map_id,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
						BC("screen","map",$map_id,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
					endif
					if $getvar == 500
						BC("screen","map",$map_id,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
						BC("chat","map",$map_id,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
						BC("screen","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
						BC("chat","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
					endif
					
				endif
			endif
			//4072 ??????end
			
		endif
			
		
	}
  function OnReqRushFieldTask(){
  	$mylevel = GetPlayerInfo(-1, "level")
  	$myfieldlevel = GetFieldLevel(-1 )
  	$100minglevel = GetRankListValue(1, 99)
    $100mingfieldlevel = GetFieldRankListValue( 99)
    
    $mday = GetSystemTime("mday")
    $day =  GetPlayerVar( -1, 3572 )
    if $day == $mday
    	BC( "screen", "player", -1, "You've already accepted today's Race to Elysium quest. You can only do so once per day!" )
    	return
    endif 
    
    //???????
    $result = 0
    $result1 = IsTaskAccept( -1, 1870 )
    $result = $result + $result1
    $result2 = IsTaskAccept( -1, 1880 )
    $result = $result + $result2   
    $result3 = IsTaskAccept( -1, 1881 )
    $result = $result + $result3  
    $result4 = IsTaskAccept( -1, 1882 )
    $result = $result + $result4
    $result5 = IsTaskAccept( -1, 1883 )
    $result = $result + $result5
    $result6 = IsTaskAccept( -1, 1884 )
    $result = $result + $result6
    $result7 = IsTaskAccept( -1, 1885 )
    $result = $result + $result7
    $result8 = IsTaskAccept( -1, 1886 )
    $result = $result + $result8
    if $result != 8
    	BC( "screen", "player", -1, "You haven't yet completed the Race to Elysium quest of that grade. Please complete it before accepting another!" )
    	return
    endif
    //60?-75?
    if $mylevel >= 60
	    if $mylevel < 75
	    	if $100minglevel >= 75
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1880 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif 
    //75?-90?
    if $mylevel >= 75
	    if $mylevel < 90
	    	if $100minglevel >= 90
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1881 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif    
    //90?-100?
    if $mylevel >= 90
	    if $mylevel < 100
	    	if $100minglevel >= 100
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1882 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif   
    //100?-115?
    if $mylevel >= 100
	    if $mylevel < 115
	    	if $100minglevel >= 115
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1883 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif  
    //115?-120?
    if $mylevel >= 115
	    if $mylevel < 120
	    	if $100minglevel >= 120
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1884 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif  
    //??0-15
    if $myfieldlevel > 0
	    if $myfieldlevel < 15
	    	if $100mingfieldlevel >= 15
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1885 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif
    //??15-30
    if $myfieldlevel >= 15
	    if $myfieldlevel < 30
	    	if $100mingfieldlevel >= 30
	    		$n = SetPlayerVar(-1 , 3572,  $mday)
	    		if $n == 0
		    		AcceptTask(-1,1886 )
		    		return    		
	    		endif	    		
	    	endif
	    endif
    endif    
  }
//----------?3.76??3.80-------------------	
//  	//?????? activity1
//  	function OnLotteryActivity1(){
//  		
//		$mapid = 568
//		$ectype_ID = GetEctypeID(-1,$mapid)
//		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
//		$Player_UID = GetPlayerVar( -1, 3863 )
//		$player_map = GetPlayerInfo(-1,"mapid")
//
//		$playerid = GetPlayerID()
//		
//		$team = IsPlayerInTeam(-1)
//		if $team == 0
//			BC("dialogbox","player",-1,"GUID:08287000173")
//			return
//		endif
//		
//		if $player_map == $mapid
//			BC("screen","player",-1,"GUID:08287000174")
//			return
//		endif
//		
//		//?????????
//		$kind = GetPlayerVar(-1,3518)
//		if $kind > 0
//			if $ectype_ID > 0
//				if $Player_UID == $ectype_UID
//					$fly = FlyToEctype(-1,568,39,63)
//					if $fly > 0 
//						BC( "screen" , "player" , -1, "GUID:08287000175" )
//						return
//					endif
//				else
//					SetPlayerVar(-1,3518,0)
//					call EntranceDisneyland()
//				endif
//			else
//				SetPlayerVar(-1,3518,0)
//				call EntranceDisneyland()	
//			endif
//		else
//			call EntranceDisneyland()
//		endif
//		
//
//
//			
//}	
//	
//		function EntranceDisneyland(){
//
//				//????		
//				$ectype_ID = GetEctypeID(-1, 568)
//				if $ectype_ID > 0
//					ReleaseEctype(-1,568)
//				endif
//				
//		//    ????		
//		//		$dengji = GetPlayerInfo(-1,"level")
//		//		if $dengji < 75
//		//			BC("dialogbox","player",-1,"GUID:08287000176")
//		//			return
//		//		endif
//		
//		//    ?????		
//				$today = GetSystemTime("yday")
//				$lastday = GetPlayerVar(-1,4082)
//				if $lastday == $today
//					BC("dialogbox","player",-1,"GUID:08287000177")
//					return
//				endif
//				
//			  //???????????
//				$Verify_item1 = GetPlayerInfo(-1,"item",2001)
//				if $Verify_item1 < 1
//					$Verify_item2 = GetPlayerInfo(-1,"item",2002)
//						if $Verify_item2 < 1
//							$Verify_item3 = GetPlayerInfo(-1,"item",2000)
//								if $Verify_item3 < 1
//									BC("screen","player",-1,"GUID:08287000178")
//									return
//								endif
//						endif
//				endif
//				
//				$revalue1 = SubPlayerInfo(-1,"item",2001,1)
//				if $revalue1 == 0
//					SetPlayerVar(-1,3518,1)
//				else
//					$revalue2 = SubPlayerInfo(-1,"item",2002,1)
//					if $revalue2 == 0
//						SetPlayerVar(-1,3518,2)
//					else
//						$revalue3 = SubPlayerInfo(-1,"item",2000,1)
//						if $revalue3 == 0
//							SetPlayerVar(-1,3518,3)
//						else
//							BC("screen","player",-1,"GUID:08287000179")
//							return
//						endif
//					endif
//				endif			
//				
//				$fly = FlyToEctype(-1,568,39,63)
//				if $fly > 0 
//					$ectype_ID = GetEctypeID(-1, 568)
//		//			SetPlayerActLog(-1,25,0)
//					$today = GetSystemTime("yday")
//					SetPlayerVar(-1,4082,$today)
//					SetPlayerVar(-1,3863,$fly)
//					SetPlayerVar(-1,3519,0)
//					StartEctypeTimer($ectype_ID, 0)
//					BC( "screen" , "player" , -1, "GUID:08287000180" )
//				else
//					BC( "screen" , "player" , -1, "GUID:08287000181" )
//					return
//				endif			
//			
//
//}		
//----------?3.76??3.80-------------------		
		function checkresult(){
		
	//-----------????----------------------
		$playercoin = GetPlayerVar(-1,4049)
		$playergift = GetPlayerVar(-1,4050)
		$lastjoin = GetPlayerVar(-1,3436)
		if $lastjoin > 0
			if $lastjoin < 3
				$lastjoin = 3
				SetPlayerVar(-1,3436,$lastjoin)
			endif
		endif
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		if $chipQ == 0
			if $chipB == 0
				if $chipZ == 0
					if $chipX == 0
						$isret = 1
					endif
				endif
			endif
		endif
		if $isret == 0
			if $lastjoin > 0
				if $lastrace >= $lastjoin
//45	??????	???	??
//46	??????	???	??Q
//47	??????	???	??B
//48	??????	???	??Z
//49	??????	???	??X
					SetPlayerActLog(-1,45,$lastrace)
					SetPlayerActLog(-1,46,$chipQ)
					SetPlayerActLog(-1,47,$chipB)
					SetPlayerActLog(-1,48,$chipZ)
					SetPlayerActLog(-1,49,$chipX)
					$race_result_index = 290 + $lastjoin
					$playerindex = 285 + $lastjoin
					$race_result = GetGlobalVar($race_result_index)
					$gift = 0
	//				BC("chat","player",-1,"race_result_index=",$race_result_index)
	//				BC("chat","player",-1,"race_result=",$race_result)
					if $race_result == 0
//						return
					endif
					if $race_result == 3
						if $chipQ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipQ * 2
							$chipQ = 0
							SendMail(-1,"New Year's Race - Emerald Dragon","Congratulations! Emerald Dragon you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Emerald Dragon","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipX
					endif
					if $race_result == 4
						if $chipB > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipB * 2
							$chipB = 0
							SendMail(-1,"New Year's Race - White Tiger","Congratulations! White Tiger you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - White Tiger","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipQ
						$gift += $chipZ
						$gift += $chipX
					endif
					if $race_result == 5
						if $chipZ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipZ * 2
							$chipZ = 0
							SendMail(-1,"New Year's Race - Scarlet Phoenix","Congratulations! Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Scarlet Phoenix","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipQ
						$gift += $chipX
					endif
					if $race_result == 6
						if $chipX > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipX * 2
							$chipX = 0
							SendMail(-1,"New Year's Race - Obsidian Turtle","Congratulations! Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Obsidian Turtle","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipQ
					endif
					$playercoin += $coin
					$playergift += $gift
					SetPlayerVar(-1,4049,$playercoin)
					SetPlayerVar(-1,4050,$playergift)
//50	??????	???	?coin
//51	??????	???	?gift
					SetPlayerActLog(-1,51,$playercoin)
					SetPlayerActLog(-1,54,$playergift)
					SetPlayerVar(-1,4076,0)
					SetPlayerVar(-1,4077,0)
					SetPlayerVar(-1,4079,0)
					SetPlayerVar(-1,4080,0)
//					BC("chat","player",-1,"GUID:08287000198")
				endif
			endif
		endif
	//-----------????end----------------------
		
	}
	
	
	
	
		function valentine(){
	//???????????? 
	//??????
//44627	??????
//44628	??????
//44629	??????


	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
  //????2
    $playervar = GetPlayerVar(-1,347)  
    if $playervar != 0 
     return
    endif 
    
	if $Now_Year != 2013 
    return
  endif
   if $Now_Yday < 46
    return
   endif  
  if $Now_Yday > 120 
    return
  endif
  //????
    $playervar = GetPlayerVar(-1,340)  
    if $playervar != 0 
     return
    endif 
	$idp = GetPlayerID()
  $value1 = GetGlobalVar(91 )
  $value2 = GetGlobalVar(92 )
  $value3 = GetGlobalVar(93 )
  
  if $idp == $value1
		SendMail(-1,"Drop-dead Gorgeous","Congratulations for earning first place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,347,1)
  endif   
	if $idp == $value2
		SendMail(-1,"Roughed and Rarin'","Congratulations for earning second place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,347,1)
  endif  
	if $idp == $value3
		SendMail(-1,"Love Boat","Congratulations for earning third place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
		SetPlayerVar(-1,347,1)
  endif  

}