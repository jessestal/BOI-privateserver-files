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
//-----------------------------------------------------------------------------------
			$week = GetSystemTime("week")
			if $week != 0
//				BC("dialogbox","player",-1,"You can't participate until this Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
//		  	BC("dialogbox","player",-1,"You haven't joined a guild, you can't participate!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
//				BC("dialogbox","player",-1,"Your guild hasn't signed up for this yet, you can't participate!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute
//$time = GetPlayerVar(-1,4070)
//BC("screen","player",-1,"time = ",$time)
			if $time < 2000
//				BC("dialogbox","player",-1,"GUID:03875000003")
				return
			endif
			if $time < 2020
//------?????????????process??,??????
				//------??????????
				$lineid = GetServerLineID()
				$guildidline = GetGuildVar($guildid,22)
				if $guildidline < 1
					return
				endif
				if $lineid != $guildidline
					BC("screen","player",-1,"Your Guild is currently aboard The Zephyr, Realm ",$guildidline,"! Please switch realms if you want to participate!")
					return
				endif
				//------
				$process = GetGuildVar($guildid,16)
				if $process == 1
					$cnt = GetServerVar(300)
					SetGuildVar($guildid,15,$cnt)
					$glectpID = $cnt / 2
					$glectpID = $glectpID + 1
					$enterCT = $cnt % 2
					SetGuildVar($guildid,17,$enterCT)
					SetGuildVar($guildid,10,$glectpID)
					SetGuildVar($guildid,16,2)
					$cnt = $cnt + 1
					SetServerVar(300,$cnt)
					BC("chat","guild",$guildid,"The Guild has begun boarding The Zephyr!")
				endif
				return
			endif
//------?????????????process??,?????????
			if $time > 2020
				$process = GetGuildVar($guildid,16)
				//------??????????
				$lineid = GetServerLineID()
				$guildidline = 3
				if $lineid != $guildidline
					$globalvar = GetGlobalVar(137)
					if $globalvar < 9
						//------???????????? 
						BC("screen","player",-1,"Eurus' Wasteland is currently in Realm ",$guildidline,"! Please switch realms if you want to participate!")
					endif
					return
				endif
				//------
				if $process == 2
					$rank = 21
					$key = 301
					while $key <= 308
						$getguildID = GetServerVar($key)
						if $getguildID == $guildid
							$rank = $key - 300
							SetGuildVar($guildid,16,3)
							SetGuildVar($guildid,10,$rank)
							return
						endif
						$key = $key + 1
					endwhile
				endif
				return
			endif
//------------------------------------------------------------------------------

		}

//???????
		function OnOption0(){

			$playerid = GetPlayerID()
			FlyToMap($playerid,173,55,66,0)

		}

//???????(20:25)
		function OnOption1(){

			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"You can't participate until this Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a guild, you can't participate!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your guild hasn't signed up for this yet, you can't participate!")
				return
			endif
			$level = GetPlayerInfo($playerid,"level")
			if $level < 75
				BC("dialogbox","player",-1,"You have to be at least LV75 to participate!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute
//$time = GetPlayerVar(-1,4070)
			if $time < 2025
				BC("dialogbox","player",-1,"Eurus' Wasteland will start at 20:25! Please wait until then!")
				return
			endif
			//------?????????
			$globalvar = GetGlobalVar(137)
			if $globalvar == 9
				BC("dialogbox","player",-1,"The Demonshard Throne event has already ended!")
				return
			endif
			//------??????????
			$lineid = GetServerLineID()
			$guildidline = 3
			if $lineid != $guildidline
				BC("dialogbox","player",-1,"Eurus' Wasteland is currently in Realm ",$guildidline,"! Please switch realms if you want to participate!")
				return
			endif
//------------?????????
			$process = GetGuildVar($guildid,16)
			//?????
			if $process == 3
				$suc = FlyToEctype($playerid,546,51,51)
//				BC("chat","player",-1,"suc=",$suc)
				BC("screen","player",-1,"You've entered Eurus' Wasteland.")
				SetPlayerVar($playerid,3422,$chday)
				SetPlayerVar($playerid,3839,$guildid)
				//-----
				$ectype_id = GetEctypeID($playerid,546)
				if $ectype_id > 0
					$ecguild = GetEctypeVar($ectype_id,111)
					if $ecguild == 0
					 SetEctypeVar($ectype_id,111,$guildid)
					endif
				else
					BC("messagebox","player",-1,"An error occurred when entering!  Please try again.")
					FlyToMap($playerid,173,55,66,0)
				endif
				return
			endif
			//????
			if $process == 2
				BC("dialogbox","player",-1,"Your Guild was not one of the top 8 Guilds aboard The Zephyr. You cannot participate in Eurus' Wasteland.")
				return
			endif
			if $process == 1
				BC("dialogbox","player",-1,"Your Guild was not one of the top 8 Guilds aboard The Zephyr. You cannot participate in Eurus' Wasteland.")
				return
			endif
//			BC("dialogbox","player",-1,"GUID:03875000021"$process)
			BC("dialogbox","player",-1,"Cannot board The Zephyr at the moment. Please try again!")

		}

