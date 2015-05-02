  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:PrestigeBoss.s
	//		TaskID:Boss??????
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$itemid = 0
		$Radomlimit = 255
		if $Monid == 14200
			$itemid = 54050
			$Radomlimit = 10
		endif
		if $Monid == 14201
			$itemid = 54051
			$Radomlimit = 10
		endif
		if $Monid == 30001
			$itemid = 54052
			$Radomlimit = 10
			//----BOSS??----
			SetServerVar( 100, 0 )
			//????ID
			$TID0 = GetTeamMemberID( -1, 0 )
			$TID1 = GetTeamMemberID( -1, 1 )
			$TID2 = GetTeamMemberID( -1, 2 )
			$TID3 = GetTeamMemberID( -1, 3 )
			$TID4 = GetTeamMemberID( -1, 4 )
			$TID5 = GetTeamMemberID( -1, 5 )
			$task0 = IsTaskAccept( $TID0, 86 )
			$task1 = IsTaskAccept( $TID1, 86 )
			$task2 = IsTaskAccept( $TID2, 86 )
			$task3 = IsTaskAccept( $TID3, 86 )
			$task4 = IsTaskAccept( $TID4, 86 )
			$task5 = IsTaskAccept( $TID5, 86 )
			
			if $task0 == 0
			endif
			if $task1 == 0
			endif
			if $task2 == 0
			endif
			if $task3 == 0
			endif
			if $task4 == 0
			endif
			if $task5 == 0
			endif
			
			$headerID = GetTeamHeaderID( -1 )
			$playerX = GetPlayerInfo( $headerID, "mapx" )
			$playerY = GetPlayerInfo( $headerID, "mapy" )
			AddMonster( 30165, 1, 87, $playerX, $playerY, 2 )
		endif
		if $Monid == 30002
			$itemid = 54053
			$Radomlimit = 10
			SetServerVar( 101, 0 )
		endif
		if $Monid == 30011
			$itemid = 54058
			$Radomlimit = 10
			//-----BOSS??----
			SetServerVar( 102, 0 )
	
			//?????ID
			$team_head_id =	GetTeamHeaderID (-1)
			//???????
			#player_name = GetPlayerInfo( $team_head_id, "name" )
			//????BOSS???
			BC( "chat", "server", -1, "The hero ",#player_name,"s party has come to Emperor's Catacomb Level 3, and defeated True Dragon Emperor." )
			BC( "screen", "server", -1, "The hero ",#player_name,"s party has come to Emperor's Catacomb Level 3, and defeated True Dragon Emperor."  )
			
			
			
			$map_id = GetPlayerInfo(-1 , "mapid")
			$map_x = GetPlayerInfo(-1 , "mapx")
			$map_y = GetPlayerInfo(-1 , "mapy")
			//????
			AddMonster(44001 ,4 ,$map_id,$map_x, $map_y ,8)
			AddMonster(44002 ,3 ,$map_id,$map_x, $map_y ,8)
			AddMonster(44003 ,2 ,$map_id,$map_x, $map_y ,8)
			AddMonster(44004 ,5 ,$map_id,$map_x, $map_y ,8)
			AddMonster(44005 ,5 ,$map_id,$map_x, $map_y ,8)
		endif
		if $Monid == 30012
			$itemid = 54059
			$Radomlimit = 10
			SetServerVar( 103, 0 )
		endif
		if $Monid == 21208
			$itemid = 54061
			$Radomlimit = 50
		endif
		if $Monid == 30014
			$itemid = 54076
			$Radomlimit = 70
		endif
		if $Monid == 30015
			$itemid = 54077
			$Radomlimit = 70
		endif
		if $Monid == 30060
			$itemid = 54060
			$Radomlimit = 100
		endif
		if $Monid == 21225
			$itemid = 54075
			$Radomlimit = 100
		endif
		if $Monid == 21235
			$itemid = 54062
			$Radomlimit = 120
		endif
		if $Monid == 21245
			$itemid = 54063
			$Radomlimit = 120
		endif
		if $Monid == 12023
			$itemid = 54068
			$Radomlimit = 120
		endif
		if $Monid == 12033
			$itemid = 54069
			$Radomlimit = 120
		endif
		if $Monid == 53210
			$itemid = 54293
			$Radomlimit = 150
		endif
		if $Monid == 12075
			$itemid = 54294
			$Radomlimit = 150
		endif
		if $Monid == 12086
			$itemid = 54295
			$Radomlimit = 150
		endif
		$Radomlimit = $Radomlimit * 2
		$get = RandomNumber( 0, $Radomlimit )
		if $get > 0
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			return
		endif
		
		AddPlayerInfo( -1 , "item" , $itemid , 1 )
		
	}