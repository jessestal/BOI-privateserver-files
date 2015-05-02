	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºQuest-caihong-827.s
	//		TaskID£º²Êºç×àÃùÇú
	//
	//****************************************
	
	
	function OnTaskDone(){
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		$level = GetPlayerInfo( -1, "level" )
			if $level > 19
				if $level < 31
					AddMonster( 10851, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 30
				if $level < 41
					AddMonster( 10852, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 40
				if $level < 51
					AddMonster( 10853, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 50
				if $level < 61
					AddMonster( 10854, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 60
				if $level < 71
					AddMonster( 10855, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 70
				if $level < 81
					AddMonster( 10856, 1, 153, $playerX, $playerY, 1, -1 )
					return
				endif
			endif
			if $level > 80
					AddMonster( 10857, 1, 153, $playerX, $playerY, 1, -1 )
					return
			endif
	}