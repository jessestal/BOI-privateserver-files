	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/22
	//		Author:???
	//		TaskName:Ectype-Pyramid-Npc-1981.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		
		//?????????????
		
		$ectype_ID = GetEctypeID( -1 ,232 )
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
		
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
				DisableNpcOption(6)
				DisableNpcOption(7)
			endif
		endif
		
	}
	
	function OnOption0(){
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				BC( "dialogbox", "player", -1, "Only Realm 7 and 8 can be entered." )
				return
			endif
		endif
		
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
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3404 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif		
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3404 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3404 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3404 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3404 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3404 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"Members of your party have already entered the Giza Pyramid 3 times." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 232, 51, 76 )		
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,36,1)
			SetPlayerVar( $team_headerID , 3806 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3764 )
			BC( "screen", "player", $team_headerID, "You entered a new Giza Pyramid." )
			if $player_time != $today_time		
				SetPlayerVar( $team_headerID, 3764, $today_time )
				SetPlayerVar( $team_headerID, 3404, 1 )
				BC( "chat", "player", $team_headerID, "Already entered Giza Pyramid Instance today: Once" )
				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 232 )
				StartEctypeTimer( $team_headerID , 232, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 4, 0 )
			else
				$player_number =  GetPlayerVar( $team_headerID , 3404 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3404, $player_number )
				BC( "chat", "player", $team_headerID, "Already entered Giza Pyramid Instance today:",$player_number,"times" )			
				$ectype_ID = GetEctypeID( $team_headerID, 232 )
				//???????,0?
				StartEctypeTimer( $team_headerID, 232, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 4, 0 )
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(967)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(967 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,36,1)
					SetPlayerVar( $teamplayer1_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3764 )
					BC( "screen", "player", $teamplayer1_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer1_id, 3404 ,1 )	
						BC( "chat", "player", $teamplayer1_id, "Already entered Giza Pyramid Instance today: Once" )			
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer1_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
				$is_succeed = FlyToEctype( $teamplayer2_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,36,1)
					SetPlayerVar( $teamplayer2_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3764 )
					BC( "screen", "player", $teamplayer2_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer2_id, 3404 ,1 )	
						BC( "chat", "player", $teamplayer2_id, "Already entered Giza Pyramid Instance today: Once" )			
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer2_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
				$is_succeed = FlyToEctype( $teamplayer3_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,36,1)
					SetPlayerVar( $teamplayer3_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3764 )
					BC( "screen", "player", $teamplayer3_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer3_id, 3404 ,1 )
						BC( "chat", "player", $teamplayer3_id, "Already entered Giza Pyramid Instance today: Once" )		
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer3_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
				$is_succeed = FlyToEctype( $teamplayer4_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,36,1)
					SetPlayerVar( $teamplayer4_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3764 )
					BC( "screen", "player", $teamplayer4_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer4_id, 3404 ,1 )	
						BC( "chat", "player", $teamplayer4_id, "Already entered Giza Pyramid Instance today: Once" )	
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer4_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
				$is_succeed = FlyToEctype( $teamplayer5_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,36,1)
					SetPlayerVar( $teamplayer5_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3764 )
					BC( "screen", "player", $teamplayer5_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer5_id, 3404 ,1 )	
						BC( "chat", "player", $teamplayer5_id, "Already entered Giza Pyramid Instance today: Once" )			
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer5_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
				$is_succeed = FlyToEctype( $teamplayer6_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,36,1)
					SetPlayerVar( $teamplayer6_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3764 )
					BC( "screen", "player", $teamplayer6_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer6_id, 3404 ,1 )	
						BC( "chat", "player", $teamplayer6_id, "Already entered Giza Pyramid Instance today: Once" )				
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3404 ,$player_number )
						BC( "chat", "player", $teamplayer6_id, "Already entered Giza Pyramid Instance today:",$player_number,"times" )
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
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				BC( "dialogbox", "player", -1, "Only Realm 7 and 8 can be entered." )
				return
			endif
		endif
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$team_count = GetTeamMemberCount( -1 )
		//????????
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Your party members are less than 3." )
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
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3404 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif		
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3404 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3404 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3404 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3404 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3764 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 65
				BC( "dialogbox", "player", -1, "Unable to enter. All party members must be level 65 or above." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3404 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Giza Pyramid 3 times today." )
					$Stop = $Stop + 1
				endif
			endif
		endif
		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"Members of your party have already entered the Giza Pyramid 3 times." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 232, 51, 76 )		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3806 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3764 )
			BC( "screen", "player", $team_headerID, "You entered a new Giza Pyramid." )
			if $player_time != $today_time		
				SetPlayerVar( $team_headerID, 3764, $today_time )
				SetPlayerVar( $team_headerID, 3404, 1 )	
				//????ID
				$ectype_ID = GetEctypeID( $team_headerID, 232 )
				StartEctypeTimer( $team_headerID , 232, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 4, 1 )
			else
				$player_number =  GetPlayerVar( $team_headerID , 3404 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3404, $player_number )				
				$ectype_ID = GetEctypeID( $team_headerID, 232 )
				//???????,0?
				StartEctypeTimer( $team_headerID, 232, 0 )
				//??????
				SetEctypeVar( $ectype_ID, 4, 1 )
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(934)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(934 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,36,2)
					SetPlayerVar( $teamplayer1_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3764 )
					BC( "screen", "player", $teamplayer1_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3404 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3404 ,$player_number )
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
				$is_succeed = FlyToEctype( $teamplayer2_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,36,2)
					SetPlayerVar( $teamplayer2_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3764 )
					BC( "screen", "player", $teamplayer2_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3404 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3404 ,$player_number )
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
				$is_succeed = FlyToEctype( $teamplayer3_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,36,2)
					SetPlayerVar( $teamplayer3_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3764 )
					BC( "screen", "player", $teamplayer3_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3404 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3404 ,$player_number )
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
				$is_succeed = FlyToEctype( $teamplayer4_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,36,2)
					SetPlayerVar( $teamplayer4_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3764 )
					BC( "screen", "player", $teamplayer4_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3404 ,1 )		
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3404 ,$player_number )
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
				$is_succeed = FlyToEctype( $teamplayer5_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,36,2)
					SetPlayerVar( $teamplayer5_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3764 )
					BC( "screen", "player", $teamplayer5_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3404 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3404 ,$player_number )
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
				$is_succeed = FlyToEctype( $teamplayer6_id, 232, 51, 76 )
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,36,2)
					SetPlayerVar( $teamplayer6_id , 3806 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3764 )
					BC( "screen", "player", $teamplayer6_id, "You entered a new Giza Pyramid." )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 3764 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3404 ,1 )					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3404 ,$player_number )
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
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				BC( "dialogbox", "player", -1, "Only Realm 7 and 8 can be entered." )
				return
			endif
		endif
			
		$ectype_ID = GetEctypeID( -1, 232 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 232 )
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3764 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 65
			BC( "dialogbox", "player", -1, "You have not reached LV40. Unable to move in!" )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif
		
		$Player_UID = GetPlayerVar( -1, 3806 )
		if $Player_UID != $ectype_UID
			if $player_time == $today_time
				$player_number =  GetPlayerVar( -1, 3404 )
				if $player_number >= 3
					BC( "dialogbox", "player", -1, "You have already entered Giza Pyramid 3 times today. Unable to enter." )
					return
				endif
			endif
		endif
				
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 232, 51, 76 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3806 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "dialogbox", "player", -1, "You return to Giza Pyramid. Please retrace your steps to the room you left." )
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You entered a new Giza Pyramid!" )
					$hard = GetEctypeVar( $ectype_ID, 4)
					if $hard == 0
						SetPlayerActLog(-1,36,1)
					endif
					if $hard == 1
						SetPlayerActLog(-1,36,2)
					endif
					SetPlayerVar( -1 , 3806 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3764 ,$today_time )
						SetPlayerVar( -1 , 3404, 1 )
					else
						$player_number =  GetPlayerVar( -1 , 3404 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3404, $player_number )
					endif
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}

	function OnOption3(){
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				BC( "dialogbox", "player", -1, "Only Realm 7 and 8 can be reset." )
				return
			endif
		endif
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 ,232 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1, 232 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "Giza Pyramid has been reset." )
			BC( "dialogbox", "player", -1, "Giza Pyramid has been reset." )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}
	
//	function OnOption4(){
//		//??????
//		$Line = GetServerLineID()
//		if $Line != 8
//			if $Line != 7
//				BC( "dialogbox", "player", -1, "GUID:04190000099" )
//				return
//			endif
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04190000100" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 50036 )
//		if $item < 30
//			BC( "dialogbox", "player", -1, "GUID:04190000101" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 50036, 30 )
//		if $Sub != 0
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 50027, 1 )
//		return
//	}
//	
//	function OnOption5(){
//		//??????
//		$Line = GetServerLineID()
//		if $Line != 8
//			if $Line != 7
//				BC( "dialogbox", "player", -1, "GUID:04190000102" )
//				return
//			endif
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04190000103" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 50036 )
//		if $item < 30
//			BC( "dialogbox", "player", -1, "GUID:04190000104" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 50036, 30 )
//		if $Sub != 0
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 50028, 1 )
//		return
//	}	
//	
//	function OnOption6(){
//		//??????
//		$Line = GetServerLineID()
//		if $Line != 8
//			if $Line != 7
//				BC( "dialogbox", "player", -1, "GUID:04190000105" )
//				return
//			endif
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04190000106" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 50036 )
//		if $item < 30
//			BC( "dialogbox", "player", -1, "GUID:04190000107" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 50036, 30 )
//		if $Sub != 0
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 50029, 1 )
//		return
//	}
//	
//	function OnOption7(){
//		//??????
//		$Line = GetServerLineID()
//		if $Line != 8
//			if $Line != 7
//				BC( "dialogbox", "player", -1, "GUID:04190000108" )
//				return
//			endif
//		endif
//		
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "dialogbox", "player", -1, "GUID:04190000109" )
//			return
//		endif
//		
//		$item = GetPlayerInfo( -1, "item", 50036 )
//		if $item < 30
//			BC( "dialogbox", "player", -1, "GUID:04190000110" )
//			return
//		endif
//		
//		$Sub = SubPlayerInfo( -1, "item", 50036, 30 )
//		if $Sub != 0
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 50030, 1 )
//		return
//		
//	}