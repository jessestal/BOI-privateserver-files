	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/22
	//		Author:???
	//		TaskName:Ectype-Pyramid-Npc-1987.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type = GetEctypeVar( -1, 119 )
		if $ectype_type == 2
				$ectype_type1 = GetEctypeVar( -1, 1 )
				if $ectype_type1 == 1
					DisableNpcOption(0)
				endif
		else
				if $ectype_type == 3
				//??3????
				else
					DisableNpcOption(0)
				endif
		endif
	}
	
	//??????
	function OnOption0(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type = GetEctypeVar( -1, 2 )
		if $ectype_type == 1
			$ectype_type0 = GetEctypeVar( -1, 116 )
			if $ectype_type0 == 1
				FlyToMap( -1, $ectype_ID, 61, 51 )
				BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
				return
			endif
			if $ectype_type0 == 2
				FlyToMap( -1, $ectype_ID, 66, 51 )
				BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
				return
			endif
		endif
		
		$ectype_type = GetEctypeVar( -1, 119 )
		if $ectype_type == 2
				$ectype_type1 = GetEctypeVar( -1, 1 )
				if $ectype_type1 == 1
					BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
					return
				endif
		else
			if $ectype_type == 3
				//??3????
			else
				BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
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
		
//		$team_count = GetTeamMemberCount( -1 )
//		//????????
//		if $team_count < 3
//			BC( "dialogbox", "player", -1, "GUID:04192000005" )
//			return
//		endif
		
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
		
		$ectype_type0 = GetEctypeVar( -1, 1 )
		if $ectype_type0 == 1
			FlyToMap( $teamplayer1_id, $ectype_ID, 61, 51 )
			FlyToMap( $teamplayer2_id, $ectype_ID, 61, 51 )
			FlyToMap( $teamplayer3_id, $ectype_ID, 61, 51 )
			FlyToMap( $teamplayer4_id, $ectype_ID, 61, 51 )
			FlyToMap( $teamplayer5_id, $ectype_ID, 61, 51 )
			FlyToMap( $teamplayer6_id, $ectype_ID, 61, 51 )
			SetEctypeVar( -1, 116, 1 )
			BC( "screen", "map", $ectype_ID, "Once through this portal, you cannot return! Portals only operate one way." )
		else
			FlyToMap( $teamplayer1_id, $ectype_ID, 66, 51 )
			FlyToMap( $teamplayer2_id, $ectype_ID, 66, 51 )
			FlyToMap( $teamplayer3_id, $ectype_ID, 66, 51 )
			FlyToMap( $teamplayer4_id, $ectype_ID, 66, 51 )
			FlyToMap( $teamplayer5_id, $ectype_ID, 66, 51 )
			FlyToMap( $teamplayer6_id, $ectype_ID, 66, 51 )
			SetEctypeVar( -1, 116, 2 )
			BC( "screen", "map", $ectype_ID, "Once through this portal, you cannot return! Portals only operate one way." )
		endif	
		SetEctypeVar( -1, 2, 1 )
	
	$ectype_var = GetEctypeVar( -1, 4 )	
	$ectype_type0 = GetEctypeVar( -1, 1 )
	if $ectype_type0 != 1	
		$ectype_type1 = GetEctypeVar( -1, 110 )
		$ectype_type2 = GetEctypeVar( -1, 111 )
		if $ectype_type1 == 1
			if $ectype_type2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
					AddNPC( 2006, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 71, 56 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 80, 56 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 71, 48 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 71, 56 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 3 )
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 71, 56 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 80, 56 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 71, 48 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 71, 56 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectype_ID )
					AddNPC( 1991, $ectype_ID )
					AddNPC( 1992, $ectype_ID )
					AddNPC( 1993, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 72, 55 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 80, 56 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 71, 48 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 71, 56 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 73, 47 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 73, 53 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 77, 52 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 82, 54 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 72, 55 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
	else
		$ectype_type1 = GetEctypeVar( -1, 110 )
		$ectype_type2 = GetEctypeVar( -1, 111 )
		$ectype_type3 = GetEctypeVar( -1, 112 )
		if $ectype_type1 == 1
			if $ectype_type2 == 2
				if $ectype_type3 == 3
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 3
				if $ectype_type3 == 2
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 1
				if $ectype_type3 == 3
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 3
				if $ectype_type3 == 1
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 1
				if $ectype_type3 == 2
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 2
				if $ectype_type3 == 1
					AddNPC( 2007, $ectype_ID )
					if $ectype_var == 0
						AddMonster( 51499, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51499, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51499, 6, $ectype_ID, 55, 55 , 8 )
					else
						AddMonster( 51230, 7, $ectype_ID, 56, 47 , 8 )
						AddMonster( 51230, 7, $ectype_ID, 47, 56 , 8 )
						AddMonster( 51230, 6, $ectype_ID, 55, 55 , 8 )
					endif
					BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 2
				if $ectype_type3 == 4
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 4
				if $ectype_type3 == 2
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 1
				if $ectype_type3 == 4
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 4
				if $ectype_type3 == 1
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 1
				if $ectype_type3 == 2
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 2
				if $ectype_type3 == 1
					if $ectype_var == 0
						AddMonster( 51498, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51498, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51498, 10, $ectype_ID, 55, 55 , 6 )
					else
						AddMonster( 51229, 20, $ectype_ID, 56, 47 , 9 )
						AddMonster( 51229, 20, $ectype_ID, 47, 56 , 9 )
						AddMonster( 51229, 10, $ectype_ID, 55, 55 , 6 )
					endif
					BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 3
				if $ectype_type3 == 4
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 1
			if $ectype_type2 == 4
				if $ectype_type3 == 3
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 1
				if $ectype_type3 == 4
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 4
				if $ectype_type3 == 1
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 3
				if $ectype_type3 == 1
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 1
				if $ectype_type3 == 3
					if $ectype_var == 0
						AddMonster( 51497, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51497, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51497, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51500, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51500, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51500, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51500, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51500, 1, $ectype_ID, 47, 56 , 0 )
						endif
					else
						AddMonster( 51228, 20, $ectype_ID, 56, 47 , 10 )
						AddMonster( 51228, 20, $ectype_ID, 47, 56 , 10 )
						AddMonster( 51228, 10, $ectype_ID, 55, 55 , 6 )
						$Rand = RandomNumber( 1, 5 )
						if $Rand == 1
							AddMonster( 51231, 1, $ectype_ID, 56, 45 , 0 )
						endif
						if $Rand == 2
							AddMonster( 51231, 1, $ectype_ID, 56, 51 , 0 )
						endif
						if $Rand == 3
							AddMonster( 51231, 1, $ectype_ID, 51, 51 , 0 )
						endif
						if $Rand == 4
							AddMonster( 51231, 1, $ectype_ID, 47, 53 , 0 )
						endif
						if $Rand == 5
							AddMonster( 51231, 1, $ectype_ID, 47, 56 , 0 )
						endif
					endif
					BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 3
				if $ectype_type3 == 4
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 2
			if $ectype_type2 == 4
				if $ectype_type3 == 3
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 2
				if $ectype_type3 == 4
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 3
			if $ectype_type2 == 4
				if $ectype_type3 == 2
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 3
				if $ectype_type3 == 2
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
		if $ectype_type1 == 4
			if $ectype_type2 == 2
				if $ectype_type3 == 3
					AddNPC( 1994, $ectype_ID )
					AddNPC( 1995, $ectype_ID )
					AddNPC( 1996, $ectype_ID )
					AddNPC( 1997, $ectype_ID )
					BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
				endif
			endif
		endif
	endif
		
	}