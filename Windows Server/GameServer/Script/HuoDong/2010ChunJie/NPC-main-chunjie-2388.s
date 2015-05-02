////****************************************
//	//
//	//		Copyright:PERFECT WORLD
//	//		Modified:2009/04/15
//	//		Author:??
//	//		TaskName:NPC-main-chunjie-2388.s
//	//		TaskID:2010??????
//	//
//	//****************************************
//	
//	function OnRequest(){
//	
//	}
//	
//	
//	function OnOption0(){
//		
//	//???????????
//		 $item = GetPlayerInfo( -1, "item", 59613 )
//		 if $item < 1
//		 	BC( "dialogbox", "player", -1, "You do not have a Chinese Knot, so you cannot participate in the lottery draw.\n{#ff780000=You can get Chinese Knots by taking part in Fallen Darkness, Trial For the Brave, and Dragon Island. There will be 5 draws per day.#}" )
//		 	return
//		 endif
//	
//	//????????
//		$Now_Yday = GetSystemTime( "yday" )
//		$day = GetPlayerVar( -1, 4077 )
//		$cishu = GetPlayerVar( -1, 3286 )
//		
//		if $day == $Now_Yday
//			if $cishu >= 5
//				BC( "dialogbox", "player", -1, "You have already completed 5 draws today." )
//		 		return
//		 	else
//		 		$lv = GetPlayerInfo( -1 , "level" )
//				if $lv < 75
//					$cishu = $cishu + 1
//					SetPlayerVar(-1,3286,$cishu )
//					ReqAward( -1 , 10 , 1 )
//					//BC( "screen", "player", -1, "GUID:04762000002" )
//				else
//					$cishu = $cishu + 1
//					SetPlayerVar(-1,3286,$cishu )
//					ReqAward( -1 , 9 , 1 )
//					//BC( "screen", "player", -1, "GUID:04762000003" )
//				endif
//			endif
//		else
//			SetPlayerVar(-1,4077,$Now_Yday )
//			//SetPlayerVar(-1,3286,0 )
//			
//			$lv = GetPlayerInfo( -1 , "level" )
//			if $lv < 75
//				SetPlayerVar(-1,3286,1 )
//				ReqAward( -1 , 10 , 1 )
//				//BC( "screen", "player", -1, "GUID:04762000004" )
//			else
//				SetPlayerVar(-1,3286,1 )
//				ReqAward( -1 , 9 , 1 )
//					//BC( "screen", "player", -1, "GUID:04762000005" )
//			endif
//		endif
//			
//		
//	
//}