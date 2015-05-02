   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/28
	//		Author: ???
	//		TaskName:Ectype-jianyu-Monster-31160.s
	//		TaskID:???boss????
	//****************************************
	
	function OnDead(){
		
		//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		//----------??????------------------------------------------------------------------------------
		$sumlv = 0
		$dis1 = -1
		$dis2 = -1
		$dis3 = -1
		$dis4 = -1
		$dis5 = -1
		$dis6 = -1
		if $teamplayer1_id != -1
			$sumlv = GetPlayerInfo( $teamplayer1_id , "level" )
			$dis1 = GetPlayerDistance( -1 , $teamplayer1_id )
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$sumlv = $sumlv + $lv
			$dis2 = GetPlayerDistance( -1 , $teamplayer2_id )
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$sumlv = $sumlv + $lv
			$dis3 = GetPlayerDistance( -1 , $teamplayer3_id )
		endif
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$sumlv = $sumlv + $lv
			$dis4 = GetPlayerDistance( -1 , $teamplayer4_id )
		endif
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$sumlv = $sumlv + $lv
			$dis5 = GetPlayerDistance( -1 , $teamplayer5_id )
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$sumlv = $sumlv + $lv
			$dis6 = GetPlayerDistance( -1 , $teamplayer6_id )
		endif
		$team_count = GetTeamMemberCount( -1 )
		$arglv = $sumlv / $team_count
		
		
		//??????????
		//??????30???????
		$ectype_ID = GetEctypeID( -1 , 235 )
		
		
		if $arglv < 30
			if $dis1 >= 0
				if $dis1 <= 30
					DropMonsterItems( $teamplayer1_id , 60319 )
				endif
			endif
			if $dis2 >= 0
				if $dis2 <= 30
					DropMonsterItems( $teamplayer2_id , 60319 )
				endif
			endif
			if $dis3 >= 0
				if $dis3 <= 30
					DropMonsterItems( $teamplayer3_id , 60319 )
				endif
			endif
			if $dis4 >= 0
				if $dis4 <= 30
					DropMonsterItems( $teamplayer4_id , 60319 )
				endif
			endif
			if $dis5 >= 0
				if $dis5 <= 30
					DropMonsterItems( $teamplayer5_id , 60319 )
				endif
			endif
			if $dis6 >= 0
				if $dis6 <= 30
					DropMonsterItems( $teamplayer6_id , 60319 )
				endif
			endif
		endif
		
		if $arglv >= 30
			if $arglv < 45
				if $dis1 >= 0
					if $dis1 <= 30
						DropMonsterItems( $teamplayer1_id , 60320 )
					endif
				endif
				if $dis2 >= 0
					if $dis2 <= 30
						DropMonsterItems( $teamplayer2_id , 60320 )
					endif
				endif
				if $dis3 >= 0
					if $dis3 <= 30
						DropMonsterItems( $teamplayer3_id , 60320 )
					endif
				endif
				if $dis4 >= 0
					if $dis4 <= 30
						DropMonsterItems( $teamplayer4_id , 60320 )
					endif
				endif
				if $dis5 >= 0
					if $dis5 <= 30
						DropMonsterItems( $teamplayer5_id , 60320 )
					endif
				endif
				if $dis6 >= 0
					if $dis6 <= 30
						DropMonsterItems( $teamplayer6_id , 60320 )
					endif
				endif
			endif
		endif
		
		if $arglv >= 45
			if $arglv < 60
				if $dis1 >= 0
					if $dis1 <= 30
						DropMonsterItems( $teamplayer1_id , 60322 )
					endif
				endif
				if $dis2 >= 0
					if $dis2 <= 30
						DropMonsterItems( $teamplayer2_id , 60322 )
					endif
				endif
				if $dis3 >= 0
					if $dis3 <= 30
						DropMonsterItems( $teamplayer3_id , 60322 )
					endif
				endif
				if $dis4 >= 0
					if $dis4 <= 30
						DropMonsterItems( $teamplayer4_id , 60322 )
					endif
				endif
				if $dis5 >= 0
					if $dis5 <= 30
						DropMonsterItems( $teamplayer5_id , 60322 )
					endif
				endif
				if $dis6 >= 0
					if $dis6 <= 30
						DropMonsterItems( $teamplayer6_id , 60322 )
					endif
				endif		
			endif
		endif
		
		if $arglv >= 60
			if $arglv < 75
				if $dis1 >= 0
					if $dis1 <= 30
						DropMonsterItems( $teamplayer1_id , 60323 )
					endif
				endif
				if $dis2 >= 0
					if $dis2 <= 30
						DropMonsterItems( $teamplayer2_id , 60323 )
					endif
				endif
				if $dis3 >= 0
					if $dis3 <= 30
						DropMonsterItems( $teamplayer3_id , 60323 )
					endif
				endif
				if $dis4 >= 0
					if $dis4 <= 30
						DropMonsterItems( $teamplayer4_id , 60323 )
					endif
				endif
				if $dis5 >= 0
					if $dis5 <= 30
						DropMonsterItems( $teamplayer5_id , 60323 )
					endif
				endif
				if $dis6 >= 0
					if $dis6 <= 30
						DropMonsterItems( $teamplayer6_id , 60323 )
					endif
				endif	
			endif
		endif
		
		if $arglv >= 75
			if $dis1 >= 0
				if $dis1 <= 30
					DropMonsterItems( $teamplayer1_id , 60324 )
				endif
			endif
			if $dis2 >= 0
				if $dis2 <= 30
					DropMonsterItems( $teamplayer2_id , 60324 )
				endif
			endif
			if $dis3 >= 0
				if $dis3 <= 30
					DropMonsterItems( $teamplayer3_id , 60324 )
				endif
			endif
			if $dis4 >= 0
				if $dis4 <= 30
					DropMonsterItems( $teamplayer4_id , 60324 )
				endif
			endif
			if $dis5 >= 0
				if $dis5 <= 30
					DropMonsterItems( $teamplayer5_id , 60324 )
				endif
			endif
			if $dis6 >= 0
				if $dis6 <= 30
					DropMonsterItems( $teamplayer6_id , 60324 )
				endif
			endif
		endif 
		//??????????
		//????????????????
				
		
		$ectype_ID = GetEctypeID( -1 , 235 )
		BC( "screen" , "map" , $ectype_ID , "Earthshaker Hannibal: Congratulations, you are still alive. Most do not value their lives but I can tell you do." )
		BC( "screen" , "map" , $ectype_ID , "This instance is over. Talk to Jail Keeper Magellan to return to Atlantis." )
		BC( "chat" , "map" , $ectype_ID , "This instance is over. Talk to Jail Keeper Magellan to return to Atlantis." )
		
	}