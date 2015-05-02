		//****************************************
		//
		//		Copyright：PERFECT WORLD
		//		Modified：2011-12
		//		Author：胡斌涛
		//		TaskName：元旦任务
		//		TaskID：
		//
		//****************************************

	function OnTaskDone(){

//44145	魔法棒
//39 64414	神之果实Lv4
//52 59312	经验之书（绑定）
//44144	泡泡糖
//76 63691	奥丁魂玉之光*5
//84 44093	节日双倍经验石（30）
//44143	黄金蛋
//96 1			强化水晶
//100 6390	女神之泪

		$playerid = GetPlayerID()
		$randombuff = RandomNumber(0,99)
//BC("chat","player",-1,"randombuff = ",$randombuff)
		if $randombuff < 39
			AddPlayerInfo($playerid,"item",44145,1)
		else
			if $randombuff < 52
				AddPlayerInfo($playerid,"item",44145,3)
			else
				if $randombuff < 76
					AddPlayerInfo($playerid,"item",44144,1)
				else
					if $randombuff < 84
						AddPlayerInfo($playerid,"item",44144,3)
					else
						if $randombuff < 96
							AddPlayerInfo($playerid,"item",44143,1)
						else
							AddPlayerInfo($playerid,"item",44143,3)
						endif
					endif
				endif
			endif
		endif


//(lvl+35)^3*2
		$lvl = GetPlayerInfo($playerid,"level")
		$exp0 = $lvl + 35
		$exp1 = $exp0 * $exp0
		$exp1 = $exp1 * $exp0
		$exp1 = $exp1 * 2
//(lvl+60)^2*35
		$lvlf = GetFieldLevel($playerid)
		$exp2 = $lvlf + 60
		$exp2 = $exp2 * $exp2
		$exp2 = $exp2 * 35
		AddPlayerInfo($playerid,"exp",$exp1)
		if $lvlf > 0
			AddFieldExp($playerid,$exp2)
		endif

	}

	function OnTaskAccept(){

		$playerid = GetPlayerID()

	}