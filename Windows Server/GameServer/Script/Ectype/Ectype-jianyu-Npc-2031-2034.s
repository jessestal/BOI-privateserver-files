	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/26
	//		Author:???
	//		TaskName:Ectype-jianyu-Npc-2031-2034.s
	//		TaskID:??????????
	//
	//****************************************
	
	//????110??????
	//0 = ??????,?????
	//100 = ????,1?????
	//101 = ??1???
	//?????
	//130 = ??30???
	//200 = ???boss
	//201 = ?boss??
	
	//????????0
	function OnRequest(){
		
		$ecstate = GetEctypeVar( -1 , 110 )
		
		if $ecstate != 200
			DisableNpcOption(0)
		endif
		
	}
	
	
	
	//?????????
	function OnOption0(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Call your party leader here, I'm dying..." )
			return
		endif
		
		
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some of your party members are too far away.  For safety's sake, you'd  best act together!" )
			return
		endif
		
		
		
		$team_count = GetTeamMemberCount( -1 )
		//????????
		if $team_count < 3
			call CallMonsterSingle()
		else
			call CallMonsterTeam()
		endif
		
		//???????201,???BOSS,??NPC
		if $result == 0
			SetEctypeVar( -1 , 110 , 201 )
			$npcid = GetNpcSlkID()
			DeleteNPC( $npcid , -1 )
		endif
	}
	
	
	//????
	function CallMonsterSingle(){
	
//----------??????------------------------------------------------------------------------------

		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$sumlv = 0
		if $teamplayer1_id != -1
			$sumlv = GetPlayerInfo( $teamplayer1_id , "level" )
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		$team_count = GetTeamMemberCount( -1 )
		$arglv = $sumlv / $team_count
		
		
		
		//??????NPC,?????????
		$npcid = GetNpcSlkID()
		//????163 176
		if $npcid == 2031
			$x = 64
			$y = 69
		endif
		//????203 176
		if $npcid == 2032
			$x = 79
			$y = 69
		endif
		//????165 161
		if $npcid == 2033
			$x = 65
			$y = 60
		endif
		//????199 155
		if $npcid == 2034
			$x = 78
			$y = 61
		endif
		
		
		//???????
		$ectype_ID = GetEctypeID( -1 , 235 )
		
		//???1??????BOSS
		$n = RandomNumber( 0 , 3 )
		if $n == 0
			$var = GetEctypeVar( -1 , 0 )
			if $var == 0
				$result = AddLevelMonster( 31156 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000002" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000003" )
				SetEctypeVar( -1 , 0 , 1 )
			else
				$var = GetEctypeVar( -1 , 1 )
				if $var == 0
					$result = AddLevelMonster( 31157 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000004" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000005" )
					SetEctypeVar( -1 , 1 , 1 )
				else
					$var = GetEctypeVar( -1 , 2 )
					if $var == 0
						$result = AddLevelMonster( 31158 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000006" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000007" )
						SetEctypeVar( -1 , 2 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31159 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000008" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000009" )
						SetEctypeVar( -1 , 3 , 1 )
					endif
				endif	
			endif
		endif

		if $n == 1
			$var = GetEctypeVar( -1 , 1 )
			if $var == 0
				$result = AddLevelMonster( 31157 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000010" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000011" )
				SetEctypeVar( -1 , 1 , 1 )	
			else
				$var = GetEctypeVar( -1 , 2 )
				if $var == 0
					$result = AddLevelMonster( 31158 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000012" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000013" )
					SetEctypeVar( -1 , 2 , 1 )
				else
					$var = GetEctypeVar( -1 , 3 )
					if $var == 0
						$result = AddLevelMonster( 31159 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000014" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000015" )
						SetEctypeVar( -1 , 3 , 1 )
					else
					//?3?????,????4?
						$result = AddLevelMonster( 31156 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000016" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000017" )
						SetEctypeVar( -1 , 0 , 1 )
					endif
				endif	
			endif
		endif
		
		if $n == 2
			$var = GetEctypeVar( -1 , 2 )
			if $var == 0
				$result = AddLevelMonster( 31158 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000018" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000019" )
				SetEctypeVar( -1 , 2 , 1 )	
			else
				$var = GetEctypeVar( -1 , 3 )
				if $var == 0
					$result = AddLevelMonster( 31159 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000020" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000021" )
					SetEctypeVar( -1 , 3 , 1 )
				else
					$var = GetEctypeVar( -1 , 0 )
					if $var == 0
						$result = AddLevelMonster( 31156 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000022" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000023" )
						SetEctypeVar( -1 , 0 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31157 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000024" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000025" )
						SetEctypeVar( -1 , 1 , 1 )
					endif
				endif	
			endif
		endif
		
		
		if $n == 3
			$var = GetEctypeVar( -1 , 3 )
			if $var == 0
				$result = AddLevelMonster( 31159 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000026" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000027" )
				SetEctypeVar( -1 , 3 , 1 )
			else
				$var = GetEctypeVar( -1 , 0 )
				if $var == 0
					$result = AddLevelMonster( 31156 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000028" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000029" )
					SetEctypeVar( -1 , 0 , 1 )
				else
					$var = GetEctypeVar( -1 , 1 )
					if $var == 0
						$result = AddLevelMonster( 31157 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000030" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000031" )
						SetEctypeVar( -1 , 1 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31158 , 21 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 20 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000032" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000033" )
						SetEctypeVar( -1 , 2 , 1 )
					endif
				endif	
			endif
		endif
	}
	
	
	
	//????
	function CallMonsterTeam(){
	
//----------??????------------------------------------------------------------------------------

		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$sumlv = 0
		if $teamplayer1_id != -1
			$sumlv = GetPlayerInfo( $teamplayer1_id , "level" )
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$sumlv = $sumlv + $lv
		endif
		$team_count = GetTeamMemberCount( -1 )
		$arglv = $sumlv / $team_count
		
		
		
		//??????NPC,?????????
		$npcid = GetNpcSlkID()
		//????163 176
		if $npcid == 2031
			$x = 64
			$y = 69
		endif
		//????203 176
		if $npcid == 2032
			$x = 79
			$y = 69
		endif
		//????165 161
		if $npcid == 2033
			$x = 64
			$y = 63
		endif
		//????199 155
		if $npcid == 2034
			$x = 78
			$y = 61
		endif
		
		
		//???????
		$ectype_ID = GetEctypeID( -1 , 235 )
		
		//???1??????BOSS
		$n = RandomNumber( 0 , 3 )
		if $n == 0
			$var = GetEctypeVar( -1 , 0 )
			if $var == 0
				$result = AddLevelMonster( 31156 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000034" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000035" )
				SetEctypeVar( -1 , 0 , 1 )
			else
				$var = GetEctypeVar( -1 , 1 )
				if $var == 0
					$result = AddLevelMonster( 31157 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000036" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000037" )
					SetEctypeVar( -1 , 1 , 1 )
				else
					$var = GetEctypeVar( -1 , 2 )
					if $var == 0
						$result = AddLevelMonster( 31158 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000038" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000039" )
						SetEctypeVar( -1 , 2 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31159 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000040" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000041" )
						SetEctypeVar( -1 , 3 , 1 )
					endif
				endif	
			endif
		endif

		if $n == 1
			$var = GetEctypeVar( -1 , 1 )
			if $var == 0
				$result = AddLevelMonster( 31157 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000042" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000043" )
				SetEctypeVar( -1 , 1 , 1 )	
			else
				$var = GetEctypeVar( -1 , 2 )
				if $var == 0
					$result = AddLevelMonster( 31158 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000044" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000045" )
					SetEctypeVar( -1 , 2 , 1 )
				else
					$var = GetEctypeVar( -1 , 3 )
					if $var == 0
						$result = AddLevelMonster( 31159 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000046" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000047" )
						SetEctypeVar( -1 , 3 , 1 )
					else
					//?3?????,????4?
						$result = AddLevelMonster( 31156 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000048" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000049" )
						SetEctypeVar( -1 , 0 , 1 )
					endif
				endif	
			endif
		endif
		
		if $n == 2
			$var = GetEctypeVar( -1 , 2 )
			if $var == 0
				$result = AddLevelMonster( 31158 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000050" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000051" )
				SetEctypeVar( -1 , 2 , 1 )	
			else
				$var = GetEctypeVar( -1 , 3 )
				if $var == 0
					$result = AddLevelMonster( 31159 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000052" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000053" )
					SetEctypeVar( -1 , 3 , 1 )
				else
					$var = GetEctypeVar( -1 , 0 )
					if $var == 0
						$result = AddLevelMonster( 31156 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000054" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000055" )
						SetEctypeVar( -1 , 0 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31157 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000056" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000057" )
						SetEctypeVar( -1 , 1 , 1 )
					endif
				endif	
			endif
		endif
		
		
		if $n == 3
			$var = GetEctypeVar( -1 , 3 )
			if $var == 0
				$result = AddLevelMonster( 31159 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
				$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
				//BC( "screen" , "map" , $ectype_ID , "GUID:04167000058" )
				//BC( "chat" , "map" , $ectype_ID , "GUID:04167000059" )
				SetEctypeVar( -1 , 3 , 1 )
			else
				$var = GetEctypeVar( -1 , 0 )
				if $var == 0
					$result = AddLevelMonster( 31156 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
					$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
					//BC( "screen" , "map" , $ectype_ID , "GUID:04167000060" )
					//BC( "chat" , "map" , $ectype_ID , "GUID:04167000061" )
					SetEctypeVar( -1 , 0 , 1 )
				else
					$var = GetEctypeVar( -1 , 1 )
					if $var == 0
						$result = AddLevelMonster( 31157 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000062" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000063" )
						SetEctypeVar( -1 , 1 , 1 )
					else
						//?3?????,????4?
						$result = AddLevelMonster( 31158 , 18 ,  $arglv , 1 , $ectype_ID , $x , $y , 0 )
						$result = AddLevelMonster( 31155 , 17 ,  $arglv , 10 , $ectype_ID , $x , $y , 5 )
						//BC( "screen" , "map" , $ectype_ID , "GUID:04167000064" )
						//BC( "chat" , "map" , $ectype_ID , "GUID:04167000065" )
						SetEctypeVar( -1 , 2 , 1 )
					endif
				endif
			endif
		endif
	}