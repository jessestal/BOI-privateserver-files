	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/06/29
	//		Author：司文博
	//		TaskName：AV-Quest-2311-out.s
	//		TaskID：传出
	//
	//****************************************
	
	
	function OnTaskFailedDone(){
		$Map = GetPlayerInfo( -1, "mapid" )
		if $Map != 161
			return
		endif
		FlyToMap( -1, 188, 76, 77 )
	}