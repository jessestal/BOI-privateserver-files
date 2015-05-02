	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/22
	//		Author:???
	//		TaskName:Ectype-Pyramid-Npc-1989.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type0 = GetEctypeVar( -1, 3 )
		if $ectype_type0 == 1
			DisableNpcOption(0)
		endif
		
		$ectype_type = GetEctypeVar( -1, 0 )
		if $ectype_type != 1
			$ectype_type = GetEctypeVar( -1, 119 )
			if $ectype_type != 1
				DisableNpcOption(0)
			endif
		endif
		
	}
	
	//??????
	function OnOption0(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type0 = GetEctypeVar( -1, 3 )
		if $ectype_type0 == 1
			BC( "dialogbox", "player", -1, "Portal has been shut down." )
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 0 )
		if $ectype_type == 1
			FlyToMap( -1, $ectype_ID, 66, 76 )
			BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 119 )
		if $ectype_type != 1
			BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
			return
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
//			BC( "dialogbox", "player", -1, "GUID:04194000004" )
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
		
		FlyToMap( $teamplayer1_id, $ectype_ID, 66, 76 )
		FlyToMap( $teamplayer2_id, $ectype_ID, 66, 76 )
		FlyToMap( $teamplayer3_id, $ectype_ID, 66, 76 )
		FlyToMap( $teamplayer4_id, $ectype_ID, 66, 76 )
		FlyToMap( $teamplayer5_id, $ectype_ID, 66, 76 )
		FlyToMap( $teamplayer6_id, $ectype_ID, 66, 76 )
		SetEctypeVar( -1, 0, 1 )
		BC( "screen", "map", $ectype_ID, "Once through this portal, you cannot return! Portals only operate one way." )
		
		$ectype_var = GetEctypeVar( -1, 4 )
		$ectype_type = GetEctypeVar( -1, 110 )
		if $ectype_type == 1
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 2 )
				if $ectype_var == 0
					AddMonster( 51497, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51497, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51497, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51500, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51500, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51500, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51500, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51500, 1, $ectype_ID, 73, 81 , 0 )
					endif
				else
					AddMonster( 51228, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51228, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51228, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51231, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51231, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51231, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51231, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51231, 1, $ectype_ID, 73, 81 , 0 )
					endif
				endif
				BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 3 )
				if $ectype_var == 0
					AddMonster( 51498, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51498, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51498, 10, $ectype_ID, 71, 71 , 6 )
				else
					AddMonster( 51229, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51229, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51229, 10, $ectype_ID, 71, 71 , 6 )
				endif
				BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				AddNPC( 2009, $ectype_ID )
				if $ectype_var == 0
					AddMonster( 51499, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51499, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51499, 6, $ectype_ID, 71, 71 , 8 )
				else
					AddMonster( 51230, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51230, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51230, 6, $ectype_ID, 71, 71 , 8 )
				endif
				BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
			endif
		endif
		if $ectype_type == 2
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				AddNPC( 2002, $ectype_ID )
				AddNPC( 2003, $ectype_ID )
				AddNPC( 2004, $ectype_ID )
				AddNPC( 2005, $ectype_ID )
				BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 3 )
				if $ectype_var == 0
					AddMonster( 51498, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51498, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51498, 10, $ectype_ID, 71, 71 , 6 )
				else
					AddMonster( 51229, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51229, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51229, 10, $ectype_ID, 71, 71 , 6 )
				endif
				BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				AddNPC( 2009, $ectype_ID )
				if $ectype_var == 0
					AddMonster( 51499, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51499, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51499, 6, $ectype_ID, 71, 71 , 8 )
				else
					AddMonster( 51230, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51230, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51230, 6, $ectype_ID, 71, 71 , 8 )
				endif
				BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
			endif
		endif
		if $ectype_type == 3
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				AddNPC( 2002, $ectype_ID )
				AddNPC( 2003, $ectype_ID )
				AddNPC( 2004, $ectype_ID )
				AddNPC( 2005, $ectype_ID )
				BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 2 )
				if $ectype_var == 0
					AddMonster( 51497, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51497, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51497, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51500, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51500, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51500, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51500, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51500, 1, $ectype_ID, 73, 81 , 0 )
					endif
				else
					AddMonster( 51228, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51228, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51228, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51231, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51231, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51231, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51231, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51231, 1, $ectype_ID, 73, 81 , 0 )
					endif
				endif
				BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				AddNPC( 2009, $ectype_ID )
				if $ectype_var == 0
					AddMonster( 51499, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51499, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51499, 6, $ectype_ID, 71, 71 , 8 )
				else
					AddMonster( 51230, 7, $ectype_ID, 80, 71 , 8 )
					AddMonster( 51230, 7, $ectype_ID, 71, 80 , 8 )
					AddMonster( 51230, 6, $ectype_ID, 71, 71 , 8 )
				endif
				BC("dialogbox", "map", $ectype_ID, "It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...")
			endif
		endif
		if $ectype_type == 4
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				AddNPC( 2002, $ectype_ID )
				AddNPC( 2003, $ectype_ID )
				AddNPC( 2004, $ectype_ID )
				AddNPC( 2005, $ectype_ID )
				BC("dialogbox", "map", $ectype_ID, "Four statues of the Queen have appeared. Activate them in the correct order and they will begin to disappear one by one. When all four statues are gone, the Queen's Hatred will be released.")
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 2 )
				if $ectype_var == 0
					AddMonster( 51497, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51497, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51497, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51500, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51500, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51500, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51500, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51500, 1, $ectype_ID, 73, 81 , 0 )
					endif
				else
					AddMonster( 51228, 20, $ectype_ID, 80, 71 , 10 )
					AddMonster( 51228, 20, $ectype_ID, 71, 80 , 10 )
					AddMonster( 51228, 10, $ectype_ID, 71, 71 , 6 )
					$Rand = RandomNumber( 1, 5 )
					if $Rand == 1
						AddMonster( 51231, 1, $ectype_ID, 81, 73 , 0 )
					endif
					if $Rand == 2
						AddMonster( 51231, 1, $ectype_ID, 77, 74 , 0 )
					endif
					if $Rand == 3
						AddMonster( 51231, 1, $ectype_ID, 73, 72 , 0 )
					endif
					if $Rand == 4
						AddMonster( 51231, 1, $ectype_ID, 70, 77 , 0 )
					endif
					if $Rand == 5
						AddMonster( 51231, 1, $ectype_ID, 73, 81 , 0 )
					endif
				endif
				BC("dialogbox", "map", $ectype_ID, "Countless scorpions crawl out of the dust! Find Molmes the Scorpion Lord as soon as you can!")
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 3 )
				if $ectype_var == 0
					AddMonster( 51498, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51498, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51498, 10, $ectype_ID, 71, 71 , 6 )
				else
					AddMonster( 51229, 20, $ectype_ID, 80, 71 , 9 )
					AddMonster( 51229, 20, $ectype_ID, 71, 80 , 9 )
					AddMonster( 51229, 10, $ectype_ID, 71, 71 , 6 )
				endif
				BC("dialogbox", "map", $ectype_ID, "50 Witches have suddenly appeared before your eyes. It is said that these women are the concubines of Prince Arbyss. Their deaths will surely draw him out...")
			endif
		endif
	}