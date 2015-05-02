 	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/4/29
	//		Author：司文博
	//		TaskName：Monster-20179.s
	//		TaskID：家族财宝守护者
	//****************************************
	
	function OnDead(){
	
		$result = IsTaskAccept( -1,1300 )
		if $result != 0
			return
		endif
		
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		
		AddMonster(40158,1,$mapid,$x,$y,1 )
	
	
	}