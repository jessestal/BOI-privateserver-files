	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/25
	//		Author:???
	//		TaskName:Ectype-jianyu-Npc-Enter-292.s
	//		TaskID:???? - ?????????
	//
	//****************************************
	//
	//OP0 ????  OP1 ????   OP2 ??????  OP3 ??  OP4 ??
	//3808 ?????????????ID    3756  ???????????    3398  ?????????
	function OnRequest(){
		
		//?????????????
		//???????ID 235
		$ectype_ID = GetEctypeID( -1 , 235 )
		if $ectype_ID > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
	}
	
	
	//????
	function OnOption0() {

		$team_headerID = GetTeamHeaderID(-1)
		//????????
		$player_id = GetPlayerID()
		
		
		//????ID?????,???
		if $team_headerID <= 0
			BC( "dialogbox", "player", -1 , "Only a Party can enter an instance. Please press the Party button (P) to open the party interface, select the Info tab, then click the Create Party button." )
			BC( "screen", "player", -1 , "Only a Party can enter an instance. Please press the Party button (P) to open the party interface, select the Info tab, then click the Create Party button." )
			return
		endif
		
		
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader. Only the leader can lead the party into the instance!" )
			return
		endif
		
	
		$size = GetTeamAreaSize(-1)
	
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some of your party members are too far away!" )
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
		//????????????5????
		$foul_playernumber = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$temp_level = GetPlayerInfo( $teamplayer1_id, "level" )
			if $temp_level < 20
				//??????20???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3756 )
			//????????????????,???
			if $player1_time == $today_time
				//?????????????,???????????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3398 )
				if $player1_number >= 5
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3756 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer2_id, "level" )
			if $temp_level < 20
				//??????20???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3398 )
				if $player2_number >= 5
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3756 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer3_id, "level" )
			if $temp_level < 20
					//??????30???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3398 )
				if $player3_number >= 5
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3756 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer4_id, "level" )
			if $temp_level < 20
				//??????20???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3398 )
				if $player4_number >= 5
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3756 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer5_id, "level" )
			if $temp_level < 20
				//??????20???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3398 )
				if $player5_number >= 5
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3756 )
			//????????????????,???
			$temp_level = GetPlayerInfo( $teamplayer6_id, "level" )
			if $temp_level < 20
				//??????20???,????
				BC( "dialogbox", "player", -1, "Unable to enter. Party members must be at least LV 20." )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3398 )
				if $player6_number >= 5
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ," has already entered Knight's Jail 5 times today." )
					$foul_playernumber = $foul_playernumber + 1
				endif
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox" , "player" , -1 , "" , $foul_playernumber , "One or more members of your party have entered Knight's Jail 5 times today. Unable to continue. " )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID , 235 , 72 , 74 )
		
		//????
		if $is_succeed > 0
			SetPlayerActLog($team_headerID,33,0)
			SetPlayerVar( $team_headerID , 3808 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID , 3756 )
			
			//???????????????????????+1
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3756 ,$today_time )
				SetPlayerVar( $team_headerID , 3398 ,1 )
			
				BC( "screen", "player", $team_headerID, "You have entered a new Knight's Jail! You can enter 4 more times today." )
				BC( "dialogbox", "player", $team_headerID, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
			
			else
				//???
				$player_number =  GetPlayerVar( $team_headerID , 3398 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID , 3398 ,$player_number )
				
				$temp_number = 5 - $player_number
				BC( "screen", "player", $team_headerID, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
				BC( "dialogbox", "player", $team_headerID, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
				
			endif
			//????-START
			$TJ_join_number = GetGlobalVar(936)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(936 , $TJ_join_number)
			//????-END
		else
			BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer1_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,33,0)
					SetPlayerVar( $teamplayer1_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3756 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer1_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3398 ,1 )
						
						BC( "screen", "player", $teamplayer1_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer1_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3398 ,$player_number )
						
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer1_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer1_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer2_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,33,0)
					SetPlayerVar( $teamplayer2_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3756 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer2_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3398 ,1 )
			
						BC( "screen", "player", $teamplayer2_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer2_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3398 ,$player_number )
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer2_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer2_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer3_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,33,0)
					SetPlayerVar( $teamplayer3_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3756 )
				
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer3_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3398 ,1 )
			
						BC( "screen", "player", $teamplayer3_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer3_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3398 ,$player_number )
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer3_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer3_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer4_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,33,0)
					SetPlayerVar( $teamplayer4_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3756 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer4_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3398 ,1 )
			
						BC( "screen", "player", $teamplayer4_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer4_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3398 ,$player_number )
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer4_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer4_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer5_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,33,0)
					SetPlayerVar( $teamplayer5_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3756 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer5_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3398 ,1 )
						BC( "screen", "player", $teamplayer5_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer5_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3398 ,$player_number )
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer5_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer5_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
			
				$is_succeed = FlyToEctype($teamplayer6_id ,235 ,72 ,74)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,33,0)
					SetPlayerVar( $teamplayer6_id , 3808 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3756 )
					
					if $player_time != $today_time
					
						SetPlayerVar( $teamplayer6_id, 3756 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3398 ,1 )
						BC( "screen", "player", $teamplayer6_id, "You have entered a new Knight's Jail! You can enter 4 more times today." )
						BC( "dialogbox", "player", $teamplayer6_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3398 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3398 ,$player_number )
						$temp_number = 5 - $player_number
						BC( "screen", "player", $teamplayer6_id, "You have entered a new Knight's Jail! You can enter ", $temp_number," more times today." )
						BC( "dialogbox", "player", $teamplayer6_id, "Find Jail Keeper-Magellan at the entrance. A riot has broken out in the prison. " )
					endif
				else
					BC( "dialogbox", "player", -1 , "This instance is full, please try later!" )
					return
				endif
			endif
		endif
		//---------------------
		
		
	}
	
	
	//???????????
	function OnOption1(){
		
		$ectype_ID = GetEctypeID(-1 ,235)
		//????ID
		$ectype_UID = GetEctypeUniqueID(-1 ,235)
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3756 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 20
			BC( "dialogbox", "player", -1, "Your LV is lower than 20. Unable enter!" )
			return
		endif
		//-----------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			$player_time =  GetPlayerVar( -1, 3756 )
			$Player_UID = GetPlayerVar( -1, 3808 )
			//??????????????
			if $Player_UID == $ectype_UID
				//???????,?????
			else
				//??????????????
			//-----------------------------------------------------------------------------------
				if $player_time == $today_time
					$player_number =  GetPlayerVar( -1, 3398 )
					if $player_number >= 5
						BC( "dialogbox", "player", -1, "You have already entered Knight's Jail 5 times today. Unable to enter." )
						return
					endif
				else
					//????????????
				endif
			endif
		else
			//???????,??
			return
		endif


		$is_succeed = FlyToEctype( -1 ,235 ,72 ,74)
		if $is_succeed > 0
			//??????
			//??????,????ID??,???????????????,??????+1
			$Player_UID = GetPlayerVar( -1, 3808 )
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "You have returned to Knight's Jail!" )
			else
				//???????????????,????????????,?????????
	
				SetPlayerVar( -1 , 3808 , $ectype_UID )
				if $player_time != $today_time
					SetPlayerVar( -1, 3756 ,$today_time )
					SetPlayerVar( -1 , 3398 ,1 )
				else
					$player_number =  GetPlayerVar( -1 , 3398 )
					$player_number = $player_number + 1
					SetPlayerVar( -1 , 3398 ,$player_number )
				endif
				BC( "screen", "player", -1, "You entered a new Knight's Jail!" )
				SetPlayerActLog(-1,33,0)
			endif
			
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
	}
	
	
	
	//??????
	function OnOption2(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			//?????????????????,????????ID
			//??????????1????????
			$team_count = GetTeamMemberCount(-1)
			if $team_count > 1
				BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
				return
			endif
		endif
		
		$ectype_ID = GetEctypeID(-1 , 235 )
		
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1 , 235 )
		if $revalue == 0
			//????
			BC( "screen", "team", $team_headerID, "Knight's Jail has been reset!" )
			BC( "dialogbox", "player", -1, "Knight's Jail has been reset!" )
		else
			BC( "dialogbox", "player", -1, "Fail to reset Knight's Jail!" )
		endif
	}
	
	
	
	//????
	function OnOption3(){
		
		$istask = IsTaskAccept( -1 , 4483 )
		if $istask == 0
			BC( "dialogbox" , "player" , -1 , "You have taken the quest." )
			return
		endif
		
		
		$id = GetPlayerID()
		
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			//-----------------------------
			//????????????1????
			//-------------------------------------------------------------------------------------1?
			if $teamplayer_id > 0
				$result = CheckRelation( $id , $teamplayer_id )
				//BC( "dialogbox" , "player" , -1 , "GUID:04169000072" , $result )
				//1?2???
				if $result == 2
					//?????
					AcceptTask( -1 , 4483 )
					return
				endif
			endif
		endwhile
	
		BC( "dialogbox", "player", -1, "You can only take this quest when you have an apprentice in your party." )
	}