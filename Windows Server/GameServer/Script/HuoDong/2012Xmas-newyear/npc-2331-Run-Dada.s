 //****************************
 //  Copyright:PERFECT WORLD
 //  Modified:2012
 //  Author:???
 //  TaskName:
 //****************************

	function OnRequest(){

		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute

		if $year > 2012
			if $dayadd > 115
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
		endif
		if $year == 2012
			if $dayadd < 1228
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
			if $dayadd <= 1231
				DisableNpcOption(3)
			endif
		endif

		$indexW = 362
		while $indexW <= 366
			$serverid = GetServerVar($indexW)
			if $serverid == 0
				$playerid = GetPlayerID()
				SetServerVar($indexW,$playerid)
				$indexW = 999
			else
				$indexW += 1
			endif
		endwhile

		call checkresult()

	}

//?????????
	function OnOption0(){

		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute

		if $year > 2012
			if $dayadd > 115
				return
			endif
		endif
		if $year == 2012
			if $dayadd < 1228
				return
			endif
		endif

		$playercoin = GetPlayerVar(-1,4049)
		$playergift = GetPlayerVar(-1,4050)
		if $playercoin == 0
			if $playergift == 0
				BC("dialogbox","player",-1,"There is no reward to take.")
				return
			endif
		endif
		$playercoin_ori = $playercoin
		$playergift_ori = $playergift
		$playercoin_add = 0
		$playergift_add = 0


//		???
		while $playercoin > 200
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4049,$playercoin)
				SetPlayerVar(-1,4050,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44562,200)
			$playercoin_add += 200
			$playercoin -= 200
		endwhile
		if $playercoin > 0
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4049,$playercoin)
				SetPlayerVar(-1,4050,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44562,$playercoin)
			$playercoin_add += $playercoin
			$playercoin -= $playercoin
		endif
//		???
		while $playergift > 200
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4049,$playercoin)
				SetPlayerVar(-1,4050,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44563,200)
			$playergift_add += 200
			$playergift -= 200
		endwhile
		if $playergift > 0
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .\n Insufficient bag slots! You need to clear some space in your bag to take the rest Commemorative Coins.")
				SetPlayerVar(-1,4049,$playercoin)
				SetPlayerVar(-1,4050,$playergift)
				call setlog()
				return
			endif
			AddPlayerInfo(-1,"item",44563,$playergift)
			$playergift_add += $playergift
			$playergift -= $playergift
		endif

		BC("dialogbox","player",-1,"You can receive",$playercoin_ori," Commemorative Coins. You've already received",$playercoin_add," .\n","You can receive",$playergift_ori," small gifts. You've already received",$playergift_add," .")
		SetPlayerVar(-1,4049,$playercoin)
		SetPlayerVar(-1,4050,$playergift)
		call setlog()



	}
//???????
	function OnOption1(){

		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute

		if $year > 2012
			if $dayadd > 115
				return
			endif
		endif
		if $year == 2012
			if $dayadd < 1228
				return
			endif
		endif

		$race_result_index = 291
		$playerindex = 286
		$win = 0
		$match = 0
		while $race_result_index <= 298
			$sysg = GetGlobalVar($race_result_index)
			$playerg = GetPlayerVar(-1,$playerindex)
			$playindex = $race_result_index - 290
			if $sysg > 0
				$match += 1
				if $playerg == 1
					$win += 1
//					BC("chat","player",-1,"GUID:04851000031",$playindex,"GUID:04851000032")
					$result = 1
					call textresult()
				else
//					BC("chat","player",-1,"GUID:04851000033",$playindex,"GUID:04851000034")
					$result = 2
					call textresult()
				endif
			else
//					BC("chat","player",-1,"GUID:04851000035",$playindex,"GUID:04851000036")
					$result = 0
					call textresult()
			endif
			$race_result_index += 1
			$playerindex += 1
		endwhile

		$playercoin = GetPlayerVar(-1,4049)
		$playergift = GetPlayerVar(-1,4050)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)

//		BC("chat","player",-1,"match=",$match)
//		BC("chat","player",-1,"win=",$win)
//		BC("chat","player",-1,"playercoin=",$playercoin)
//		BC("chat","player",-1,"playergift=",$playergift)
//		BC("chat","player",-1,"lastjoin=",$lastjoin)
//		BC("chat","player",-1,"lastrace=",$lastrace)

		$win100 = $win * 100
		$winra = $win100 / $match


//		BC("dialogbox","player",-1,"Past Records:",#res1,#res2,#res3,#res4,#res5,#res6,#res7,#res8)
		BC("dialogbox","player",-1,"Victory:",$win," / ",$match,"Win Rate:",$winra,"%","\nAvailable Commemorative Coins:",$playercoin,"\nAvailable small gifts:",$playergift,"\nEmerald Dragon's Blessing:",$chipQ,"\nWhite Tiger's Blessing:",$chipB,"\nScarlet Phoenix's Blessing:",$chipZ,"\nObsidian Turtle's Blessing:",$chipX)



	}


//????????
	function OnOption2(){

		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute

		if $year > 2012
			if $dayadd > 115
				return
			endif
		endif
		if $year == 2012
			if $dayadd < 1228
				return
			endif
		endif

		$race_result_index = 291
		$playerindex = 286
		$win = 0
		$match = 0
		while $race_result_index <= 298
			$sysg = GetGlobalVar($race_result_index)
			$playerg = GetPlayerVar(-1,$playerindex)
			$playindex = $race_result_index - 290
			if $sysg > 0
				$match += 1
				if $playerg == 1
					$win += 1
//					BC("chat","player",-1,"GUID:04851000046",$playindex,"GUID:04851000047")
					$result = 1
					call textresult()
				else
//					BC("chat","player",-1,"GUID:04851000048",$playindex,"GUID:04851000049")
					$result = 2
					call textresult()
				endif
			else
//					BC("chat","player",-1,"GUID:04851000050",$playindex,"GUID:04851000051")
					$result = 0
					call textresult()
			endif
			$race_result_index += 1
			$playerindex += 1
		endwhile

		$playercoin = GetPlayerVar(-1,4049)
		$playergift = GetPlayerVar(-1,4050)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)

//		BC("chat","player",-1,"match=",$match)
//		BC("chat","player",-1,"win=",$win)
//		BC("chat","player",-1,"playercoin=",$playercoin)
//		BC("chat","player",-1,"playergift=",$playergift)
//		BC("chat","player",-1,"lastjoin=",$lastjoin)
//		BC("chat","player",-1,"lastrace=",$lastrace)

		$win100 = $win * 100
		$winra = $win100 / $match


		BC("dialogbox","player",-1,"Past Records:",#res1,#res2,#res3,#res4,#res5,#res6,#res7,#res8)
//		BC("dialogbox","player",-1,"Victory:",$win," / ",$match,"Win Rate:",$winra,"%","\nAvailable Commemorative Coins:",$playercoin,"\nAvailable small gifts:",$playergift,"GUID:04851000057",$chipQ,"GUID:04851000058",$chipB,"GUID:04851000059",$chipZ,"GUID:04851000060",$chipX)



	}


//??????????
	function OnOption3(){

		$mapid = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$year = GetSystemTime("year")
		$month = GetSystemTime("month")
		$mday = GetSystemTime("mday")
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$monthadd = $month * 100
		$dayadd = $monthadd + $mday
		$hour = $hour * 100
		$time = $hour + $minute

		if $year > 2012
			if $dayadd > 115
				return
			endif
		endif
		if $year == 2012
			if $dayadd < 1228
				return
			endif
			if $dayadd <= 1231
				return
			endif
		endif

		$chipitem1 = GetPlayerInfo(-1,"item",44560)
		$chipitem2 = GetPlayerInfo(-1,"item",44561)
		$totalitem = $chipitem1 + $chipitem2
		if $totalitem < 1
			BC("dialogbox","player",-1,"You dont' have a Lucky Jade.")
			return
		endif

		SubPlayerInfo(-1,"item",44560,$chipitem1)
		SubPlayerInfo(-1,"item",44561,$chipitem2)

		$totalitem_ori = $totalitem
		while $totalitem > 200
			AddPlayerInfo(-1,"item",44563,200)
			$totalitem -= 200
		endwhile
		AddPlayerInfo(-1,"item",44563,$totalitem)
		BC("dialogbox","player",-1,"You've received",$totalitem_ori," small gifts.")



	}



	function textresult(){

//			if $sysg > 0
//				$match += 1
//				if $playerg == 1
//					$win += 1
//					BC("chat","player",-1,"GUID:04851000064",$playindex,"GUID:04851000065")
//					$result = 1
//					call textresult()
//				else
//					BC("chat","player",-1,"GUID:04851000066",$playindex,"GUID:04851000067")
//					$result = 2
//					call textresult()
//				endif
//			else
//					BC("chat","player",-1,"GUID:04851000068",$playindex,"GUID:04851000069")
//					$result = 0
//					call textresult()
//			endif

		if $playindex == 1
			if $result == 0
				#res1 = "\n1st Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res1 = "\n1st Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res1 = "\n1st Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 2
			if $result == 0
				#res2 = "\n2nd Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res2 = "\n2nd Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res2 = "\n2nd Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 3
			if $result == 0
				#res3 = "\n3rd Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res3 = "\n3rd Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res3 = "\n3rd Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 4
			if $result == 0
				#res4 = "\n4th Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res4 = "\n4th Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res4 = "\n4th Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 5
			if $result == 0
				#res5 = "\n5th Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res5 = "\n5th Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res5 = "\n5th Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 6
			if $result == 0
				#res6 = "\n6th Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res6 = "\n6th Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res6 = "\n6th Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 7
			if $result == 0
				#res7 = "\n7th Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res7 = "\n7th Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res7 = "\n7th Round: {#ffE00020=Lost the bet#}"
			endif
		endif
		if $playindex == 8
			if $result == 0
				#res8 = "\n8th Round: {#ff808080=Not finished yet#}"
			endif
			if $result == 1
				#res8 = "\n8th Round: {#ff00A020=Won the bet#}"
			endif
			if $result == 2
				#res8 = "\n8th Round: {#ffE00020=Lost the bet#}"
			endif
		endif



	}

	function checkresult(){

	//-----------????----------------------
		$playercoin = GetPlayerVar(-1,4049)
		$playergift = GetPlayerVar(-1,4050)
		$lastjoin = GetPlayerVar(-1,3436)
		$lastrace = GetGlobalVar(299)
		$chipQ = GetPlayerVar(-1,4076)
		$chipB = GetPlayerVar(-1,4077)
		$chipZ = GetPlayerVar(-1,4079)
		$chipX = GetPlayerVar(-1,4080)
		if $chipQ == 0
			if $chipB == 0
				if $chipZ == 0
					if $chipX == 0
						$isret = 1
					endif
				endif
			endif
		endif
		if $isret == 0
			if $lastjoin > 0
				if $lastrace >= $lastjoin
//45	??????	???	??
//46	??????	???	??Q
//47	??????	???	??B
//48	??????	???	??Z
//49	??????	???	??X
					SetPlayerActLog(-1,45,$lastrace)
					SetPlayerActLog(-1,46,$chipQ)
					SetPlayerActLog(-1,47,$chipB)
					SetPlayerActLog(-1,48,$chipZ)
					SetPlayerActLog(-1,49,$chipX)
					$race_result_index = 290 + $lastjoin
					$playerindex = 285 + $lastjoin
					$race_result = GetGlobalVar($race_result_index)
					$gift = 0
	//				BC("chat","player",-1,"race_result_index=",$race_result_index)
	//				BC("chat","player",-1,"race_result=",$race_result)
					if $race_result == 0
//						return
					endif
					if $race_result == 3
						if $chipQ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipQ * 2
							$chipQ = 0
							SendMail(-1,"New Year's Race - Emerald Dragon","Congratulations! The Emerald Dragon you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Emerald Dragon","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipX
					endif
					if $race_result == 4
						if $chipB > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipB * 2
							$chipB = 0
							SendMail(-1,"New Year's Race - White Tiger","Congratulations! The White Tiger you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - White Tiger","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipQ
						$gift += $chipZ
						$gift += $chipX
					endif
					if $race_result == 5
						if $chipZ > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipZ * 2
							$chipZ = 0
							SendMail(-1,"New Year's Race - Scarlet Phoenix","Congratulations! The Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Scarlet Phoenix","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipQ
						$gift += $chipX
					endif
					if $race_result == 6
						if $chipX > 0
							SetPlayerVar(-1,$playerindex,1)
							$coin = $chipX * 2
							$chipX = 0
							SendMail(-1,"New Year's Race - Obsidian Turtle","Congratulations! The Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
						else
							SendMail(-1,"New Year's Race - Obsidian Turtle","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
						endif
						$gift += $chipB
						$gift += $chipZ
						$gift += $chipQ
					endif
					$playercoin += $coin
					$playergift += $gift
					SetPlayerVar(-1,4049,$playercoin)
					SetPlayerVar(-1,4050,$playergift)
//50	??????	???	?coin
//51	??????	???	?gift
					SetPlayerActLog(-1,50,$playercoin)
					SetPlayerActLog(-1,51,$playergift)
					SetPlayerVar(-1,4076,0)
					SetPlayerVar(-1,4077,0)
					SetPlayerVar(-1,4079,0)
					SetPlayerVar(-1,4080,0)
//					BC("chat","player",-1,"GUID:04851000110")
				endif
			endif
		endif
	//-----------????end----------------------

	}


	function setlog(){

//???? ",$playercoin_ori," ????,????? ",$playercoin_add," ?
//???? ",$playergift_ori," ????,????? ",$playergift_add," ?
//		SetPlayerVar(-1,4049,$playercoin)
//		SetPlayerVar(-1,4050,$playergift)
//50	??????	???	?????
//51	??????	???	??coin
//52	??????	???	??coin
//53	??????	???	??coin
//54	??????	???	??gift
//55	??????	???	??gift
//56	??????	???	coingift

		SetPlayerActLog(-1,51,$playercoin_ori)
		SetPlayerActLog(-1,52,$playercoin_add)
		SetPlayerActLog(-1,53,$playercoin)
		SetPlayerActLog(-1,54,$playergift_ori)
		SetPlayerActLog(-1,55,$playergift_add)
		SetPlayerActLog(-1,56,$playergift)

	}
