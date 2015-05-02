	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/03
	//		Author:??
	//		TaskName:Ectype-HAQX-NPC-1936-Enter.s
	//		TaskID:????????
	//
	//****************************************
	//
	//3730 ?????
	//3236 ?????
	//44082
	function OnRequest(){
		//?????????????
		$ectype_ID = GetEctypeID( -1 ,166 )
		if $ectype_ID > 0
		else
			DisableNpcOption(1)
		endif

		$today_time = GetSystemTime( "yday" )
		$player_time = GetPlayerVar( -1, 3923 )
		if $player_time == $today_time
			DisableNpcOption(0)
		endif

		$Now_Hour = GetSystemTime( "hour" )


		//??????44082,??????????????
		$num = GetPlayerInfo( -1, "item", 44082 )
		if $num <= 0
			DisableNpcOption(2)
		endif


		//????vip??,???????
		$num = GetPlayerVar( -1, 4038 )
		if $num <= 0
			DisableNpcOption(3)
		endif


		$Line = GetServerLineID()
		$is_line = $Line % 2
		//?????
		if $is_line != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif

	}

	//??????
	function OnOption0(){


//		//??NPC?ID 1936-1965
//
//		$npc_id = GetNpcSlkID()
//		if $npc_id == -1
//			BC( "dialogbox", "player", -1, "GUID:04157000000" )
//			return
//		endif


		//------------------------
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif

		$team_count = GetTeamMemberCount(-1)
		//????????
		//???1
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Your party should have more than 3 members!" )
			return
		endif

		$size = GetTeamAreaSize(-1)

		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your pary members are too far away!" )
			return
		endif

		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		$today_time = GetSystemTime( "yday" )
		$total_level = 0
		$total_fieldlevel = 0
		$temp_fieldlevel = 0
		$foul_playernumber = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time = GetPlayerVar( $teamplayer1_id, 3923 )
			if $player1_time == $today_time
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer1_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer1_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer1_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif

		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time = GetPlayerVar( $teamplayer2_id, 3923 )
			if $player2_time == $today_time
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer2_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer2_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer2_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif

		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time = GetPlayerVar( $teamplayer3_id, 3923 )
			if $player3_time == $today_time
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer3_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
					//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer3_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer3_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif

		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time = GetPlayerVar( $teamplayer4_id, 3923 )
			if $player4_time == $today_time
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer4_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer4_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer4_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time = GetPlayerVar( $teamplayer5_id, 3923 )
			if $player5_time == $today_time
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer5_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer5_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer5_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time = GetPlayerVar( $teamplayer6_id, 3923 )
			if $player6_time == $today_time
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "dialogbox", "player", -1, "Your party member ",#name,"You have already entered the Fallen Darkness Instance today." )
					return
			endif

			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			$total_leve = $total_leve + $temp_level

			$temp_fieldlevel = GetFieldLevel( $teamplayer6_id )
			$temp_fieldlevel = $temp_fieldlevel + 1
			$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			if $temp_level < 30
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 30 or above." )
				return
			endif

			$is_status =  IsExistStatus( $teamplayer6_id, 10699 )
			if $is_status == 0
				#name = GetPlayerInfo( $teamplayer6_id, "name")
				BC( "chat", "player", -1, #name ,"Unable to enter Fallen Darkness Portal." )
				$foul_playernumber = $foul_playernumber + 1
			endif
		endif

		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Some of your pary members can not enter." )
			return
		endif

		//------------------------------------------------------------------------------------------
		$monster_level = $total_leve / $team_count
		if $total_fieldlevel > $team_count
			$monster_fieldlevel = $total_fieldlevel / $team_count
			if $monster_level < 120
				$monster_level = 120
			endif
		else
			$monster_fieldlevel = 0
		endif

		//????.?????
		$ectype_ID = GetEctypeID(-1,166)
		//?????,???
		if $ectype_ID > 0
			ReleaseEctype(-1,166)
		endif

		$today_time = GetSystemTime( "yday" )
		$is_succeed = FlyToEctype($team_headerID ,166 ,70 ,95)

		if $is_succeed > 0
			SetPlayerActLog($team_headerID,11,0)
			//????ID
			$ectype_ID = GetEctypeID($team_headerID ,166)
			StartEctypeTimer($ectype_ID ,0)
			StartEctypeTimer($ectype_ID ,8)
			SetPlayerVar( $team_headerID, 3923, $today_time )
			SetPlayerVar( $team_headerID, 3814, $is_succeed )
			//??????
			SetEctypeVar($ectype_ID , 110, $monster_level)
			SetEctypeVar($ectype_ID , 90, $monster_fieldlevel)
			AddStatus( $team_headerID, 10699 , 1)
			DeleteNPC($npc_id)
			//????-START
			$TJ_join_number = GetGlobalVar(904)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(904 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif

		//---------------------------------------------------------------------------------------------
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				SetPlayerVar( $teamplayer1_id, 3923, $today_time )
				$is_succeed = FlyToEctype($teamplayer1_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,11,0)
				endif
				SetPlayerVar( $teamplayer1_id, 3814, $is_succeed )
				AddStatus($teamplayer1_id , 10699 , 1)
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				SetPlayerVar( $teamplayer2_id, 3923, $today_time )
				$is_succeed = FlyToEctype($teamplayer2_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,11,0)
				endif
				AddStatus($teamplayer2_id , 10699 , 1)
				SetPlayerVar( $teamplayer2_id, 3814, $is_succeed )
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$is_succeed = FlyToEctype($teamplayer3_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,11,0)
				endif
				SetPlayerVar( $teamplayer3_id, 3923, $today_time )
				AddStatus($teamplayer3_id , 10699 , 1)
				SetPlayerVar( $teamplayer3_id, 3814, $is_succeed )
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$is_succeed = FlyToEctype($teamplayer4_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,11,0)
				endif
				SetPlayerVar( $teamplayer4_id, 3923, $today_time )
				AddStatus($teamplayer4_id , 10699 , 1)
				SetPlayerVar( $teamplayer4_id, 3814, $is_succeed )
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$is_succeed = FlyToEctype($teamplayer5_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,11,0)
				endif
				SetPlayerVar( $teamplayer5_id, 3923, $today_time )
				AddStatus($teamplayer5_id , 10699 , 1)
				SetPlayerVar( $teamplayer5_id, 3814, $is_succeed )
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$is_succeed = FlyToEctype($teamplayer6_id ,166 ,70 ,95)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,11,0)
				endif
				SetPlayerVar( $teamplayer6_id, 3923, $today_time )
				AddStatus($teamplayer6_id , 10699 , 1)
				SetPlayerVar( $teamplayer6_id, 3814, $is_succeed )
			endif
		endif
		//---------------------
		//??????????????????,??????????
		$is_complete = 1
	}

		//???????????
	function OnOption1(){

		$ectype_ID = GetEctypeID( -1, 166 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 166 )
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3923 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 30
			BC( "dialogbox", "player", -1, "Your LV is lower than 30. Unable to move in!" )
			return
		endif

		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif

		$Player_UID = GetPlayerVar( -1, 3814 )
		if $Player_UID != $ectype_UID
			if $player_time == $today_time
				BC( "dialogbox", "player", -1, "You have already entered the Fallen Darkness Instance today. Can't enter again today." )
				return
			endif
		endif

		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 166, 70, 95 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3814 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "dialogbox", "player", -1, "You have returned to the Fallen Darkness Instance." )
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You have entered a new Fallen Darkness Instance." )
					SetPlayerActLog(-1,11,0)
					SetPlayerVar( -1, 3814, $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3923, $today_time )
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif

	}

	//??????????????
	function OnOption2(){

		//????return
		$num = GetPlayerInfo( -1, "item", 44082 )
		if $num <= 0
			return
		endif

		$is_complete = 0
		//????????,??????,?option0?????is_complete???1
		call OnOption0()

		if $is_complete == 1
			SubPlayerInfo( -1, "item", 44082 ,1)
			BC( "chat", "player",-1 ,"You used a Chrono Hourglass and successfully entered." )
		else

		endif

	}

		//??????????????
	function OnOption3(){

		//????return
		$num = GetPlayerVar( -1, 4038 )
		if $num <= 0
			return
		endif

		$is_complete = 0
		//????????,??????,?option0?????is_complete???1
		call OnOption0()

		if $is_complete == 1
			$num = $num - 1
			SetPlayerVar( -1, 4038, $num )
			BC( "chat", "player",-1 ,"You used a special VIP privilege! Privileges left:",$num," sec." )
		else

		endif

	}
