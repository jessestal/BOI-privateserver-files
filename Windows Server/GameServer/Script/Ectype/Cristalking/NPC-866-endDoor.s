	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:???? - The Throne of Magic Crystal
	//		TaskID:
	//
	//****************************************

	function OnRequest(){
		
		$playerid = GetPlayerID()
		$guildid = GetPlayerInfo($playerid,"guildid")
		if $guildid == 0
			FlyToMap($playerid,173,55,66,0)
			return
		endif
		
		
		
		
	}

//?????????????
	function OnOption0(){

		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID(-1,546)
		$guildid = GetEctypeVar($ectype_id,111)
		if $guildid < 1
			return
		endif
		
		$headerID = GetTeamHeaderID(-1)
		if $headerID != $playerid
			BC("dialogbox","player",-1,"Only the party leader can take that!")
			return
		endif
		
		$item = GetPlayerInfo($playerid,"item",44403)
		if $item > 0
			BC("dialogbox","player",-1,"Don't be greedy, you already have one!")
			return
		endif
		
		$getvar = GetGuildVar($guildid,20)
		$getvar2 = GetEctypeVar($ectype_id,11)
		if $getvar < $getvar2
			$getvar = $getvar2
		endif
		
		$rank = GetEctypeVar($ectype_id,4)
		if $rank > 0
			if $rank < 5
				if $getvar < 5
					$nullitemnm = GetPlayerInfo($playerid,"nullitem",0)
					if $nullitemnm > 0
						AddPlayerInfo($playerid,"item",44403,1)
						$getvar += 1
						SetGuildVar($guildid,20,$getvar)
						SetEctypeVar($ectype_id,11,$getvar)
						#name = GetPlayerInfo($playerid,"name")
						$less = 5 - $getvar
						BC("screen","map",$ectype_id,"Guild Member ",#name," has collected a Key of Boreas! There are ",$less," keys remaining.")
						BC("chat","guild",$guildid,"Guild Member ",#name," has collected a Key of Boreas! There are ",$less," keys remaining.")
					else
						BC("dialogbox","player",-1,"Not enough space in your bag! Please clear some space and try again.")
						return
					endif
				else
					BC("screen","map",$ectype_id,"Your guild's keys have all been collected!")
					return
				endif
			else
				BC("dialogbox","player",-1,"Your guild didn't rank within the top 4 in the Zephyr event!")
				return
			endif
		else
			BC("dialogbox","player",-1,"System error!")
		endif

	}
//	??????(????)
	function OnOption1(){

		$playerid = GetPlayerID()
		$headerID = GetTeamHeaderID(-1)
		$ectype_id = GetEctypeID(-1,546)
		$guildid = GetEctypeVar($ectype_id,111)
		
		$hour = GetSystemTime("hour")
		$minute = GetSystemTime("minute")
		$hour = $hour * 100
		$time = $hour + $minute

//$time = GetPlayerVar(-1,4070)
		if $time < 2030
			BC("dialogbox","player",-1,"The Throne of Boreas has not yet opened. Try again at 20:30.")
			return
		endif
		
		if $headerID != $playerid
			BC("dialogbox","player",-1,"The party leader must have a Key of Boreas to enter the Throne of Boreas!")
			return
		endif
		$item = GetPlayerInfo($playerid,"item",44403)
		if $item < 1
			BC("dialogbox","player",-1,"You don't have a Key of Boreas. Unable to teleport!")
			return
		endif
		
		$getvar = GetGlobalVar(137)
		if $getvar == 9
			BC("dialogbox","player",-1,"The Throne of Boreas event has ended.")
			return
		endif
		
		
		$rank = GetEctypeVar($ectype_id,4)
		if $rank == 1
			$mapx = 163
			$mapy = 201
		endif
		if $rank == 2
			$mapx = 208
			$mapy = 164
		endif
		if $rank == 3
			$mapx = 120
			$mapy = 163
		endif
		if $rank == 4
			$mapx = 164
			$mapy = 113
		endif
		
		$mapx = $mapx * 100
		$mapx = $mapx / 256
		$mapy = $mapy * 100
		$mapy = $mapy / 256
//		BC("chat","player",-1,"mapx=",$mapx,"mapy=",$mapy)
		$suc = SubPlayerInfo($playerid,"item",44403,1)
		if $suc == 0
			$key = 0
			while $key < 6
				$pid = GetTeamMemberID($playerid,$key)
				if $pid > 0
					$suc = FlyToEctype($pid,561,$mapx,$mapy)
//					BC("chat","player",-1,"suc=",$suc)
					if $suc == 0
						BC("screen","player",$pid,"You've entered the Throne of Boreas!")
						$value = RandomNumber(0,1)
						SetPlayerVar($pid,3595,$value)
						$yweek = GetNowWeek()
						SetPlayerVar($pid,3435,$yweek)
					endif
				endif
				$key += 1
			endwhile
		endif
		
		
	}

