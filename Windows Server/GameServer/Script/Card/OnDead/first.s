  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：first.s
	//		TaskID：第一张金卡
	//
	//****************************************
	
	function OnDead(){
		
		$plevel = GetFieldLevel(-1)
		if $plevel < 40
			return
		endif

		$HorN = HaveTarot( -1 , 20101 )
		if $HorN == 0
			AddTarotCard( -1 , 20101 )
			SetPlayerVar(-1,240,1)
		endif
		
	}