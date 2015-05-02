   	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/05/19
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Monster43082.s
	//		TaskID£ºÈý½ÇÐÎÁÒÑæÊ¯
	//****************************************
	
	function OnDead(){
		$ItemID = 12480
		$ItemNum = 1
		
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item > 0
			return
		endif
		
		AddPlayerInfo( -1, "item", $ItemID, $ItemNum )		
	}
		