	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12-6
	//		Author:???
	//		TaskName:?-????-?
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
		$playerid = GetPlayerID()
		$level = GetPlayerInfo($playerid,"level")
		
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		
		BC("screen","player",-1,"You opened the Christmas Blessing reward, good luck. ")
		
		$servercount = GetGlobalVar(61)
		$servercount = $servercount + 1
		
		if $level < 75
			ReqAward(-1,15,1)
		else
			$randombuff = RandomNumber(0,9999)
			$servercc = GetGlobalVar(59)
			$pb = 0
			
			if $year == 2011
				if $month == 12
					if $mday >= 20
						if $mday <= 24
							$pb = 1
						else
							if $mday <= 26
								$pb = 2
							endif
						endif
					endif
				endif
			endif
			
			if $servercc >= $pb
				$randombuff = 1234
			endif
			
			if $randombuff == 5000
				ReqAward(-1,17,1)
				$serverc = $serverc + 1
				SetGlobalVar(59,$serverc)
			else
				ReqAward(-1,16,1)
			endif
			
		endif
		
		

	}