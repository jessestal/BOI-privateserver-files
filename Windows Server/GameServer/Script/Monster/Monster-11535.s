//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2012/6/28
//	--		Author:???
//	--		Class:	Monster-11535.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

	function OnDead(){
		
		$RankList = GetFieldRankListValue(499)
					
			$playerID = GetPlayerID()
			$n = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID($playerID,$n)
				if $teamplayer_id > 0
					$lenD = GetPlayerDistance($playerID,$teamplayer_id )
					if $lenD < 15
						$sui = RandomNumber(1,10000)
						if $sui < 1000
							if $RankList >= 30
								DropMonsterItems($teamplayer_id,90249)
							else
								DropMonsterItems($teamplayer_id,90256)
							endif
						endif
					endif
				endif
				$n = $n + 1
			endwhile
		
		//?????ID
		$team_head_id =	GetTeamHeaderID ( -1 )
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//????BOSS???
		BC( "chat", "server", -1, "Player:",#player_name,"I led a party and successfully trapped Osiris with a powerful seal." )
		BC( "screen", "server", -1, "Player:",#player_name,"I led a party and successfully trapped Osiris with a powerful seal."  )
		
		$playerX = GetPlayerInfo( $team_head_id, "mapx" )
		$playerY = GetPlayerInfo( $team_head_id, "mapy" )
		
		AddMonster( 41047, 1, 127, 63, 69, 0 )
		AddMonster( 41047, 1, 127, 61, 70, 0 )
		
	}	