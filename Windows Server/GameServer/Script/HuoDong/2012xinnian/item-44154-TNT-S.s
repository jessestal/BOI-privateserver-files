	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12-6
	//		Author:???
	//		TaskName:?-?????????-?
	//		TaskID:
	//
	//****************************************
//	function OnUseItem(){
	$itemid = GetItemID()
	$del_count = SubPlayerInfo(-1,"item",$itemid,1)
	if $del_count != 0
		return
	endif
//		$playerid = GetPlayerID()
//		$level = GetPlayerInfo($playerid,"level")
//		//????????? 294, ???????? 4015
//		$times = GetServerVar(294)
//		$lasttime = GetPlayerVar(-1,4049)
//		$today = GetSystemTime("yday")
//		//buff?id ?????id + 4000
//		$buff1 = IsExistStatus(-1, "6284")
//		$buff2 = IsExistStatus(-1, "6285")
//		$buff3 = IsExistStatus(-1, "6286")
//		//??????????63 ??????id????64
//		$highestid = GetGlobalVar(64)
//		$highestscore = GetGlobalVar(63)
//		//??id ??? 44153 ??? 44154
//		$item = 44154
//
//		if $buff1 != 0
//			if $buff2 != 0
//				if $buff3 != 0
//					BC("screen","player",-1,"The Firecracker hasn't felt the breath of the New Year's Beast, so it can't be used yet.")
//					return
//				endif
//			endif
//		endif
//
//		//????
//  	$sub = SubPlayerInfo($playerid,"item",$item,1)
//  	if $sub != 0
//			BC("chat","player",-1,"You hear crackling, but the Firecracker is still not lit.")
//			return
//		endif
//
//		//??????????????????????
//		if $lasttime != $today
//			SetPlayerVar(-1, 4015, 0)
//			SetPlayerVar(-1, 4049, $today)
//		endif
//
//		//??????
//		$score = GetPlayerVar(-1,4015)
//		//?????? ??? 20-25  ??? 10-15  ??? 5
//		$b = RandomNumber(10,15)
//		$a = RandomNumber(20,25)
//
//		if $buff1 == 0
//			$score = $score + $a
//			SetPlayerVar(-1, 4015, $score)
//			BC("chat","player",-1,"You lit the firecracker in New Year's Beast event, and obtained ",$a," New Years points. Total points: ",$score)
//			BC("screen","player",-1,"You lit the firecracker in New Year's Beast event, and obtained ",$a," New Years points. Total points: ",$score)
//		else
//			if $buff2 == 0
//				$score = $score + $b
//				SetPlayerVar(-1, 4015, $score)
//				BC("chat","player",-1,"You lit the firecracker in New Year's Beast event, and obtained ",$b," New Years points. Total points: ",$score)
//				BC("screen","player",-1,"You lit the firecracker in New Year's Beast event, and obtained ",$b," New Years points. Total points: ",$score)
//			else
//				if $buff3 == 0
//					$score = $score + 5
//					SetPlayerVar(-1, 4015, $score)
//					BC("chat","player",-1,"You lit the firecracker in New Year's Beast event, and obtained 5 points. Total Points: ",$score)
//					BC("screen","player",-1,"You lit the firecracker in New Year's Beast event, and obtained 5 points. Total Points: ",$score)
//				endif
//			endif
//		endif
//
//		//??????????????
//		if $score > $highestscore
//			SetGlobalVar(63, $score)
//			SetGlobalVar(64, $playerid)
//		endif
//
//		//???????????????id
//		$highestid = GetGlobalVar(64)
//		$highestscore = GetGlobalVar(63)
//
//		//??50???????????id
//		$times = $times + 1
//		if $times < 50
//			SetServerVar(294, $times)
//		else
//			#name = GetPlayerInfo($highestid,"name")
//			SetServerVar(294, 0)
//			BC("screen","server",-1,"Congratulations! ",#name," got the hightest New Year Festival Beast event points: ",$highestscore)
//		endif
//
//
//}