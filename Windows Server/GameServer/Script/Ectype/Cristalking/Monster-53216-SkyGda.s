	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************

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
		
		$var_exist_mon = 21
		$exist_mon = GetEctypeVar($ectype_id,$var_exist_mon)
		$exist_mon -= 1
		SetEctypeVar($ectype_id,$var_exist_mon,$exist_mon)
		
		$enterCT = GetGuildVar($guildid,17)
			
		if $enterCT == 0
			$var_Eng1 = 15
			$var_Eng2 = 16
			$var_ept = 19
			$var_dead_mon = 23
			$var_ept_all = 37
			
			$dead_mon = GetEctypeVar($ectype_id,$var_dead_mon)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$var_dead_mon,$dead_mon)
			
			$tm_Eng = GetEctypeVar($ectype_id,$var_Eng1)
			
			$ept_all = GetEctypeVar($ectype_id,$var_ept_all)
			$maxEng = 10 * $ept_all
			$maxEng = $maxEng + 50
//BC("chat","player",-1,"tm_Eng=",$tm_Eng,"|ept_all=",$ept_all,"|maxEng=",$maxEng)


			if $tm_Eng < $maxEng
				$tm_Eng += 1
				SetEctypeVar($ectype_id,$var_Eng1,$tm_Eng)
			endif
			
			if $tm_Eng >= $maxEng
				$tm_Eng_ano = GetEctypeVar($ectype_id,$var_Eng2)
				if $tm_Eng_ano >= $maxEng
					$ept = GetEctypeVar($ectype_id,$var_ept)
					if $ept < 5
						SetEctypeVar($ectype_id,$var_Eng1,0)
						SetEctypeVar($ectype_id,$var_Eng2,0)
						$ept += 1
						SetEctypeVar($ectype_id,$var_ept,$ept)
						$ept_all += 1
						SetEctypeVar($ectype_id,$var_ept_all,$ept_all)
						#gname = GetPlayerInfo($playerid,"guildname")
						BC("screen","map",$ectype_id,"The ",#gname," Guild received 1 Zephyr Point!")
						SetEctypeVar($ectype_id,4,1)
					endif
				endif
			endif
			
		else
		
			$var_Eng1 = 17
			$var_Eng2 = 18
			$var_ept = 20
			$var_dead_mon = 24
			$var_ept_all = 38
			
			$dead_mon = GetEctypeVar($ectype_id,$var_dead_mon)
			$dead_mon += 1
			SetEctypeVar($ectype_id,$var_dead_mon,$dead_mon)
			
			$tm_Eng = GetEctypeVar($ectype_id,$var_Eng1)
			
			$ept_all = GetEctypeVar($ectype_id,$var_ept_all)
			$maxEng = 10 * $ept_all
			$maxEng = $maxEng + 50
			
			if $tm_Eng < $maxEng
				$tm_Eng += 1
				SetEctypeVar($ectype_id,$var_Eng1,$tm_Eng)
			endif
			
			if $tm_Eng >= $maxEng
				$tm_Eng_ano = GetEctypeVar($ectype_id,$var_Eng2)
				if $tm_Eng_ano >= $maxEng
					$ept = GetEctypeVar($ectype_id,$var_ept)
					if $ept < 5
						SetEctypeVar($ectype_id,$var_Eng1,0)
						SetEctypeVar($ectype_id,$var_Eng2,0)
						$ept += 1
						SetEctypeVar($ectype_id,$var_ept,$ept)
						$ept_all += 1
						SetEctypeVar($ectype_id,$var_ept_all,$ept_all)
						#gname = GetPlayerInfo($playerid,"guildname")
						BC("screen","map",$ectype_id,"The ",#gname," Guild received 1 Zephyr Point!")
						SetEctypeVar($ectype_id,4,1)
					endif
				endif
			endif
		
		endif
		
		
		
		
		
		
	}