 	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/6/26
	//		Author£ºÖì½¨³¼
	//		TaskName£ºMonster-10412.s
	//		TaskID£º
	//****************************************
	
	function OnDead(){
		
		$star = 0
		$weekday = GetSystemTime ( "week" )
		$hour = GetSystemTime ( "hour" )
		$guai1 = GetGlobalVar(134)
		
		if $weekday == 3
			if $hour >= 16
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
		
		if $weekday == 4
			if $hour >= 14
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
						
		if $weekday == 5
			if $hour >= 14
				if $hour < 16
					$star = 1
				endif
			endif
		endif
		
		$renwu1 = IsTaskAccept(-1,1860)
		$renwu2 = IsTaskAccept(-1,1861)
		
		if $star == 1
			if $renwu1 == 0
				if $guai1 == 3
					DropMonsterItems(-1,90177)
				endif
			endif
		endif
		
		if $star == 1
			if $renwu2 == 0
				if $guai1 == 3
					DropMonsterItems(-1,90177)
				endif
			endif
		endif
		
		
				
	
	}