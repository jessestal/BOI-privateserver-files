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
	function OnRequest(){
		
		//?????????????
		
		$ectype_ID = GetEctypeID(-1 ,222)
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif

	}
	
	//??????
	function OnOption0(){
		
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
		if $team_count < 1
			BC( "chat", "player", -1, "Your party should have more than 3 members!" )
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
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3760 )
			//????????????????,???
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3400 )
				if $player1_number >= 3
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3760 )
			//????????????????,???
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3400 )
				if $player2_number >= 3
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3760 )
			//????????????????,???
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3400 )
				if $player3_number >= 3
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3760 )
			//????????????????,???
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3400 )
				if $player4_number >= 3
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3760 )
			//????????????????,???
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3400 )
				if $player5_number >= 3
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3760 )
			//????????????????,???
			if $player6_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer6_id, 3400 )
				if $player6_number >= 3
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "dialogbox", "player", -1, #name ,"You have entered the Specter Island Instance 3 times today. You can not enter again." )
					return
				endif
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype($team_headerID ,222 ,79 ,88)
		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3801 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3760 )
			BC( "screen", "player", $team_headerID, "You have entered a new Specter Island Instance." )
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3760 ,$today_time )
				SetPlayerVar( $team_headerID , 3400 ,1 )
	
				//???????,0?
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($team_headerID , 0, 0)
			else
				$player_number =  GetPlayerVar( $team_headerID , 3400 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID , 3400 ,$player_number )
				
				//???????,0?
				StartEctypeTimer($team_headerID , 222 ,0)
				//??????
				SetEctypeVar($team_headerID , 0, 0)
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3760 )
					BC( "screen", "player", $teamplayer1_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer1_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3400 ,$player_number )
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
					SetPlayerVar( $teamplayer2_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3760 )
					BC( "screen", "player", $teamplayer2_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer2_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3400 ,$player_number )
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
					SetPlayerVar( $teamplayer3_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3760 )
					BC( "screen", "player", $teamplayer3_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer3_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3400 ,$player_number )
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
					SetPlayerVar( $teamplayer4_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3760 )
					BC( "screen", "player", $teamplayer4_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer4_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3400 ,$player_number )
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
					SetPlayerVar( $teamplayer5_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3760 )
					BC( "screen", "player", $teamplayer5_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer5_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3400 ,$player_number )
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
					SetPlayerVar( $teamplayer6_id , 3801 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3760 )
					BC( "screen", "player", $teamplayer6_id, "You have entered a new Specter Island Instance." )
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer6_id, 3760 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3400 ,1 )
			
					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3400 ,$player_number )
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
		if $team_count < 1
			BC( "chat", "player", -1, "Your party should have more than 3 members!" )
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
		
		$revalue = SubPlayerInfo ( -1 , "item" ,63424 ,1)
		
		if $revalue != 0 
			$revalue = SubPlayerInfo ( -1 , "item" ,63423 ,1)
			if $revalue != 0
				BC( "dialogbox", "player", -1, "Proof of Hero deletion failure." )
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
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			
			
				$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
	
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			
				$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
	
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			
				$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
	
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			
				$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			
				$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			
				$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
				if $temp_level < 50
					//??????50???,????
					BC( "dialogbox", "player", -1, "Unable to move in. Your party member's LV is lower than 50." )
					return
				endif
			
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype($team_headerID ,222 ,79 ,88)
		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3801 , $is_succeed )
			BC( "screen", "player", $team_headerID, "You have entered a new Specter Island Instance." )

			//???????,0?
			StartEctypeTimer($team_headerID , 222 ,0)
			//??????
			SetEctypeVar($team_headerID , 0, 1)
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,222 ,79 ,88)
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3801 , $is_succeed )
					
					BC( "screen", "player", $teamplayer1_id, "You have entered a new Specter Island Instance." )

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
					SetPlayerVar( $teamplayer2_id , 3801 , $is_succeed )
			
					BC( "screen", "player", $teamplayer2_id, "You have entered a new Specter Island Instance." )
				
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
					SetPlayerVar( $teamplayer3_id , 3801 , $is_succeed )
					
					BC( "screen", "player", $teamplayer3_id, "You have entered a new Specter Island Instance." )
					
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
					SetPlayerVar( $teamplayer4_id , 3801 , $is_succeed )
					
					BC( "screen", "player", $teamplayer4_id, "You have entered a new Specter Island Instance." )
					
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
					SetPlayerVar( $teamplayer5_id , 3801 , $is_succeed )
					
					BC( "screen", "player", $teamplayer5_id, "You have entered a new Specter Island Instance." )
					
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
					SetPlayerVar( $teamplayer6_id , 3801 , $is_succeed )
					
					BC( "screen", "player", $teamplayer6_id, "You have entered a new Specter Island Instance." )
					
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//---------------------
		
		
		
	}
	
	//???????????
	function OnOption2(){
		
		$ectype_ID = GetEctypeID(-1 ,222)
		//????ID
		$ectype_UID = GetEctypeUniqueID(-1 ,222)
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3760 )
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
							BC( "dialogbox", "player", -1, "You have entered the Specter Island Instance 3 times today. You can not enter again." )
							return
						endif
					else
						//????????????
					endif
				endif
			else
			//????,??
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
			if $ectype_type == 0
				$Player_UID = GetPlayerVar( -1, 3801 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You have returned to the Specter Island Instance." )
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You have entered a new Specter Island Instance." )
					SetPlayerVar( -1 , 3801 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3760 ,$today_time )
						SetPlayerVar( -1 , 3400 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3400 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3400 ,$player_number )
					endif
				endif
			else
				//???????
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