   	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/09/22
	//		Author：陈施
	//		TaskName：2011guoqing-Monster32272.s
	//		TaskID：沉着的弗莱登
	//****************************************

	function OnDead(){
		//获得每个队员的ID,不存在的队员ID为-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		if $teamplayer1_id != -1
			$level = GetPlayerInfo( $teamplayer1_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer1_id, 90147 )
				else
					DropMonsterItems($teamplayer1_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer1_id, 90150 )
			endif
		endif

		if $teamplayer2_id != -1
			$level = GetPlayerInfo( $teamplayer2_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer2_id, 90147 )
				else
					DropMonsterItems($teamplayer2_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer2_id, 90150 )
			endif
		endif

		if $teamplayer3_id != -1
			$level = GetPlayerInfo( $teamplayer3_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer3_id, 90147 )
				else
					DropMonsterItems($teamplayer3_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer3_id, 90150 )
			endif
		endif

		if $teamplayer4_id != -1
			$level = GetPlayerInfo( $teamplayer4_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer4_id, 90147 )
				else
					DropMonsterItems($teamplayer4_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer4_id, 90150 )
			endif
		endif

		if $teamplayer5_id != -1
			$level = GetPlayerInfo( $teamplayer5_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer5_id, 90147 )
				else
					DropMonsterItems($teamplayer5_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer5_id, 90150 )
			endif
		endif

		if $teamplayer6_id != -1
			$level = GetPlayerInfo( $teamplayer6_id , "level" )
			if $level >= 71
				if $level <= 100
					DropMonsterItems($teamplayer6_id, 90147 )
				else
					DropMonsterItems($teamplayer6_id, 90150 )
				endif
			else
				DropMonsterItems($teamplayer6_id, 90150 )
			endif
		endif

	}