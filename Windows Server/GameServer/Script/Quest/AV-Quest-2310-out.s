	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/17
	//		Author�������
	//		TaskName��AV-Quest-2310-out.s
	//		TaskID������
	//
	//****************************************
	
	
	function OnTaskFailedDone(){
		$Map = GetPlayerInfo( -1, "mapid" )
		if $Map != 160
			return
		endif
		FlyToMap( -1, 188, 94, 37 )
	}