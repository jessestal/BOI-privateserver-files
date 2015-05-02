	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/26
	//		Author:???
	//		TaskName:Ectype-jianyu-Npc-2035.s
	//		TaskID:???? - ?????????
	//
	//****************************************
	
	//????110??????
	//0 = ??????,?????
	//100 = ????,1?????
	//101 = ??1???
	//?????
	//130 = ??30???
	//200 = ???1??boss
	//201 = ?1??boss??


	//????????0
	function OnRequest(){
		
		$ecstate = GetEctypeVar( -1 , 110 ) 
		if $ecstate != 0
			DisableNpcOption(0)
		endif
		
	}
	
	
	
	//?????????
	function OnOption0(){
	
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some party members are so far away. For safety's sake, you'd better act together!" )
			return
		endif
		
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		
//----------??????------------------------------------------------------------------------------
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

		
		//???????
		$ectype_ID = GetEctypeID( -1 , 235 )
		//????????,????????
		if $team_count < 3
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 65 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 72 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 78 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 72 , 59 , 5 )
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 66 , 61 , 5 )
			$result = AddLevelMonster( 31155 , 20 ,  $arglv , 5 , $ectype_ID , 77 , 62 , 5 )
		else
			//??
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 65 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 72 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 78 , 66 , 5 )
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 72 , 59 , 5 )
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 66 , 61 , 5 )
			$result = AddLevelMonster( 31155 , 17 ,  $arglv , 5 , $ectype_ID , 77 , 62 , 5 )
		endif
		
		BC( "screen" , "map" , $ectype_ID , "The prison is filled with rioting criminals. Kill them and then find the four missing jailers. The Paladins will be forever grateful for your kindness."  )
		BC( "chat" , "map" , $ectype_ID , "The prison is filled with rioting criminals. Kill them and then find the four missing jailers. The Paladins will be forever grateful for your kindness."  )
		
		//???????100,????????0
		if $result == 0
			SetEctypeVar( -1 , 110 , 100  )
		endif
		
	}
	
	
	//????
	function OnOption1(){
	
		FlyToMap( -1 , 475 , 100 , 73 )
		
	}