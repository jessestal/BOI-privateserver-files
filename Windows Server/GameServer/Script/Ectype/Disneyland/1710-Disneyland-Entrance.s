	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/05
	//		Author:???
	//		TaskName:1710-Disneyland-Entrance.s
	//		TaskID:
	//
	//****************************************
	
	//??1-------????????---------start
	//????4082 [????]????
	//????3863 ????UID
	//????3519 ??????
	//????3518 ??????????
	//-----------????????---------end

	//??2-------?????????---------start
	//????4083 [?????]????
	//????3847 ????UID
	//????3517 ??????????
	//-----------?????????---------end
		
	function OnRequest(){
		
		
		DisableNpcOption(0)
		DisableNpcOption(1)
		
//		$today = GetSystemTime("yday")
//		$lastday = GetPlayerVar(-1,4082)
//		
//		$ectype_id = GetEctypeID(-1, 568 )
//		if $ectype_id <= 0
//			DisableNpcOption(1)
//		else
//			DisableNpcOption(0)
//		endif

		$today = GetSystemTime("yday")
		$lastday = GetPlayerVar(-1,4083)
//		if $today == $lastday
//			DisableNpcOption(2)
//		endif
		
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )		
		$monthadd = $Now_Month * 100
		$Time = $monthadd + $Now_Mday
		
//		if $Time <= 1119
//			DisableNpcOption(3)
//			DisableNpcOption(2)
//		endif
//		if $Time >= 1204
//			DisableNpcOption(3)
//			DisableNpcOption(2)
//		endif		
//		
//		$week = GetSystemTime("week")
//		if $week > 0
//			if $week < 6
//				DisableNpcOption(3)
//				DisableNpcOption(2)
//			endif
//		endif				
		
		$ectype_id = GetEctypeID(-1, 569 )
		if $ectype_id <= 0
			DisableNpcOption(3)
		else
			DisableNpcOption(2)
		endif		
				
	}
	
//	function OnOption0(){
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
//			BC("dialogbox","player",-1,"Please leave your party. Only one person may enter this instance.")
//			return
//		endif
//		
//		if $player_map == $mapid
//			BC("screen","player",-1,"GUID:03898000001")
//			return
//		endif
//		
//		//?????????
////		$kind = GetPlayerVar(-1,3518)
////		if $kind > 0
////			if $ectype_ID > 0
////				if $Player_UID == $ectype_UID
////					$fly = FlyToEctype(-1,568,39,63)
////					if $fly > 0 
////						BC( "screen" , "player" , -1, "GUID:03898000002" )
////						return
////					else
////						BC( "screen" , "player" , -1, "GUID:03898000003" )
////					endif
////				endif
////			endif
////		endif	
//		
//		//????		
//		$ectype_ID = GetEctypeID(-1, 568)
//		if $ectype_ID > 0
//			ReleaseEctype(-1,568)
//		endif
//		
////    ????		
////		$dengji = GetPlayerInfo(-1,"level")
////		if $dengji < 75
////			BC("dialogbox","player",-1,"GUID:03898000004")
////			return
////		endif
//
////    ?????		
//		$today = GetSystemTime("yday")
//		$lastday = GetPlayerVar(-1,4082)
//		if $lastday == $today
//			BC("dialogbox","player",-1,"GUID:03898000005")
//			return
//		endif
//		
//	  //???????????
//		$Verify_item1 = GetPlayerInfo(-1,"item",2001)
//		if $Verify_item1 < 1
//			$Verify_item2 = GetPlayerInfo(-1,"item",2002)
//				if $Verify_item2 < 1
//					$Verify_item3 = GetPlayerInfo(-1,"item",2000)
//						if $Verify_item3 < 1
//							BC("screen","player",-1,"GUID:03898000006")
//							return
//						endif
//				endif
//		endif
//		
//		$revalue1 = SubPlayerInfo(-1,"item",2001,1)
//		if $revalue1 == 0
//			SetPlayerVar(-1,3518,1)
//		else
//			$revalue2 = SubPlayerInfo(-1,"item",2002,1)
//			if $revalue2 == 0
//				SetPlayerVar(-1,3518,2)
//			else
//				$revalue3 = SubPlayerInfo(-1,"item",2000,1)
//				if $revalue3 == 0
//					SetPlayerVar(-1,3518,3)
//				else
//					BC("screen","player",-1,"GUID:03898000007")
//					return
//				endif
//			endif
//		endif			
//		
//		$fly = FlyToEctype(-1,568,39,63)
//		if $fly > 0 
//			$ectype_ID = GetEctypeID(-1, 568)
////			SetPlayerActLog(-1,25,0)
//			$today = GetSystemTime("yday")
//			SetPlayerVar(-1,4082,$today)
//			SetPlayerVar(-1,3863,$fly)
//			SetPlayerVar(-1,3519,0)
//			StartEctypeTimer($ectype_ID, 0)
//			BC( "screen" , "player" , -1, "GUID:03898000008" )
//		else
//			BC( "screen" , "player" , -1, "The instance is full, please try again later." )
//			return
//		endif
//			
//	}
//	
//	function OnOption1(){
//		
//		$mapid = 568
//		$ectype_ID = GetEctypeID(-1,$mapid)
//		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
//		$Player_UID = GetPlayerVar( -1, 3863 )
//		if $ectype_ID == 0
//			BC( "screen" , "player" , -1, "GUID:03898000010" )
//			return
//		endif
//		
//		if $Player_UID != $ectype_UID
//			BC( "screen" , "player" , -1, "GUID:03898000011" )
//			return
//		endif
//	
////  ?1?????????,????????
//					
//		$fly = FlyToEctype(-1,568,39,63)
//		if $fly > 0 
//			BC( "screen" , "player" , -1, "GUID:03898000012" )
//		else
//			BC( "screen" , "player" , -1, "GUID:03898000013" )
//		endif
//					
//	}

		function OnOption2(){

			//????
			$ectype_ID = GetEctypeID(-1, 569)
			if $ectype_ID > 0
				ReleaseEctype(-1,569)
			endif
			
			$today = GetSystemTime("yday")
			$lastday = GetPlayerVar(-1,4083)
			if $today == $lastday
				BC("dialogbox","player",-1,"You've already entered the Bang-Up Time instance today.")
				return
			endif			
			
			$playerid = GetPlayerID()
			
			$team = IsPlayerInTeam(-1)
			if $team == 0
				BC("dialogbox","player",-1,"Please leave your party. Only one person may enter this instance.")
				return
			endif
			
			$level = GetPlayerInfo(-1,"level")
			$field = GetFieldLevel(-1)
			
			$fly = FlyToEctype(-1,569,60,67)
			if $fly > 0 
				$ectype_ID = GetEctypeID(-1, 569)
	//			SetPlayerActLog(-1,25,0)
				$today = GetSystemTime("yday")
				SetPlayerVar(-1,4083,$today)
				SetPlayerVar(-1,3847,$fly)
				StartEctypeTimer($ectype_ID, 0)
				SetEctypeVar($ectype_ID,11,$level)
				if $field > 0
					SetEctypeVar($ectype_ID,12,$field)
				endif
				BC( "screen" , "player" , -1, "Bang-Up Time starts!" )
			else
				BC( "screen" , "player" , -1, "The instance is full, please try again later." )
				return
			endif			


			
}			

		function OnOption3(){
			
			$mapid = 569
			$ectype_ID = GetEctypeID(-1,$mapid)
			$ectype_UID = GetEctypeUniqueID( -1, $mapid )
			$Player_UID = GetPlayerVar( -1, 3847 )
			if $ectype_ID == 0
				BC( "screen" , "player" , -1, "You haven't entered the Bang-Up Time instance yet!" )
				return
			endif
			
			if $Player_UID != $ectype_UID
				BC( "screen" , "player" , -1, "You haven't entered the Bang-Up Time instance yet!" )
				return
			endif	
			
			$fly = FlyToEctype(-1,569,60,67)
			if $fly > 0 
				BC( "screen" , "player" , -1, "Returned to the Bang-Up Time instance!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif		
				
			
}			