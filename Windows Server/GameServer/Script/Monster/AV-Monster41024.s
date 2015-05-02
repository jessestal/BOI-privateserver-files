   	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/04/16
	//		Author：刘晓璐
	//		TaskName：AV-Monster41024.s
	//		TaskID：迷雾洞窟采集（木桶）
	//****************************************
	
	function OnDead(){
		$Status01 = IsExistStatus( -1, 10573 )
		//-----声明魔界之眼状态ID------
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		//-----获取玩家坐标------
		$Rond = RandomNumber( 1, 5 )
		
		if $Status01 != 0
			//没有状态
			DropMonsterItems( -1, 41024 )
			return
			//----掉落一般采集品-----
		endif
		
		if $Rond <= 3
			AddMonster( 32113, 1, 188, $playerX, $playerY, 1, -1 )
			return
			//----召唤鬼魅魂魄-----
		else
			DropMonsterItems( -1, 41024 )
			return
			//----掉落一般采集品-----
		endif
	}
		