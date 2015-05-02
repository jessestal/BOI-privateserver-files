  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：skillzhuque.s
	//		TaskID：朱雀卡牌技能
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6401, 1 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
		$get = RandomNumber( 0, 30 )
		if $get > 0
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 54064 , 1 )
		
	}