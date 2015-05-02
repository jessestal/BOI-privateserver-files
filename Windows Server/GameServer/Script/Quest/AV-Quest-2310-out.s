	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Quest-2310-out.s
	//		TaskID£º´«³ö
	//
	//****************************************
	
	
	function OnTaskFailedDone(){
		$Map = GetPlayerInfo( -1, "mapid" )
		if $Map != 160
			return
		endif
		FlyToMap( -1, 188, 94, 37 )
	}