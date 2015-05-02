  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：skillqinglong.s
	//		TaskID：青龙卡牌技能
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6399, 1 )
		AddPlayerInfo( -1, "hp", 50000 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
		$get = RandomNumber( 0, 30 )
		if $get > 0
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 54065 , 1 )
		
	}