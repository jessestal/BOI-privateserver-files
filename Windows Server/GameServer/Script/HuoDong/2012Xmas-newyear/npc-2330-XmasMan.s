 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
	function OnRequest(){ 
		
		$Now_Year = GetSystemTime("year")
		$Now_Mday = GetSystemTime("mday")
		$Now_Month = GetSystemTime("month")
		$monthadd = $Now_Month * 100
		$dayadd = $monthadd + $Now_Mday
		if $Now_Year > 2012
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $dayadd < 1215
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $dayadd > 1224
			DisableNpcOption(0)
//			DisableNpcOption(1)
		endif
		
	} 
	function OnOption0(){ 
		
		$Now_Year = GetSystemTime("year")
		$Now_Mday = GetSystemTime("mday")
		$Now_Month = GetSystemTime("month")
		$monthadd = $Now_Month * 100
		$dayadd = $monthadd + $Now_Mday
		if $Now_Year > 2012
			return
		endif
		if $dayadd < 1215
			return
		endif
		if $dayadd > 1223
			BC("dialogbox","player",-1,"You can't take rewards now.\n\nIf you have taken rewards for the last 9 days, you can get the Final Victory Pack.")
			return
		endif
		$level = GetPlayerInfo(-1,"level")
		if $level < 40
			BC("dialogbox","player",-1,"Please come back after you reach LV40.")
			return
		endif
		$yday = GetSystemTime("yday")
		$taskday = GetPlayerVar( -1, 4048 )
		if $yday == $taskday
			BC("dialogbox","player",-1,"Merry Christmas! Do you like today's gift?\nYou will get a surprise every day during the event.")
			return
		endif
		
		$times = GetPlayerVar(-1,3393)
		if $times >= 9
			BC("dialogbox","player",-1,"You've already received the gifts today.")
			return
		endif
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("screen","player",-1,"Insufficient bag slots!")
			return
		endif
		
//44554	????
		AddPlayerInfo(-1,"item",44554,1)
		SetPlayerVar(-1,4048,$yday)
		if $dayadd == 1215
			SetPlayerVar(-1,3393,1)
		else
			$times = GetPlayerVar(-1,3393)
			$times += 1
			SetPlayerVar(-1,3393,$times)
		endif
		BC("dialogbox","player",-1,"Merry Christmas!\nYou will get a surprise every day during the event.")
		
	} 
	function OnOption1(){ 
		
		$Now_Year = GetSystemTime("year")
		$Now_Mday = GetSystemTime("mday")
		$Now_Month = GetSystemTime("month")
		$monthadd = $Now_Month * 100
		$dayadd = $monthadd + $Now_Mday
		if $Now_Year > 2012
			return
		endif
		$level = GetPlayerInfo(-1,"level")
		if $level < 40
			BC("dialogbox","player",-1,"Please come back after you reach LV40.")
			return
		endif
		if $dayadd < 1224
			BC("dialogbox","player",-1,"If you take the rewards everyday between Dec. 15 and Dec. 23, you can receive a Final Victory Pack on Dec. 24!")
			return
		endif
		
		$times = GetPlayerVar(-1,3393)
		if $times == 10
			BC("dialogbox","player",-1,"You've already received the gifts today.")
			return
		endif
		if $times == 9
			$nullitem = GetPlayerInfo(-1,"nullitem",0)
			if $nullitem < 1
				BC("screen","player",-1,"Insufficient bag slots!")
				return
			endif
//44555	?????
			AddPlayerInfo(-1,"item",44555,1)
			BC("dialogbox","player",-1,"You can open the gift pack now!")
			SetPlayerVar(-1,3393,10)
			return
		endif
		BC("dialogbox","player",-1,"Sorry, you haven't taken rewards everyday between Dec. 15 and Dec. 23. You can't take the Final Victory Pack.")
		
	} 
