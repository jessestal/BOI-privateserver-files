	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011-11-4
	//		Author������
	//		TaskName��HD-duobaoqibing-quest4406.s
	//		TaskID�����޵�����
	//
	//****************************************
	
	
	
	function OnTaskFailedDone(){
		
		$map_id = GetPlayerInfo( -1, "mapid")
		//BC( "chat", "player", -1, "test:",$map_id )
		if $map_id == 291
			FlyToMap( -1, 153, 58, 23 )
			return
		endif
		
	}

