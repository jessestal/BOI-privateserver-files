	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºQuest-caihong-810.s
	//		TaskID£º²Êºç×àÃùÇú
	//
	//****************************************
	
	
	function OnTaskDone(){
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		$level = GetPlayerInfo( -1, "level" )
			if $level > 19
				if $level < 31
					AddMonster( 20928, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 20929, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 20930, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 20931, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 20932, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 20933, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 20934, 1, 153, $playerX, $playerY, 1, -1 )
					return
			endif
	}