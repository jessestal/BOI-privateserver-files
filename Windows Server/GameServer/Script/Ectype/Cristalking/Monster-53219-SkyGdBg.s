	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************
//53218	AI	??????
//53219	AI	??????
//53220	AI	??????
//53221	AI	??????
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
			$ectype_varid = 30
			$dead_mon = GetEctypeVar($ectype_id,$ectype_varid)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$ectype_varid,$dead_mon)
			
		else
			$ectype_varid = 34
			$dead_mon = GetEctypeVar($ectype_id,$ectype_varid)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$ectype_varid,$dead_mon)
			
		endif
	
		#gname = GetPlayerInfo($playerid,"guildname")
		BC("screen","map",$ectype_id,"The ",#gname," Guild successfully defeated the Ancient Westerwind, greatly increasing the Guild's score!")


	}