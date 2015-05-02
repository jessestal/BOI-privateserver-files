  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：LordDropItemCard.s
	//		TaskID：领主掉落银卡(需要该地图所有小怪卡)
	//
	//****************************************
	
	function OnDead(){
		
		$Monid = GetMonsterTemplateID(-1)
		$cardid = 0
		$startid = 0
		$cishu = 0
		if $Monid == 20991
			$cardid = 11001
			$startid = 10105
			$cishu = 5
		endif
		if $Monid == 20992
			$cardid = 11002
			$startid = 10114
			$cishu = 8
		endif
		if $Monid == 21001
			$cardid = 11003
			$startid = 10122
			$cishu = 9
		endif
		if $Monid == 21002
			$cardid = 11004
			$startid = 10230
			$cishu = 3
		endif
		if $Monid == 21003
			$cardid = 11005
			$startid = 10233
			$cishu = 3
		endif
		if $Monid == 21004
			$cardid = 11006
			$startid = 10220
			$cishu = 4
		endif
		if $Monid == 21005
			$cardid = 11007
			$startid = 10122
			$cishu = 9
		endif
		if $Monid == 21006
			$cardid = 11008
			$startid = 10236
			$cishu = 3
		endif
		if $Monid == 21007
			$cardid = 11009
			$startid = 10224
			$cishu = 4
		endif
		if $Monid == 21008
			$cardid = 11010
			$startid = 10239
			$cishu = 3
		endif
		if $Monid == 21009
			$cardid = 11011
			$startid = 10131
			$cishu = 7
		endif
		if $Monid == 21010
			$cardid = 11012
			$startid = 10138
			$cishu = 7
		endif
		if $Monid == 21011
			$cardid = 11013
			$startid = 10145
			$cishu = 7
		endif
		if $Monid == 21012
			$cardid = 11014
			$startid = 10152
			$cishu = 6
		endif
		if $Monid == 21013
			$cardid = 11015
			$startid = 10170
			$cishu = 6
		endif
		if $Monid == 21014
			$cardid = 11016
			$startid = 10196
			$cishu = 7
		endif
		if $Monid == 21015
			$cardid = 11017
			$startid = 10181
			$cishu = 7
		endif
		if $Monid == 21016
			$cardid = 11018
			$startid = 10203
			$cishu = 7
		endif
		if $Monid == 21017
			$cardid = 11019
			$startid = 10158
			$cishu = 3
		endif
		if $Monid == 21018
			$cardid = 11020
			$startid = 10161
			$cishu = 3
		endif
		if $Monid == 21019
			$cardid = 11021
			$startid = 10188
			$cishu = 8
		endif
		if $Monid == 21020
			$cardid = 11022
			$startid = 10164
			$cishu = 3
		endif
		if $Monid == 21021
			$cardid = 11023
			$startid = 10210
			$cishu = 7
		endif
		if $Monid == 21025
			$cardid = 11024
			$startid = 10292
			$cishu = 5
		endif
		if $Monid == 21026
			$cardid = 11025
			$startid = 10299
			$cishu = 4
		endif
		
		$get = RandomNumber( 0, 20 )
		if $get > 0
			return
		endif
		
		$HorN = HaveTarot( -1 , $cardid )
		if $HorN != 0
			return
		endif
		
		$i = 0
		while $i < $cishu
			$xiaoid = $startid + $i
			$havexiao = HaveTarot( -1 , $xiaoid )
			if $havexiao != 1
				return
			endif
			$i = $i + 1
		endwhile
		
		AddTarotCard( -1 , $cardid )
	}