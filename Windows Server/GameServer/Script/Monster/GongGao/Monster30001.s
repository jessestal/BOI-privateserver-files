    //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/02/27
	//		Author：刘晓璐
	//		TaskName：GG-monster30001.s
	//		TaskID：霸王章死亡刷王子
	//****************************************
	
	function OnDead(){
		//----BOSS刷新----
		SetServerVar( 100, 0 )
		//获取队员ID
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
		
	}