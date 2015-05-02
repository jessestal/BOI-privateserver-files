	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/03
	//		Author:??
	//		TaskName:Ectype-Npc-kuloudaoenter1903.s
	//		TaskID:???????
	//
	//****************************************
	//
	//?????3767 3406
	function OnRequest(){
		
		//?????????????
		
		$ectype_ID = GetEctypeID(-1 ,222)
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		
		//??????
		$Line = GetServerLineID()
		if $Line != 3
			if $Line != 4
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
			endif
		endif
		
	}
	
	//??????
	function OnOption0(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader. If you are not in a party, please form one." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		//????????
		//???1
		//if $team_count < 3
		//	BC( "dialogbox", "player", -1, "Your party should have more than 3 members!" )
		//	return
		//endif
		
		$size = GetTeamAreaSize(-1)
		
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
		//-----------------------------
		//????????????3????
		$foul_playernumber = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3400 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3400 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 50
					//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3400 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3400 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3400 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3400 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"You or one of your party members has entered the Specter Island Instance three times today. Unable to enter again today." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype($team_headerID ,222 ,79 ,88)
		
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,34,1)
			SetPlayerVar( $team_headerID , 3801 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3760 )
			
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3760 ,$today_time )
				SetPlayerVar( $team_headerID , 3400 ,1 )
			
				BC( "screen", "player", $team_headerID, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
				//????ID
				$ectype_ID = GetEctypeID($team_headerID ,222)
			
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 2)
			else
				$player_number =  GetPlayerVar( $team_headerID , 3400 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID , 3400 ,$player_number )
				
				$temp_number = 3 - $player_number
				BC( "screen", "player", $team_headerID, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
				
				$ectype_ID = GetEctypeID($team_headerID ,222)
				//???????,0?
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 2)
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(964)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(964 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,34,1)
					SetPlayerVar( $teamplayer1_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer1_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3400 ,1 )
						
						BC( "screen", "player", $teamplayer1_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3400 ,$player_number )
						
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer1_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
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
			
				$is_succeed = FlyToEctype($teamplayer2_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,34,1)
					SetPlayerVar( $teamplayer2_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer2_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer2_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer2_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
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
			
				$is_succeed = FlyToEctype($teamplayer3_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,34,1)
					SetPlayerVar( $teamplayer3_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3760 )
				
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer3_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer3_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer3_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
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
			
				$is_succeed = FlyToEctype($teamplayer4_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,34,1)
					SetPlayerVar( $teamplayer4_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer4_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer4_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer4_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
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
			
				$is_succeed = FlyToEctype($teamplayer5_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,34,1)
					SetPlayerVar( $teamplayer5_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer5_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3400 ,1 )
						BC( "screen", "player", $teamplayer5_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer5_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
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
			
				$is_succeed = FlyToEctype($teamplayer6_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,34,1)
					SetPlayerVar( $teamplayer6_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer6_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3400 ,1 )
						BC( "screen", "player", $teamplayer6_id, "You have entered a new Specter Island Instance. You can enter it 2 more times today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer6_id, "You have entered a new Specter Island Instance. You can enter it ", $temp_number," more times today." )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//---------------------
		
		
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
		//???1
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Your party should have more than 3 members!" )
			return
		endif
		
		$size = GetTeamAreaSize(-1)
		
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
		//-----------------------------
		//????????????3????
		$foul_playernumber = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3400 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3400 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 50
					//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3400 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3400 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3400 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3760 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3400 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Some of your pary members have raided Specter Island (Normal) for 3 times. Unable to move in." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype($team_headerID ,222 ,79 ,88)
		
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,34,2)
			SetPlayerVar( $team_headerID , 3801 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3760 )
			
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3760 ,$today_time )
				SetPlayerVar( $team_headerID , 3400 ,1 )
			
				BC( "screen", "player", $team_headerID, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
				//????ID
				$ectype_ID = GetEctypeID($team_headerID ,222)
			
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 0)
			else
				$player_number =  GetPlayerVar( $team_headerID , 3400 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID , 3400 ,$player_number )
				
				$temp_number = 3 - $player_number
				BC( "screen", "player", $team_headerID, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
				
				$ectype_ID = GetEctypeID($team_headerID ,222)
				//???????,0?
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 0)
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(928)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(928 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,34,2)
					SetPlayerVar( $teamplayer1_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer1_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3400 ,1 )
						
						BC( "screen", "player", $teamplayer1_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3400 ,$player_number )
						
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer1_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer2_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,34,2)
					SetPlayerVar( $teamplayer2_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer2_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer2_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer2_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer3_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,34,2)
					SetPlayerVar( $teamplayer3_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3760 )
				
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer3_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer3_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer3_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer4_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,34,2)
					SetPlayerVar( $teamplayer4_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer4_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3400 ,1 )
			
						BC( "screen", "player", $teamplayer4_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer4_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer5_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,34,2)
					SetPlayerVar( $teamplayer5_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer5_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3400 ,1 )
						BC( "screen", "player", $teamplayer5_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer5_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer6_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,34,2)
					SetPlayerVar( $teamplayer6_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3760 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer6_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3400 ,1 )
						BC( "screen", "player", $teamplayer6_id, "You enter a new Specter Island (Normal)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3400 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer6_id, "You enter a new Specter Island (Normal)! You still have", $temp_number,"chances to enter it today." )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//---------------------
		
		
	}
	
	//??????
	function OnOption2(){
		
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
			BC( "dialogbox", "player", -1, "Your party member is too far away." )
			return
		endif
		
		
		//-------????
		$number_1 = GetPlayerInfo ( -1 , "item" ,63423 )
		$number_2 = GetPlayerInfo ( -1 , "item" ,63424 )
		
		if $number_1 < 1
			if $number_2 < 1
				BC( "dialogbox", "player", -1, "You are not carrying the Specter Island Elite Pass! The Elite Pass can be acquired from normal instance or purchased from The Marketplace!" )
				return
			endif
		endif
		
		
		
		//---------??????
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$today_time = GetSystemTime( "yday" )
		//-----------------------------
		//????????????3????
		$foul_playernumber = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3406 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3406 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 50
					//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3406 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3406 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3406 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3767 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 50
				//??????50???,????
				BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3406 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Specter Island (Elite) 3 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Some of your pary members have raided Specter Island (Elite) for 3 times. Unable to move in." )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype($team_headerID ,222 ,79 ,88)
		
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,34,3)
			SetPlayerVar( $team_headerID , 3801 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3767 )
			

			//??????
			$revalue = SubPlayerInfo ( -1 , "item" ,63424 ,1)
			if $revalue != 0 
				SubPlayerInfo ( -1 , "item" ,63423 ,1)
			endif
			//--------------------------------------------------------------
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3767 ,$today_time )
				SetPlayerVar( $team_headerID , 3406 ,1 )
			
				BC( "screen", "player", $team_headerID, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
				//????ID
				$ectype_ID = GetEctypeID($team_headerID ,222)
			
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 1)
			else
				$player_number =  GetPlayerVar( $team_headerID , 3406 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID , 3406 ,$player_number )
				
				$temp_number = 3 - $player_number
				BC( "screen", "player", $team_headerID, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
				
				$ectype_ID = GetEctypeID($team_headerID ,222)
				//???????,0?
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($ectype_ID , 0, 1)
			endif
			
			//????-START
			$TJ_join_number = GetGlobalVar(929)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(929 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,34,3)
					SetPlayerVar( $teamplayer1_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3767 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer1_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3406 ,1 )
						
						BC( "screen", "player", $teamplayer1_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3406 ,$player_number )
						
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer1_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer2_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,34,3)
					SetPlayerVar( $teamplayer2_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3767 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer2_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3406 ,1 )
			
						BC( "screen", "player", $teamplayer2_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3406 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer2_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer3_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,34,3)
					SetPlayerVar( $teamplayer3_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3767 )
				
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer3_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3406 ,1 )
			
						BC( "screen", "player", $teamplayer3_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3406 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer3_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer4_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,34,3)
					SetPlayerVar( $teamplayer4_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3767 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer4_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3406 ,1 )
			
						BC( "screen", "player", $teamplayer4_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3406 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer4_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer5_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,34,3)
					SetPlayerVar( $teamplayer5_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3767 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer5_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3406 ,1 )
						BC( "screen", "player", $teamplayer5_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3406 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer5_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
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
			
				$is_succeed = FlyToEctype($teamplayer6_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,34,3)
					SetPlayerVar( $teamplayer6_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3767 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer6_id, 3767 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3406 ,1 )
						BC( "screen", "player", $teamplayer6_id, "You enter a new Specter Island (Elite)! You still have 2 chances to enter it today." )
					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3406 ,$player_number )
						$temp_number = 3 - $player_number
						BC( "screen", "player", $teamplayer6_id, "You enter a new Specter Island (Elite)! You still have", $temp_number,"chances to enter it today." )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//---------------------
		
		
		
	}
	
	//???????????
	function OnOption3(){
		
		$ectype_ID = GetEctypeID(-1 ,222)
		//????ID
		$ectype_UID = GetEctypeUniqueID(-1 ,222)
		$today_time = GetSystemTime( "yday" )
		//$player_time =  GetPlayerVar( -1, 3760 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 50
			BC( "dialogbox", "player", -1, "Your LV is lower than 50. Unable to move in!" )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//?????????
			$ectype_type = GetEctypeVar($ectype_ID ,0)
			//??????,????????,????????????????????????,???.??,????+1,???,?????
			if $ectype_type == 0
				$player_time =  GetPlayerVar( -1, 3760 )
				$Player_UID = GetPlayerVar( -1, 3801 )
				//??????????????
				if $Player_UID == $ectype_UID
					//???????,?????
				else
					//??????????????
				//-----------------------------------------------------------------------------------
					if $player_time == $today_time
						$player_number =  GetPlayerVar( -1, 3400 )
						if $player_number >= 3
							BC( "dialogbox", "player", -1, "You have already entered Specter Island (Easy-Normal) 3 times today. Unable to enter." )
							return
						endif
					else
						//????????????
					endif
				endif
			else
				$Player_UID = GetPlayerVar( -1, 3801 )
				//??????????????
				$player_time =  GetPlayerVar( -1, 3767 )
				if $Player_UID == $ectype_UID
					//???????,?????
				else
					//??????????????
				//-----------------------------------------------------------------------------------
					if $player_time == $today_time
						$player_number =  GetPlayerVar( -1, 3406 )
						if $player_number >= 3
							BC( "dialogbox", "player", -1, "You have already entered Specter Island (Elite) 3 times today. Unable to enter." )
							return
						endif
					else
						//????????????
					endif
				endif
			endif
		else
			//???????,??
			return
		endif

		$is_succeed = FlyToEctype(-1 ,222 ,79 ,88)
		if $is_succeed > 0
			//??????
			$ectype_type = GetEctypeVar($ectype_ID ,0)
			//??????,????ID??,???????????????,??????+1
			//0?2????????????,??????CD??
			if $ectype_type != 1
				$Player_UID = GetPlayerVar( -1, 3801 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You have returned to the Specter Island Instance." )
				else
					//???????????????,????????????,?????????
		
					SetPlayerVar( -1 , 3801 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3760 ,$today_time )
						SetPlayerVar( -1 , 3400 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3400 ,$player_number )
					endif
					BC( "screen", "player", -1, "You have entered a new Specter Island Instance." )
					if $ectype_type == 0
						SetPlayerActLog(-1,34,2)
					endif
					if $ectype_type == 2
						SetPlayerActLog(-1,34,1)
					endif
				endif
			else
				$Player_UID = GetPlayerVar( -1, 3801 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You return to Specter Island (Elite)!" )
				else
					//???????????????,????????????,?????????
					
					SetPlayerVar( -1 , 3801 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3767 ,$today_time )
						SetPlayerVar( -1 , 3406 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3406 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3406 ,$player_number )
					endif
					BC( "screen", "player", -1, "You enter a new Specter Island (Elite)!" )
					SetPlayerActLog(-1,34,3)
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
	}

	function OnOption4(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif
		
		$ectype_ID = GetEctypeID(-1 ,222)
		
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype(-1,222)
		if $revalue == 0
			//????
			BC( "screen", "team", $team_headerID, "Specter Island has been reset!" )
			BC( "dialogbox", "player", -1, "Specter Island has been reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
	}