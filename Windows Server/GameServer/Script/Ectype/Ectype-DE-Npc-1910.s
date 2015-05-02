	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/22
	//		Author:???
	//		TaskName:Ectype-DE-Npc-1910.s
	//		TaskID:?????
	//
	//****************************************
	//
	function OnRequest(){
		
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
		DisableNpcOption(8)
		DisableNpcOption(9)
		//?????????????
		
		$ectype_ID = GetEctypeID( -1 ,226 )
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
		
		//??????
		$Line = GetServerLineID()
		if $Line != 1
			if $Line != 2
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
				DisableNpcOption(8)
				DisableNpcOption(9)
			endif
		endif
		
		$object = GetPlayerInfo( -1, "profession" )
		if $object != 2
			if $object != 5
				if $object != 6
					DisableNpcOption(9)
				endif
			endif
		endif
		
	}
	
	//????
	function OnOption0(){
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 2
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Please form a party." )
				return
			endif
		else
			$team_headerID = GetTeamHeaderID(-1)
			$player_id = GetPlayerID()
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
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
		$Stop = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3401 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3401 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3401 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3401 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3401 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3401 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"One or more members of your party have already entered the Dragon Emperor's Crypt 3 times." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 226, 65, 78 )
		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3804 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3761 )
			BC( "screen", "player", $team_headerID, "You have entered a new Dragon Emperor's Crypt." )
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3761 ,$today_time )
				SetPlayerVar( $team_headerID , 3401 ,1 )
				BC( "chat", "player", $team_headerID, "Already entered Dragon Emperor's Crypt today: Once" )
				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 226 )
				StartEctypeTimer( $team_headerID , 226, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 7, 0 )
			else
				$player_number =  GetPlayerVar( $team_headerID , 3401 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3401, $player_number )
				BC( "chat", "player", $team_headerID, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
				
				$ectype_ID = GetEctypeID( $team_headerID, 226 )
				//???????,0?
				StartEctypeTimer( $team_headerID, 226, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 7, 0 )
			endif
			//??-START
			$TJ_join_number = GetGlobalVar(966)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(966 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3761 )
					BC( "screen", "player", $teamplayer1_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer1_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer1_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer1_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer2_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer2_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3761 )
					BC( "screen", "player", $teamplayer2_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer2_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer2_id, "Already entered Dragon Emperor's Crypt today: Once" )	
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer2_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID			
				$is_succeed = FlyToEctype( $teamplayer3_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer3_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3761 )
					BC( "screen", "player", $teamplayer3_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer3_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer3_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer3_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer4_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer4_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3761 )
					BC( "screen", "player", $teamplayer4_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer4_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer4_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer4_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer5_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer5_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3761 )
					BC( "screen", "player", $teamplayer5_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer5_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer5_id, "Already entered Dragon Emperor's Crypt today: Once" )		
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer5_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer6_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer6_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3761 )
					BC( "screen", "player", $teamplayer6_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer6_id, 3401 ,1 )
						BC( "chat", "player", $teamplayer6_id, "Already entered Dragon Emperor's Crypt today: Once" )					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer6_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
			
	}
	
	//??????
	function OnOption1(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 2
			BC( "dialogbox", "player", -1, "Your Party has less than 2 members." )
			return
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
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
		$Stop = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3401 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3401 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3401 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3401 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3401 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3761 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 40
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 40 or above." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3401 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Dragon Emperor's Crypt 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"One or more members of your party have already entered the Dragon Emperor's Crypt 3 times." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 226, 65, 78 )
		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3804 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3761 )
			BC( "screen", "player", $team_headerID, "You have entered a new Dragon Emperor's Crypt." )
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3761 ,$today_time )
				SetPlayerVar( $team_headerID , 3401 ,1 )
				BC( "chat", "player", $team_headerID, "Already entered Dragon Emperor's Crypt today: Once" )
				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 226 )
				StartEctypeTimer( $team_headerID , 226, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 7, 1 )
			else
				$player_number =  GetPlayerVar( $team_headerID , 3401 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3401, $player_number )
				BC( "chat", "player", $team_headerID, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
				$ectype_ID = GetEctypeID( $team_headerID, 226 )
				//???????,0?
				StartEctypeTimer( $team_headerID, 226, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 7, 1 )
			endif
			//??-START
			$TJ_join_number = GetGlobalVar(932)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(932 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3761 )
					BC( "screen", "player", $teamplayer1_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer1_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer1_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer2_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer2_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3761 )
					BC( "screen", "player", $teamplayer2_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer2_id, "Already entered Dragon Emperor's Crypt today: Once" )		
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer2_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID			
				$is_succeed = FlyToEctype( $teamplayer3_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer3_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3761 )
					BC( "screen", "player", $teamplayer3_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer3_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer3_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer4_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer4_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3761 )
					BC( "screen", "player", $teamplayer4_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer4_id, "Already entered Dragon Emperor's Crypt today: Once" )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer4_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer5_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer5_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3761 )
					BC( "screen", "player", $teamplayer5_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer5_id, "Already entered Dragon Emperor's Crypt today: Once" )			
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer5_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer6_id, 226, 65, 78 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer6_id , 3804 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3761 )
					BC( "screen", "player", $teamplayer6_id, "You have entered a new Dragon Emperor's Crypt." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 3761 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3401 ,1 )
						BC( "chat", "player", $teamplayer6_id, "Already entered Dragon Emperor's Crypt today: Once" )					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3401 ,$player_number )
						BC( "chat", "player", $teamplayer6_id, "Already entered Dragon Emperor's Crypt today:",$player_number,"times" )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
			
	}
	
	//???????????
	function OnOption2(){
		
		$ectype_ID = GetEctypeID( -1, 226 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 226 )
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3761 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 40
			BC( "dialogbox", "player", -1, "You have not reached LV40. Unable to enter!" )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif
		
		$Player_UID = GetPlayerVar( -1, 3804 )
		if $Player_UID != $ectype_UID
			if $player_time == $today_time
				$player_number =  GetPlayerVar( -1, 3401 )
				if $player_number >= 3
					BC( "dialogbox", "player", -1, "You have already entered the Dragon Emperor's Crypt 3 times. Unable to enter again." )
					return
				endif
			endif
		endif
				
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 226, 65, 78 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3804 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You've returned to the Dragon Emperor's Crypt." )
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You have entered a new Dragon Emperor's Crypt." )
					SetPlayerVar( -1 , 3804 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3761 ,$today_time )
						SetPlayerVar( -1 , 3401 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3401 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3401 ,$player_number )
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}

	function OnOption3(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 ,226 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1,226 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "The Dragon Emperor's Crypt has been reset." )
			BC( "dialogbox", "player", -1, "The Dragon Emperor's Crypt has been reset." )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
		
	}
	
//	function OnOption4(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000116" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 10
//			BC( "dialogbox", "player", -1, "GUID:04138000117" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 10 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 1
//			AddPlayerInfo( -1, "item", 19808, 1 )
//			return
//		endif
//		if $object == 2
//			AddPlayerInfo( -1, "item", 19828, 1 )
//			return
//		endif
//		if $object == 3
//			AddPlayerInfo( -1, "item", 19848, 1 )
//			return
//		endif
//		if $object == 4
//			AddPlayerInfo( -1, "item", 19868, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 19888, 1 )
//			return
//		endif
//	}
//	
//	function OnOption5(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000118" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 6
//			BC( "dialogbox", "player", -1, "GUID:04138000119" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 6 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 1
//			AddPlayerInfo( -1, "item", 38305, 1 )
//			return
//		endif
//		if $object == 2
//			AddPlayerInfo( -1, "item", 38325, 1 )
//			return
//		endif
//		if $object == 3
//			AddPlayerInfo( -1, "item", 38345, 1 )
//			return
//		endif
//		if $object == 4
//			AddPlayerInfo( -1, "item", 38365, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 38385, 1 )
//			return
//		endif
//	}	
//	
//	function OnOption6(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000120" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 5
//			BC( "dialogbox", "player", -1, "GUID:04138000121" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 5 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 1
//			AddPlayerInfo( -1, "item", 38205, 1 )
//			return
//		endif
//		if $object == 2
//			AddPlayerInfo( -1, "item", 38225, 1 )
//			return
//		endif
//		if $object == 3
//			AddPlayerInfo( -1, "item", 38245, 1 )
//			return
//		endif
//		if $object == 4
//			AddPlayerInfo( -1, "item", 38265, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 38285, 1 )
//			return
//		endif
//	}
//	
//	function OnOption7(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000122" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 5
//			BC( "dialogbox", "player", -1, "GUID:04138000123" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 5 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 1
//			AddPlayerInfo( -1, "item", 38505, 1 )
//			return
//		endif
//		if $object == 2
//			AddPlayerInfo( -1, "item", 38525, 1 )
//			return
//		endif
//		if $object == 3
//			AddPlayerInfo( -1, "item", 38545, 1 )
//			return
//		endif
//		if $object == 4
//			AddPlayerInfo( -1, "item", 38565, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 38585, 1 )
//			return
//		endif
//	}
//	
//	function OnOption8(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000124" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 3
//			BC( "dialogbox", "player", -1, "GUID:04138000125" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 3 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 1
//			AddPlayerInfo( -1, "item", 38705, 1 )
//			return
//		endif
//		if $object == 2
//			AddPlayerInfo( -1, "item", 38725, 1 )
//			return
//		endif
//		if $object == 3
//			AddPlayerInfo( -1, "item", 38745, 1 )
//			return
//		endif
//		if $object == 4
//			AddPlayerInfo( -1, "item", 38765, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 38785, 1 )
//			return
//		endif
//	}
//	
//	function OnOption9(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04138000126" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 12645 )
//		if $item < 2
//			BC( "dialogbox", "player", -1, "GUID:04138000127" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 12645, 2 )
//		if $Sub != 0
//			return
//		endif
//		
//		$object = GetPlayerInfo( -1, "profession" )
//		if $object == 2
//			AddPlayerInfo( -1, "item", 38925, 1 )
//			return
//		endif
//		if $object == 5
//			AddPlayerInfo( -1, "item", 38985, 1 )
//			return
//		endif
//	}
	
	function OnOption10(){
	
		$null = GetPlayerInfo( -1, "nullitem", 0 )
		if $null < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 64230 )
		if $Item0 < 20
			BC( "dialogbox", "player", -1, "You don't have 20 Soul Shards." )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 64230 , 20)
		$n = RandomNumber(1 , 5)
		if $revalue == 0
			if $n == 1
				AddPlayerInfo(-1 , "item" , 63218 , 1)
			endif
			if $n == 2
				AddPlayerInfo(-1 , "item" , 63219 , 1)
			endif
			if $n == 3
				AddPlayerInfo(-1 , "item" , 63220 , 1)
			endif
			if $n == 4
				AddPlayerInfo(-1 , "item" , 63221 , 1)
			endif
			if $n == 5
				AddPlayerInfo(-1 , "item" , 63222 , 1)
			endif
			BC( "dialogbox", "player", -1, "Exchange succeeds!" )
		endif
		
	}