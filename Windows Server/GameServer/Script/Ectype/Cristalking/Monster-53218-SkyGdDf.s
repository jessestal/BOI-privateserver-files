	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012-8
	//		Author：胡斌涛
	//		TaskName：魔晶王座
	//		TaskID：
	//
	//****************************************
//53218	AI	钢甲符文卫士
//53219	AI	远古符文卫士
//53220	AI	魔力符文卫士
//53221	AI	幸运符文卫士

	function OnDead(){

		$ectype_id = GetEctypeID(-1, 545)
		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		if $ectype_id < 0
			return
		endif
		if $guildid == 0
			FlyToMap($playerid,173,55,66,0)
			return
		endif
		$isend = GetGlobalVar(137)
		if $isend >= 1
			return
		endif
		
		$enterCT = GetGuildVar($guildid,17)
		if $enterCT == 0
			$ectype_varid = 29
			$dead_mon = GetEctypeVar($ectype_id,$ectype_varid)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$ectype_varid,$dead_mon)
			
		else
			$ectype_varid = 33
			$dead_mon = GetEctypeVar($ectype_id,$ectype_varid)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$ectype_varid,$dead_mon)
			
		endif




	}