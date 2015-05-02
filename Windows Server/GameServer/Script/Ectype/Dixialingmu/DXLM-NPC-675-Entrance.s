		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-07
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************

		function OnRequest(){
//--???-3412
//--???-3413
//--??UID-3853
//--??UID-3854

//-----------------------------------------
	//?????(????)	0
//?????							1
//?????ú??	 				2
	//?????(????)	3	
	//?????(????)	4
//??(????)?? 	5

			$playerid = GetPlayerID()
			$player_uid = GetPlayerVar($playerid, 3853 )

			$ectype_id = GetEctypeID($playerid, 478 )
			if $ectype_id <= 0
				DisableNpcOption(1)
				DisableNpcOption(5)
			else
				$var3414 = GetPlayerVar(-1,3414)
				if $var3414 == 6
					DisableNpcOption(1)
				else
					DisableNpcOption(5)
				endif
				$ectype_uid = GetEctypeUniqueID($playerid, 478 )
				if $ectype_uid != $player_uid
					DisableNpcOption(1)
				endif
				DisableNpcOption(0)
				DisableNpcOption(3)
				DisableNpcOption(4)
			endif

			$ectype_id2 = GetEctypeID($playerid, 479 )
			if $ectype_id2 <= 0
				DisableNpcOption(2)
			else
				$ectype_uid = GetEctypeUniqueID($playerid, 479 )
				if $ectype_uid != $player_uid
					DisableNpcOption(2)
				endif
				DisableNpcOption(0)
				DisableNpcOption(3)
				DisableNpcOption(4)
			endif

			$is269 = IsTaskAccept( $playerid, 269 )
			$is269d = IsTaskDone( $playerid, 269 )
			$is270 = IsTaskAccept( $playerid, 270 )
			if $is269 == 1
				if $is270 == 1
					if $is269d == 1
						DisableNpcOption(4)
					endif
				endif
			endif
						
//			$is270d = IsTaskDone( $playerid, 270 )
//			if $is270d == 0
//				DisableNpcOption(4)
//			endif
			
		}


		function OnOption0(){
//?????

			$team = IsPlayerInTeam(-1)
			if $team == -1
				BC( "dialogbox", "player", -1, "Please create a party first." )
				return
			endif

			$headerID = GetTeamHeaderID( -1 )
			$playerid = GetPlayerID()
			if $playerid != $headerID
				BC( "dialogbox", "player", -1, "You are not the Party Leader." )
				return
			endif

			$team_count = GetTeamMemberCount( -1 )
			if $team_count < 3
				BC( "dialogbox", "player", -1, "Recommended for a party of at least 3 members." )
				return
			endif

			$size = GetTeamAreaSize(-1)
			if $size > 10
				BC( "dialogbox", "player", -1, "Your party members are too far away!" )
				return
			endif
//-----????,????return,??????-----------------------------------------
//-----??3?---
			$Mem1 = GetTeamMemberID( -1, 0 )
			$Mem2 = GetTeamMemberID( -1, 1 )
			$Mem3 = GetTeamMemberID( -1, 2 )
			$Mem4 = GetTeamMemberID( -1, 3 )
			$Mem5 = GetTeamMemberID( -1, 4 )
			$Mem6 = GetTeamMemberID( -1, 5 )
//			$weeknow = GetSystemTime( "week" )
			$weeknow = GetNowWeek()
			$daynow = GetSystemTime( "yday" )

			$lv = GetPlayerInfo( -1 , "level" )
			$lastweek = GetPlayerVar( -1 , 3412 )
			$joincount = GetPlayerVar( -1 , 3413 )
			$lastday = GetPlayerVar( -1 , 3854 )
			if $lv < 100
				BC( "dialogbox", "player", -1, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
				return
			endif
			if $lastday == $daynow
				BC( "dialogbox", "player", -1, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
				return
			endif
			if $lastweek == $weeknow
				if $joincount >= 3
					BC( "dialogbox", "player", -1, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
					return
				endif
			endif
			$is270 = IsTaskDone( $playerid, 270 )
			if $is270 == 1
				BC( "dialogbox", "player", -1, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
				return
			endif
			
			if $Mem1 != -1
				if $Mem1 != $headerID
					#name = GetPlayerInfo( $Mem1 , "name" )
					$lv = GetPlayerInfo( $Mem1 , "level" )
					$lastweek = GetPlayerVar( $Mem1 , 3412 )
					$joincount = GetPlayerVar( $Mem1 , 3413 )
					$lastday = GetPlayerVar( $Mem1 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem1, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem1, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem1, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem1, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem1, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif
			if $Mem2 != -1
				if $Mem2 != $headerID
					#name = GetPlayerInfo( $Mem2 , "name" )
					$lv = GetPlayerInfo( $Mem2 , "level" )
					$lastweek = GetPlayerVar( $Mem2 , 3412 )
					$joincount = GetPlayerVar( $Mem2 , 3413 )
					$lastday = GetPlayerVar( $Mem2 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem2, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem2, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem2, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem2, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem2, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif
			if $Mem3 != -1
				if $Mem3 != $headerID
					#name = GetPlayerInfo( $Mem3 , "name" )
					$lv = GetPlayerInfo( $Mem3 , "level" )
					$lastweek = GetPlayerVar( $Mem3 , 3412 )
					$joincount = GetPlayerVar( $Mem3 , 3413 )
					$lastday = GetPlayerVar( $Mem3 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem3, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem3, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem3, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem3, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem3, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif
			if $Mem4 != -1
				if $Mem4 != $headerID
					#name = GetPlayerInfo( $Mem4 , "name" )
					$lv = GetPlayerInfo( $Mem4 , "level" )
					$lastweek = GetPlayerVar( $Mem4 , 3412 )
					$joincount = GetPlayerVar( $Mem4 , 3413 )
					$lastday = GetPlayerVar( $Mem4 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem4, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem4, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem4, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem4, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem4, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif
			if $Mem5 != -1
				if $Mem5 != $headerID
					#name = GetPlayerInfo( $Mem5 , "name" )
					$lv = GetPlayerInfo( $Mem5 , "level" )
					$lastweek = GetPlayerVar( $Mem5 , 3412 )
					$joincount = GetPlayerVar( $Mem5 , 3413 )
					$lastday = GetPlayerVar( $Mem5 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem5, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem5, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem5, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem5, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem5, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif
			if $Mem6 != -1
				if $Mem6 != $headerID
					#name = GetPlayerInfo( $Mem6 , "name" )
					$lv = GetPlayerInfo( $Mem6 , "level" )
					$lastweek = GetPlayerVar( $Mem6 , 3412 )
					$joincount = GetPlayerVar( $Mem6 , 3413 )
					$lastday = GetPlayerVar( $Mem6 , 3854 )
					if $lv < 100
						BC( "dialogbox", "player", $headerID ,#name, "You have not reached LV100. Cannot enter!" )
						BC( "dialogbox", "player", $Mem6, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
						return
					endif
					$is270 = IsTaskDone( $Mem6, 270 )
					if $is270 == 1
						BC( "dialogbox", "player", $headerID, #name, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
						BC( "dialogbox", "player", $Mem6, "Please finish the Main Quest Chiyu's Invitation first!" )
						return
					endif
					if $lastweek == $weeknow
						if $joincount >= 3
							BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							BC( "dialogbox", "player", $Mem6, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
							return
						endif
					endif
					if $lastday == $daynow
						BC( "dialogbox", "player", $headerID, #name, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						BC( "dialogbox", "player", $Mem6, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
						return
					endif
				endif
			endif

//-------??????-------------------------------
			$succeed = FlyToEctype( $headerID , 478 , 32 , 101 )
			if $succeed > 0
				SetPlayerActLog($headerID,22,1)
				$ectype_id = GetEctypeID( -1 , 478 )
				$ectype_uid = GetEctypeUniqueID( -1 , 478 )
				SetPlayerVar( -1 , 3853 , $ectype_uid )
				SetPlayerVar( -1 , 3854 , $daynow )
				$lastweek = GetPlayerVar( -1 , 3412 )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( -1 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( -1 , 3413 , $joincount)
				else
					SetPlayerVar( -1 , 3412 , $weeknow )
					SetPlayerVar( -1 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( -1 , 3414 , 2)
				BC( "screen" , "player" , -1 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
				//??????-START
				$TJ_join_number = GetGlobalVar(979)
				$TJ_join_number = $TJ_join_number + $team_count
				SetGlobalVar(979 , $TJ_join_number)
				//??????-END
				SetEctypeVar( $ectype_id , 111 , $Mem1 )
				SetEctypeVar( $ectype_id , 112 , $Mem2 )
				SetEctypeVar( $ectype_id , 113 , $Mem3 )
				SetEctypeVar( $ectype_id , 114 , $Mem4 )
				SetEctypeVar( $ectype_id , 115 , $Mem5 )
				SetEctypeVar( $ectype_id , 116 , $Mem6 )
				StartEctypeTimer( -1 , 478 , 1 )
			else
				BC( "dialogbox", "player", -1, "Too many players in this instance now. Please try again later or change realms!" )
				return
			endif
//-------??????,??????----------------------------
			if $Mem1 != -1
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem1,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 478 )
						SetPlayerVar( $Mem1 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem1 , 3412 )

				SetPlayerVar( $Mem1 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem1 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem1 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem1 , 3412 , $weeknow )
					SetPlayerVar( $Mem1 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( $Mem1 , 3414 , 2)

						BC( "screen", "player", $Mem1 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem1 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
			if $Mem2 != -1
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem2,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 478 )
						SetPlayerVar( $Mem2 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem2 , 3412 )

				SetPlayerVar( $Mem2 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem2 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem2 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem2 , 3412 , $weeknow )
					SetPlayerVar( $Mem2 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar(  $Mem2 , 3414 , 2)

						BC( "screen", "player", $Mem2 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem2 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
			if $Mem3 != -1
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem3,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 478 )
						SetPlayerVar( $Mem3 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem3 , 3412 )

				SetPlayerVar( $Mem3 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem3 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem3 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem3 , 3412 , $weeknow )
					SetPlayerVar( $Mem3 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( $Mem3 , 3414 , 2)

						BC( "screen", "player", $Mem3 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem3 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
			if $Mem4 != -1
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem4,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 478 )
						SetPlayerVar( $Mem4 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem4 , 3412 )

				SetPlayerVar( $Mem4 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem4 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem4 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem4 , 3412 , $weeknow )
					SetPlayerVar( $Mem4 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar(  $Mem4 , 3414 , 2)

						BC( "screen", "player", $Mem4 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem4 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
			if $Mem5 != -1
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem5,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 478 )
						SetPlayerVar( $Mem5 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem5 , 3412 )

				SetPlayerVar( $Mem5 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem5 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem5 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem5 , 3412 , $weeknow )
					SetPlayerVar( $Mem5 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( $Mem5 , 3414 , 2)

						BC( "screen", "player", $Mem5 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem5 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
			if $Mem6 != -1
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 478 , 32 , 101 )
					if $succeed > 0
						SetPlayerActLog($Mem6,22,1)
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 478 )
						SetPlayerVar( $Mem6 , 3853 , $ectype_uid )
					$lastweek = GetPlayerVar( $Mem6 , 3412 )

				SetPlayerVar( $Mem6 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( $Mem6 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( $Mem6 , 3413 , $joincount)
				else
					SetPlayerVar( $Mem6 , 3412 , $weeknow )
					SetPlayerVar( $Mem6 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( $Mem6 , 3414 , 2)

						BC( "screen", "player", $Mem6 , "Welcome to Pangaea's Catacomb! Let's start our adventure today!" )
					else
						BC( "dialogbox", "player", $Mem6 , "An error occurred when teleporting into the instance. Error Code:" , $succeed )
					endif
				endif
			endif
//----------------------????------------------
		}

		function OnOption1(){
			//??
			$ectype_uid = GetEctypeUniqueID( -1 , 478 )
			$player_uid = GetPlayerVar( -1 , 3853 )
			$ectype_id = GetEctypeID( -1 , 478 )
			if $ectype_id <= 0
				BC( "screen", "player", -1, "Error" )
				return
			endif
			if $ectype_uid == $player_uid
				$mode = GetPlayerVar(-1,3414)
				if $mode == 1
					$result = FlyToEctype(-1,478,27,18)
				endif
				if $mode == 2
					$result = FlyToEctype(-1,478,32,101)
				endif
				if $mode == 3
					$result = FlyToEctype(-1,478,7,74)
				endif
				if $mode == 4
					$result = FlyToEctype(-1,478,96,63)
				endif
				if $mode == 5
					$result = FlyToEctype(-1,478,89,41)
				endif
				if $result > 0
					BC("screen","player",-1,"You are back in Pangaea's Catacomb-Reality!")
				else
					BC("dialogbox","player",-1,"Error occurred when teleporting into the instance. Error Code: ",$result)
				endif
			else
				BC("dialogbox","player",-1,"You do not belong to this instance anymore.")
			endif
		}

		function OnOption2(){
			//?????ú??
			$ectype_uid = GetEctypeUniqueID(-1,479)
			$player_uid = GetPlayerVar(-1,3853)
			$ectype_id = GetEctypeID(-1,479)
			if $ectype_id <= 0
				BC("screen","player",-1,"Error")
				return
			endif
			if $ectype_uid == $player_uid
				$mode = GetPlayerVar(-1,3414)
				if $mode == 1
					$result = FlyToEctype(-1,479,27,18)
				endif
				if $mode == 2
					$result = FlyToEctype(-1,479,32,101)
				endif
				if $mode == 3
					$result = FlyToEctype(-1,479,7,74)
				endif
				if $mode == 4
					$result = FlyToEctype(-1,479,96,63)
				endif
				if $mode == 5
					$result = FlyToEctype(-1,479,89,41)
				endif
				if $result > 0
					BC("screen","player",-1,"You have returned to Pangaea's Catacomb (Ethereal)!")
				else
					BC("dialogbox","player",-1,"Error occurred when teleporting into the instance. Error Code: ",$result)
				endif
			else
				BC("dialogbox","player",-1,"You do not belong to this instance anymore.")
			endif
		}

		function OnOption3(){
//???????

			$team = IsPlayerInTeam(-1)
			if $team == -1
				BC( "dialogbox", "player", -1, "Please create a party first." )
				return
			endif

			$playerid = GetPlayerID()

//-----??3?---
			$weeknow = GetNowWeek()
			$daynow = GetSystemTime( "yday" )
			$lv = GetPlayerInfo( -1 , "level" )
			$lastweek = GetPlayerVar( -1 , 3412 )
			$joincount = GetPlayerVar( -1 , 3413 )
			$lastday = GetPlayerVar( -1 , 3854 )
			$team_count = GetTeamMemberCount( -1 )
			if $team_count > 1
				BC( "dialogbox", "player", -1, "Only a single player can choose this mode!" )
				return
			endif
			if $lv < 100
				BC( "dialogbox", "player", -1, "You have not reached LV100. Cannot enter Pangaea's Catacomb" )
				return
			endif
			$is270 = IsTaskDone( $playerid, 270 )
			if $is270 == 1
				BC( "dialogbox", "player", -1, "Please finish the Main Quest Chiyu's Invitation first! Then you can start to explore!" )
				return
			endif
			if $lastday == $daynow
				BC( "dialogbox", "player", -1, "You have entered Pangaea's Catacomb today. Cannot enter again!" )
				return
			endif
			if $lastweek == $weeknow
				if $joincount >= 3
					BC( "dialogbox", "player", -1, "You have entered Pangaea's Catacomb 3 times this week. Cannot enter it again until next week." )
					return
				endif
			endif
//-------??????-------------------------------
			$succeed = FlyToEctype( $playerid , 478 , 27 , 18 )
			if $succeed > 0
				SetPlayerActLog($playerid,22,2)
				$ectype_id = GetEctypeID( -1 , 478 )
				$ectype_uid = GetEctypeUniqueID( -1 , 478 )
				SetPlayerVar( -1 , 3853 , $ectype_uid )
				SetPlayerVar( -1 , 3854 , $daynow )
				if $lastweek == $weeknow
					$joincount = GetPlayerVar( -1 , 3413 )
					$joincount = $joincount + 1
					SetPlayerVar( -1 , 3413 , $joincount)
				else
					SetPlayerVar( -1 , 3412 , $weeknow )
					SetPlayerVar( -1 , 3413 , 1)
				endif
				//3414??????or??
				SetPlayerVar( -1 , 3414 , 1)
				BC( "screen" , "player" , -1 , "You have entered Pangaea's Catacomb." )
				//??????-START
				$TJ_join_number = GetGlobalVar(979)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(979 , $TJ_join_number)
				//??????-END
				SetEctypeVar( $ectype_id , 111 , $playerid )
				SetEctypeVar( $ectype_id , 99 , 1 )
				StartEctypeTimer( -1 , 478 , 9 )
			else
				BC( "dialogbox", "player", -1, "Failed to enter instance!" )
				return
			endif
//----------------------????------------------
		}

		function OnOption4(){


			$team = IsPlayerInTeam(-1)
			if $team == -1
				BC( "dialogbox", "player", -1, "Please create a party first." )
				return
			endif
			$team_count = GetTeamMemberCount( -1 )
			if $team_count > 1
				BC( "dialogbox", "player", -1, "Only a single player can choose this mode!" )
				return
			endif
			$playerid = GetPlayerID()
			$succeed = FlyToEctype( $playerid , 478 , 32 , 101 )
			if $succeed > 0
				$ectype_id = GetEctypeID( -1 , 478 )
				$ectype_uid = GetEctypeUniqueID( -1 , 478 )
				//3414??????or??or??
				SetPlayerVar( -1 , 3414 , 6)
				BC( "screen" , "player" , -1 , "You entered Scenario Mode!" )
				SetEctypeVar( $ectype_id , 111 , $playerid )
				StartEctypeTimer( -1 , 478 , 7 )
			else
				BC( "dialogbox", "player", -1, "Failed to enter instance!" )
				return
			endif




		}
		
		
		function OnOption5(){
			
			$result = ReleaseEctype (-1 , 478 )
			if $succeed == 0
				BC( "dialogbox", "player", -1, "Instance Reset!" )
			else
				BC( "dialogbox", "player", -1, "Failed to release Instance!" )
			endif
		
		}