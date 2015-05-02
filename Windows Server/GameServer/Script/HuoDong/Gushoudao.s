	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011-11-4
	//		Author£∫Õı”Í
	//		TaskName£∫HD-duobaoqibing-quest4406.s
	//		TaskID£∫π≈ ﬁµ∫¥´ÀÕ
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

