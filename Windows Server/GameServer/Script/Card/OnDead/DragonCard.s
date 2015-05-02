  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：DragonCard.s
	//		TaskID：野外龙掉落银卡
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$Rnum = 0
		if $Monid == 22001
			$Rnum = 1
		endif
		if $Monid == 22002
			$Rnum = 30
		endif
		if $Monid == 22003
			$Rnum = 30
		endif
		if $Monid == 22004
			$Rnum = 60
		endif
		
		if $Monid == 22005
			$Rnum = 60
		endif
		if $Monid == 22006
			$Rnum = 60
		endif
		if $Monid == 22007
			$Rnum = 120
		endif
		if $Monid == 22008
			$Rnum = 120
		endif
		
		if $Monid == 22009
			$Rnum = 120
		endif
		if $Monid == 22010
			$Rnum = 240
		endif
		if $Monid == 22011
			$Rnum = 240
		endif
		if $Monid == 22012
			$Rnum = 240
		endif
		
		if $Monid == 22013
			$Rnum = 480
		endif
		if $Monid == 22014
			$Rnum = 480
		endif
		if $Monid == 22015
			$Rnum = 480
		endif
		if $Monid == 22016
			$Rnum = 720
		endif
		
		if $Monid == 22017
			$Rnum = 720
		endif
		if $Monid == 22018
			$Rnum = 720
		endif
		
		$Rbuff = IsExistStatus(-1 , 11635 )
		if $Rbuff != 0
			return
		endif
		
		$get = RandomNumber( 0, 14400 )
		if $get > $Rnum
			return
		endif
		
		$HorN = HaveTarot( -1 , 11026 )
		if $HorN == 0
			AddTarotCard( -1 , 11026 )
		endif
		
	}