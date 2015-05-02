	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/17
	//		Author:liuxing
	//
	//****************************************
	
	
	function OnSetLeftCampInfo(){
		$ectype_ID = GetCurEctypeID()

		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$campid = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		$i = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			SetPlayerVar($playerid, 3595, 0)
			$hp = GetPlayerInfo($playerid,"powerwostatus")
			$hp *= 10
			$mhp += $hp
			$i = $i + 1
		endwhile
		PK3V3_CAMP_INFO_SET_MAXHP(#fieldsid,$campid,$mhp)
		PK3V3_CAMP_INFO_SET_HP(#fieldsid,$campid,$mhp)
		$ectype_ID = GetCurEctypeID()
//		BC( "screen", "map",$ectype_ID, "mhp = ", $mhp)
		
	}

	function OnSetRightCampInfo(){
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()

		$campid = 1
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid)
		$i = 0
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid,$i)
			SetPlayerVar($playerid, 3595, 1)
			$hp = GetPlayerInfo($playerid,"powerwostatus")
			$hp *= 10
			$mhp += $hp
			$i = $i + 1
		endwhile
		PK3V3_CAMP_INFO_SET_MAXHP(#fieldsid,$campid,$mhp)
		PK3V3_CAMP_INFO_SET_HP(#fieldsid,$campid,$mhp)
		$ectype_ID = GetCurEctypeID()
//		BC( "screen", "map",$ectype_ID, "mhp = ", $mhp)
		
	}

	function OnEnd(){
		$ectype_ID = GetCurEctypeID()
		#fieldsid = PK3V3_GET_CURRENT_FIELDSID()
		$campid_win = PK3V3_GET_WINNER_CAMPID(#fieldsid)
		$campid_lose = 1 - $campid_win
		
		$i = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_win)
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_win,$i)
			$score = PK3V3_GET_SCORE($playerid)
			$score = $score + 10
			PK3V3_SET_SCORE($playerid,$score)
			$rank = PK3V3_RANK_BY_PLAYERID($playerid)
			$win = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,$campid_win)
			#name = GetPlayerInfo($playerid,"name")
			BC("messagebox","player",$playerid,"| name:",#name," | score:",$score, " | rank:",$rank, " | win:",$win)
			$i = $i + 1
		endwhile
		
		$i = 0
		$playerid_num = PK3V3_CAMP_INFO_GET_PLAYERID_NUM(#fieldsid,$campid_lose)
		while($i < $playerid_num)
			$playerid = PK3V3_CAMP_INFO_GET_PLAYERID(#fieldsid,$campid_lose,$i)
			$score = PK3V3_GET_SCORE($playerid)
			$score = $score + 1
			PK3V3_SET_SCORE($playerid,$score)
			$rank = PK3V3_RANK_BY_PLAYERID($playerid)
			$win = PK3V3_CAMP_INFO_GET_WINS(#fieldsid,$campid_lose)
//			PK3V3_CAMP_INFO_SET_MAXHP(#fieldsid,$campid_lose,0)
//			PK3V3_CAMP_INFO_SET_HP(#fieldsid,$campid_lose,0)
			#name = GetPlayerInfo($playerid,"name")
			BC("messagebox","player",$playerid,"| name:",#name," | score:",$score, " | rank:",$rank, " | win:",$win)
			$i = $i + 1
		endwhile
		
	}

	function OnEnter(){
//		$ectype_ID = GetCurEctypeID()
//		BC( "screen", "map",$ectype_ID, "GUID:02525000000" )
//???????????,?????????id

		
	}

	function OnStart(){
		
		$ectype_ID = GetCurEctypeID()
		CloseMapMask(1)
		StartEctypeTimer($ectype_ID, 1)
		BC("screen","map",$ectype_ID,"The Battle Soul Arena starts now!")
		
	}
