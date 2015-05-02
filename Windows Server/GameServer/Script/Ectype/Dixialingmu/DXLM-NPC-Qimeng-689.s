	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??
	//		TaskID:DXLM-NPC-Qimeng-689.s
	//
	//****************************************

		function OnRequest(){
		
	}	
	
	function OnOption0(){
	
	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
			return
		endif
	
	//????????,1???,2???
	$dif = GetEctypeVar(-1, 1)

	//????12???	
	if $dif == 1
		AddMonster( 51792, 3, -1, 82, 232, 3)
		AddMonster( 51792, 3, -1, 82, 232, 3)
		AddMonster( 51792, 3, -1, 82, 232, 3)
		BC( "screen", "map", -1, "I've summoned the lost souls. Please cleanse them.")								
	endif

	//????30???	
	if $dif == 2
		AddMonster( 51792, 5, -1, 82, 232, 3)
		AddMonster( 51792, 5, -1, 82, 232, 3)
		AddMonster( 51792, 5, -1, 82, 232, 3)
		AddMonster( 51792, 5, -1, 82, 232, 3)
		AddMonster( 51792, 5, -1, 82, 232, 3)
		AddMonster( 51792, 5, -1, 82, 232, 3)
		BC( "screen", "map", -1, "I've summoned the lost souls. Please cleanse them.")
	endif
		
}

	function OnOption1(){

	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
			return
		endif

	$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "dialogbox", "player", -1, "Your party members are too far away!" )
			return
		endif
		
	//????????,1???,2????????????2
	$dif = GetEctypeVar(-1, 1)
	$count = GetEctypeVar(-1, 2)
	
	//??????12???
	if $dif = 1
			if $count >= 12
//					AddPlayerInfo(-1, "item", ,1 )
					BC( "screen", "player", -1, "This is the Nirvana Mirror, the manifest of your mind's clarity. Use it wisely.")
			endif
	endif
	
//	//??????30???
//	//????ID
//	$teamplayer1_id = GetTeamMemberID( -1, 0 )
//	$teamplayer2_id = GetTeamMemberID( -1, 1 )
//	$teamplayer3_id = GetTeamMemberID( -1, 2 )
//	$teamplayer4_id = GetTeamMemberID( -1, 3 )
//	$teamplayer5_id = GetTeamMemberID( -1, 4 )
//	$teamplayer6_id = GetTeamMemberID( -1, 5 )						
//	
//	if $dif = 2
//			if $count >= 30
//					AddPlayerInfo( $teamplayer1_id, "item", , 1)
//					AddPlayerInfo( $teamplayer2_id, "item", , 1)
//					AddPlayerInfo( $teamplayer3_id, "item", , 1)
//					AddPlayerInfo( $teamplayer4_id, "item", , 1)
//					AddPlayerInfo( $teamplayer5_id, "item", , 1)
//					AddPlayerInfo( $teamplayer6_id, "item", , 1)								
//					BC( "screen", "map", -1, "GUID:03976000006")
//			endif
	endif
	
	//????NPC
	AddNPC(-1, 688 )
	
}
		
		
