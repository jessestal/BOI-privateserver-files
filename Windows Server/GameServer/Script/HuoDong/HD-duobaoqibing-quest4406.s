	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/1/16
	//		Author���
	//		TaskName��HD-duobaoqibing-quest4406.s
	//		TaskID���ᱦ����������
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

