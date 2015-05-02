
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12
	//		Author:???
	//		TaskName:2012????
	//		TaskID:
	//
	//****************************************

//	function OnRequest(){
//
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		if $year != 2012
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//		else
//			if $month != 1
//				DisableNpcOption(0)
//				DisableNpcOption(1)
//				DisableNpcOption(2)
//				if $mday < 21
//					DisableNpcOption(0)
//					DisableNpcOption(1)
//					DisableNpcOption(2)
//				endif
//			endif
//		endif
//
//	}
//
//	function OnOption0(){
////????
//
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		if $year != 2012
//			return
//		else
//			if $month != 1
//				return
//			else
//				if $mday < 21
//					return
//				endif
//			endif
//		endif
//
//		$yday = GetSystemTime("yday")
//		$playerid = GetPlayerID()
//		$playerday = GetPlayerVar($playerid,4014)
//		$level = GetPlayerInfo($playerid,"level")
//
//		if $level < 60
//			BC("dialogbox","player",-1,"You must be at least LV60 to join this event.")
//			return
//		endif
//
//		if $playerday == $yday
//			BC("dialogbox","player",-1,"You've already received the reward today.")
//			return
//		endif
//
//		$taskid = 1821
//		$taskacced = IsTaskAccept($playerid,$taskid)
//		if $taskacced == 0
//			BC("dialogbox","player",-1,"You must finish the Happy Spring Festival quest first.")
//			return
//		endif
//
//		$count = GetTaskCount($playerid)
//		if $count > 20
//			BC("dialogbox","player",-1,"Your quest list is full, can't acquire quest.")
//			return
//		endif
//
//		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"Insufficient bag slots!")
//			return
//		endif
//
////44155	????
////44153	?????
//		SetPlayerVar($playerid,4014,$yday)
//		$taskid = 1821
//		AcceptTask($playerid,$taskid)
//		AddPlayerInfo($playerid,"item",44155,1)
//		BC("dialogbox","player",-1,"You have received New Year's blessing!\nYou can also participate in the New Year's Beast event.\n\nYou received the Happy Spring Festival quest.")
//
//	}
//
//
//
//	function OnOption1(){
////????
//
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		if $year != 2012
//			return
//		else
//			if $month != 1
//				return
//			else
//				if $mday < 21
//					return
//				endif
//			endif
//		endif
//
//		$gethour = GetSystemTime("hour")
//		if $gethour < 19
//			BC("dialogbox","player",-1,"Please come and acqurie at the CNY Festival Beast event time!")
//			return
//		endif
//		if $gethour > 20
//			BC("dialogbox","player",-1,"Please come and acqurie at the CNY Festival Beast event time!")
//			return
//		endif
//
//		$yday = GetSystemTime("yday")
//		$playerid = GetPlayerID()
//		$playerday = GetPlayerVar($playerid,4048)
//		$level = GetPlayerInfo($playerid,"level")
//
//		if $level < 60
//			BC("dialogbox","player",-1,"You must be at least LV60 to join this event.")
//			return
//		endif
//
//		if $playerday == $yday
//			BC("dialogbox","player",-1,"You have lit a firecracker today!")
//			return
//		endif
//
//		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"Insufficient bag slots!")
//			return
//		endif
//
////44153	?????
//		SetPlayerVar($playerid,4048,$yday)
//		AddPlayerInfo($playerid,"item",44153,2)
//		BC("dialogbox","player",-1,"You have received Large Skysoaring Firecracker successfully! Good luck!")
//
//
//	}
//	
//	function OnOption2(){
////?????????????
//		
//		$year = GetSystemTime("year")
//		$month = GetSystemTime("month")
//		$mday = GetSystemTime("mday")
//		if $year != 2012
//			return
//		else
//			if $month != 1
//				return
//			else
//				if $mday < 21
//					return
//				endif
//			endif
//		endif
//		
//		$gethour = GetSystemTime("hour")
//		if $gethour < 20
//			BC("dialogbox","player",-1,"Please come back at the end of the Festival Beast event.")
//			return
//		endif
//		$getminute = GetSystemTime("minute")
//		if $getminute < 15
//			BC("dialogbox","player",-1,"Please come back at the end of the Festival Beast event.")
//			return
//		endif
//		
//		$playerid = GetPlayerID()
//		$score = GetPlayerVar($playerid,4015)
//		$joinday = GetPlayerVar($playerid,4049)
//		$getyday = GetSystemTime("yday")
//		if $joinday != $getyday
//			BC("dialogbox","player",-1,"Sorry, you didn't take part in the event, so you can't get a reward.")
//			return
//		endif
//		if $score == 1
//			BC("dialogbox","player",-1,"Sorry, you've already received your reward, so you can't get another.")
//			return
//		endif
//		
//		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"Insufficient bag slots!")
//			return
//		endif
//		
//		$countbag = GetGlobalVar(65)
//		
//		if $score < 999
//			if $score >= 625
//				AddPlayerInfo($playerid,"item",44157,5)
//				BC("dialogbox","player",-1,"You earned ",$score," points in the event, earning you 5 New Year's Beast packs.")
//				$countbag = $countbag + 5
//			endif
//		endif
//		
//		if $score < 625
//			if $score >= 450
//				AddPlayerInfo($playerid,"item",44157,3)
//				BC("dialogbox","player",-1,"You earned ",$score," points in the event, earning you 3 New Year's Beast packs.")
//				$countbag = $countbag + 3
//			endif
//		endif
//		
//		if $score < 450
//			if $score >= 250
//				AddPlayerInfo($playerid,"item",44157,1)
//				BC("dialogbox","player",-1,"You earned ",$score," points in the event, earning you a New Year's Beast pack.")
//				$countbag = $countbag + 1
//			endif
//		endif
//		
//		if $score < 250
//			if $score >= 0
//				AddPlayerInfo($playerid,"item",59615,1)
//				BC("dialogbox","player",-1,"You earned ",$score," points in the event, earning you an EXP card.")
//			endif
//		endif
//		
//		SetPlayerVar($playerid,4015,1)
//		SetGlobalVar(65,$countbag)
//
//		
////59615	?????
////59103	????????
////44155	????
////44156	????
////44157	????
//
//	}