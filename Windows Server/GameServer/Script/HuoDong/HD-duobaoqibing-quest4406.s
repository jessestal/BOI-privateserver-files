	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/1/16
	//		Author：祁晶
	//		TaskName：HD-duobaoqibing-quest4406.s
	//		TaskID：夺宝奇兵任务完成
	//
	//****************************************
	
	
	
	function OnTaskFailedDone(){
		
		$map_id = GetPlayerInfo( -1, "mapid")
		//BC( "chat", "player", -1, "test:",$map_id )
		if $map_id == 154
			FlyToMap( -1, 475, 83, 47 )
			return
		endif
		
	}

