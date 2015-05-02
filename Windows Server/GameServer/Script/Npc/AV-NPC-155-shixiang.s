	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-155-shixiang.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$Item = GetPlayerInfo( -1, "item", 12553 )
		if $Item > 0
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$Item = GetPlayerInfo( -1, "item", 12553 )
		if $Item > 0
			BC( "dialogbox", "player", -1, "You already have Stone of Curse." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 0 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddPlayerInfo( -1, "item", 12553, 1 )
	}