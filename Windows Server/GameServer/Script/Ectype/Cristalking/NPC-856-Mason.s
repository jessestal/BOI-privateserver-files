	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7
	//		Author:???
	//		TaskName:???? - The Throne of Magic Crystal
	//		TaskID:
	//****************************************

		function OnRequest(){

			$playerid = GetPlayerID()
//-----------------------------------------------------------------------------------
			$week = GetSystemTime("week")
			if $week != 0
//				BC("dialogbox","player",-1,"You can't participate until Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
//		  	BC("dialogbox","player",-1,"You haven't joined a Guild. You cannot participate!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
//				BC("dialogbox","player",-1,"Your Guild has not registered yet!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute
//$time = GetPlayerVar(-1,4070)
//BC("screen","player",-1,"time = ",$time)
			if $time < 2000
//				BC("dialogbox","player",-1,"GUID:03872000003")
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
					BC("chat","guild",$guildid,"This Guild can begin boarding The Zephyr!")
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
						BC("screen","player",-1,"Eurus' Wasteland is currently on Realm ",$guildidline,"! Please switch realms if you want to participate!")
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

//0 ??????????
		function OnOption0(){

			$playerid = GetPlayerID()
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"Only the Guild Leader can sign up!")
		  	return
		  endif
			$rank = GetPlayerInfo($playerid,"guildrank")
			if $rank != 0
				BC("dialogbox","player",-1,"Only the Guild Leader can sign up!")
				return
			endif
			$guildlevel = GetPlayerInfo($playerid,"guildlevel")
			if $guildlevel < 2
				BC("dialogbox","player",-1,"The Guild must be at least LV2 to participate!")
				return
			endif
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"Please sign up on Sunday!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute


//$time = GetPlayerVar(-1,4070)
			if $time > 1955
				BC("dialogbox","player",-1,"Sorry, the time to register has passed!")
				return
			endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday == $yweek
				BC("dialogbox","player",-1,"Your Guild has already signed up!")
				return
			endif
//------------??
//------------???????????
//------------????
//------------??
			SetGuildVar($guildid,11,$yweek)
			SetGuildVar($guildid,10,0)
			SetGuildVar($guildid,12,0)
			SetGuildVar($guildid,13,0)
			SetGuildVar($guildid,14,0)
			SetGuildVar($guildid,15,0)
			SetGuildVar($guildid,16,1)
			SetGuildVar($guildid,17,0)
			SetGuildVar($guildid,18,0)
			SetGuildVar($guildid,19,0)
			SetGuildVar($guildid,20,0)
			SetGuildVar($guildid,21,0)
//			$randombuff = RandomNumber(0,1)
			$randombuff = 0
			if $randombuff == 0
				SendMail($playerid,"Successfully registered for the Throne of Boreas events.","Your Guild has successfully signed up for the Throne of Boreas events. Please prepare your Guild members to participate today at {#ffff0f0f=20:00#}.\nYou may summon your Guild members from 19:55-20:05 {#ffff0f0f=one time only#}.\nControl Key: Allows you to have access to the Control Panel aboard The Zephyr.\n{#ff0fff0f=You have registered in Realm 3 (make sure to tell your members which realm to be in!)#}",0,44387)
				SetGuildVar($guildid,22,3)
				BC("screen","guild",$guildid,"Your Guild has signed up for the Throne of Boreas events. Guild members, please get ready to participate at 20:00 in Realm 3!")
				BC("chat","guild",$guildid,"Your Guild has signed up for the Throne of Boreas events. Guild members, please get ready to participate at 20:00 in Realm 3!")
			else
				SendMail($playerid,"Successfully registered for the Throne of Boreas events.","Your Guild has successfully signed up for the Throne of Boreas events. Please prepare your Guild members to participate today at {#ffff0f0f=20:00#}.\nYou may summon your Guild members from 19:55-20:05 {#ffff0f0f=one time only#}.\nControl Key: Allows you to have access to the Control Panel aboard The Zephyr.\n{#ff0fff0f=You have registered in Realm 5 (make sure to tell your members which realm to be in!)#}",0,44387)
				SetGuildVar($guildid,22,5)
				BC("screen","guild",$guildid,"Your Guild has signed up for the Throne of Boreas events. Guild members, please get ready to participate at 20:00 in Realm 5!")
				BC("chat","guild",$guildid,"Your Guild has signed up for the Throne of Boreas events. Guild members, please get ready to participate at 20:00 in Realm 5!")
			endif

//			$GlobalVar137 = GetGlobalVar(137)
//			if $GlobalVar137 != 0
				$key = 301
				while $key <= 340
//					BC("chat","player",-1,"key=",$key)
		  		SetServerVar($key,$var)
					$key = $key + 1
				endwhile
				SetGlobalVar(137,0)
				SetServerVar(300,0)
				BC("chat","player",$playerid,"Your Guild has registered for the Throne of Boreas events. Make sure you gather everyone to participate tonight at 20:00!")
//		  else
//				BC("chat","player",$playerid,"GUID:03872000024")
//		  endif
		  

		  
		  

		}

//1 ???????(19:55~20:05)
		function OnOption1(){

			$playerid = GetPlayerID()
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"Only the Guild Leader can use this!")
		  	return
		  endif
			$rank = GetPlayerInfo($playerid,"guildrank")
			if $rank != 0
				BC("dialogbox","player",-1,"Only the Guild Leader can use this!")
				return
			endif
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"Sorry, it isn't the correct time to summon your Guild members!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute


//$time = GetPlayerVar(-1,4070)
			if $time < 1955
				BC("dialogbox","player",-1,"Sorry, it's not yet time to summon your guild members!")
				return
			endif
			if $time > 2005
				BC("dialogbox","player",-1,"Sorry, it's too late to summon your Guild members now!")
				return
			endif
			$yday = GetSystemTime("yday")
			$chday = GetGuildVar($guildid,14)
			if $chday == $yday
				BC("dialogbox","player",-1,"You've just summoned your Guild members. You won't be able summon them again.")
				return
			endif
			SetGuildVar($guildid,14,$yday)
			GuildCall()

		}

//2 ???????
		function OnOption2(){

			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"You can't participate until Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a Guild. You cannot participate!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your Guild has not registered yet!")
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
			if $time < 2000
				BC("dialogbox","player",-1,"You cannot board The Zephyr until 20:00!")
				return
			endif
			if $time >= 2020
				BC("dialogbox","player",-1,"The Zephyr event has ended!")
				return
			endif
			//------??????????
			$lineid = GetServerLineID()
			$guildidline = GetGuildVar($guildid,22)
			if $guildidline < 1
				return
			endif
			if $lineid != $guildidline
				BC("dialogbox","player",-1,"Your Guild is currently aboard The Zephyr, Realm ",$guildidline,"! Please switch realms if you want to participate!")
				return
			endif
//------------?????????
			$process = GetGuildVar($guildid,16)
			//?????
			if $process == 2
				$enterCT = GetGuildVar($guildid,15)
				$enterCT = $enterCT % 2
				if $enterCT == 0
					FlyToEctype($playerid,545,10,31)
					SetPlayerVar($playerid,3595,1)
					BC("screen","player",-1,"You've entered the left side of The Zephyr.")
					$playervar = GetPlayerVar($playerid,3422)
					if $playervar != $chday
						SetPlayerActLog($playerid,9,0)
						SetPlayerVar($playerid,3422,$chday)
					endif
					SetPlayerVar($playerid,3345,$chday)
					SetPlayerVar($playerid,3839,$guildid)
					//-----
					$ectype_id = GetEctypeID($playerid,545)
					if $ectype_id > 0
						$ecguild = GetEctypeVar($ectype_id,111)
						if $ecguild == 0
						 SetEctypeVar($ectype_id,111,$guildid)
						endif
					else
						BC("messagebox","player",-1,"An error occurred when entering!  Please try again.")
						FlyToMap($playerid,173,55,66,0)
					endif
				else
					FlyToEctype($playerid,545,48,31)
					SetPlayerVar($playerid,3595,0)
					BC("screen","player",-1,"You've entered the right side of The Zephyr.")
					$playervar = GetPlayerVar($playerid,3422)
					if $playervar != $chday
						SetPlayerActLog($playerid,9,0)
						SetPlayerVar($playerid,3422,$chday)
					endif
					SetPlayerVar($playerid,3345,$chday)
					SetPlayerVar($playerid,3839,$guildid)
					//-----
					$ectype_id = GetEctypeID($playerid,545)
					if $ectype_id > 0
						$ecguild = GetEctypeVar($ectype_id,112)
						if $ecguild == 0
						 SetEctypeVar($ectype_id,112,$guildid)
						endif
					else
						BC("messagebox","player",-1,"An error occurred when entering!  Please try again.")
						FlyToMap($playerid,173,55,66,0)
					endif
				endif
				#name = GetPlayerInfo($playerid,"name")
				BC("chat","guild",$guildid,"Guild member ",#name," has boarded The Zephyr.")
				return
			endif
			
			if $process == 2
				BC("dialogbox","player",-1,"The Zephyr event has ended! It's now time to enter Eurus' Wasteland.")
			endif
			
//			BC("dialogbox","player",-1,"GUID:03872000046"$process)
			BC("dialogbox","player",-1,"Cannot board The Zephyr right now. Please try again!")

		}

//3 ???????
		function OnOption3(){

			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"You can't participate until Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a Guild. You cannot participate!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your Guild has not registered yet!")
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
				BC("dialogbox","player",-1,"Eurus' Wasteland event hasn't started yet. Come back at 20:25!")
				return
			endif
			//------?????????
			$globalvar = GetGlobalVar(137)
			if $globalvar == 9
				BC("dialogbox","player",-1,"The Throne of Boreas event has already ended!")
				return
			endif
			//------??????????
			$lineid = GetServerLineID()
			$guildidline = 3
			if $lineid != $guildidline
				BC("dialogbox","player",-1,"Eurus' Wasteland is currently on Realm ",$guildidline,"! Please switch realms if you want to participate!")
				return
			endif
//------------?????????
			$process = GetGuildVar($guildid,16)
			//?????
			if $process == 3
				$suc = FlyToEctype($playerid,546,51,51)
//				BC("chat","player",-1,"suc=",$suc)
				BC("screen","player",-1,"You've entered Eurus' Wasteland.")
					$playervar = GetPlayerVar($playerid,3422)
					if $playervar != $chday
						SetPlayerActLog($playerid,9,0)
						SetPlayerVar($playerid,3422,$chday)
					endif
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
				BC("dialogbox","player",-1,"Your Guild was not one of the top 8 ranking Guilds in The Zephyr. You cannot participate in Eurus' Wasteland.")
				return
			endif
			if $process == 1
				BC("dialogbox","player",-1,"Your Guild was not one of the top 8 ranking Guilds in The Zephyr. You cannot participate in Eurus' Wasteland.")
				return
			endif
//			BC("dialogbox","player",-1,"GUID:03872000060"$process)
			BC("dialogbox","player",-1,"Cannot board The Zephyr right now. Please try again!")

		}

//4 ???????
		function OnOption4(){

			$playerid = GetPlayerID()
//-----------------------------------------------------------------------------------
			$week = GetSystemTime("week")
			if $week != 0
				BC("dialogbox","player",-1,"This event will happen on Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a guild yet!")
		  	return
		  endif
			$yweek = GetNowWeek()
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your guild hasn't registered!")
				return
			endif
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute
//$time = GetPlayerVar(-1,4070)
			if $time < 2000
				BC("dialogbox","player",-1,"The Zephyr hasn't begun boarding yet!")
				return
			endif
			//????
			$rank = 21
			$key = 301
			while $key <= 320
				$getguildID = GetServerVar($key)
				if $getguildID == $guildid
					$rank = $key - 300
					$key = 320
				endif
				$key = $key + 1
			endwhile

			$getguildPT = GetGuildVar($guildid,12)

			if $time < 2020
				if $rank < 21
					BC("dialogbox","player",-1,"The Zephyr is currently in flight. Your Guild's current score is ",$getguildPT," and is ranked at number ",$rank,".\nThe top 8 Guilds at the end of the event can move on to Eurus' Wasteland.\nThe top 4 Guilds at the end of Eurus' Wasteland can move on to the Throne of Boreas.")
				else
					BC("dialogbox","player",-1,"The Zephyr is currently in flight. Your Guild's current score is ",$getguildPT," and is currently {#ff009f00=not ranked among the top 20 Guilds yet.#}")
				endif
			else
				if $rank < 21
					BC("dialogbox","player",-1,"The Zephyr's flight has ended. Your Guild's score is ",$getguildPT," and is ranked at number ",$rank,".\nThe top 8 Guilds at the end of the event can move on to Eurus' Wasteland.\nThe top 4 Guilds at the end of Eurus' Wasteland can move on to the Throne of Boreas.")
				else
					BC("dialogbox","player",-1,"The Zephyr's flight has ended. Your Guild's score is ",$getguildPT," and was {#ff009f00=not ranked among the top 20 Guilds.#}")
				endif
			endif

		}



//5 ???????????
		function OnOption5(){
//3345		???????(???????-???)
//4988    ????????ID

			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week > 1
				BC("dialogbox","player",-1,"This reward can only be collected after the event on Sunday and on Monday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a guild yet!")
		  	return
		  endif
			$yweek = GetNowWeek()
			if $week == 1
				if $yweek == 1
					$yweek = 53
				else
					$yweek -= 1
				endif
			endif
			
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute
//$time = GetPlayerVar(-1,4070)
			if $week == 0
				if $time < 2020
					BC("dialogbox","player",-1,"The Zephyr is still currently in flight! Come collect your reward after 20:20.")
					return
				endif
			endif
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your Guild did not participate in the Throne of Boreas!")
				return
			endif
			$globalvar = GetGlobalVar(137)
			if $globalvar < 1
				BC("dialogbox","player",-1,"The Zephyr is still currently in flight! Come collect your reward after 20:20.")
				return
			endif

			$playervar = GetPlayerVar($playerid,3839)
			if $playervar != $guildid
				BC("dialogbox","player",-1,"You don't have any rewards to collect!\nOnly participants of the Throne of Boreas event (including The Zephyr and Eurus' Wasteland) can collect rewards.")
				return
			endif
			$playervar = GetPlayerVar($playerid,3345)
			if $playervar == 99
				BC("dialogbox","player",-1,"You have already collected your reward from participating in The Zephyr.")
				return
			endif
			if $playervar == $chday
				$nullitem = GetPlayerInfo($playerid,"nullitem",0)
				if $nullitem > 0
					SetPlayerVar($playerid,3345,99)
					//????
					$rank = 21
					$key = 301
					while $key <= 320
						$getguildID = GetServerVar($key)
						if $getguildID == $guildid
							$rank = $key - 300
							$key = 320
						endif
						$key = $key + 1
					endwhile
					$isFirst = GetGuildVar($guildid,18)
					if $isFirst == 1
						if $rank < 9
							AddPlayerInfo($playerid,"item",4988,30)
							BC("dialogbox","player",-1,"Congratulations to your Guild for being one of the top 8 on The Zephyr! Enjoy your prize!")
						else
							AddPlayerInfo($playerid,"item",4988,20)
							BC("dialogbox","player",-1,"Congratulations in your Guild's victor aboard The Zephyr! Enjoy your prize!")
						endif
					else
						if $rank < 9
							AddPlayerInfo($playerid,"item",4988,25)
							BC("dialogbox","player",-1,"Congratulations to your Guild for ranking in the top 8! Enjoy your prize!")
						else
							AddPlayerInfo($playerid,"item",4988,15)
							BC("dialogbox","player",-1,"Enjoy your prize!")
						endif
					endif
				else
					BC("dialogbox","player",-1,"You don't have enough space in your bag!")
				endif
			else
				BC("dialogbox","player",-1,"You don't have any rewards to collect!\nOnly those who boarded The Zephyr or took part in the Throne of Boreas can collect rewards.")
			endif

		}



//6 ????????????
		function OnOption6(){
//3422		????????

			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week > 1
				BC("dialogbox","player",-1,"This reward can only be collected after the event on Sunday and on Monday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a guild yet!")
		  	return
		  endif
			$yweek = GetNowWeek()
			if $week == 1
				if $yweek == 1
					$yweek = 53
				else
					$yweek -= 1
				endif
			endif
			
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute

//$time = GetPlayerVar(-1,4070)
			if $week == 0
				if $time < 2030
					BC("dialogbox","player",-1,"This reward can only be collected after the event on Sunday and on Monday!")
					return
				endif
			endif
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your Guild didn't participate in the Throne of Boreas.")
				return
			endif
			$globalvar = GetGlobalVar(137)
			if $globalvar < 9
				BC("dialogbox","player",-1,"The champion of the Throne of Boreas hasn't been decided yet.\nThe Throne of Boreas begins at 20:30.\nOnly the Guild that earns first place in the Throne of Boreas may collect this prize.")
				return
			endif
			$isFirst = GetGuildVar($guildid,13)
			if $isFirst != 999
				BC("dialogbox","player",-1,"Your Guild is not the champion of the Throne of Boreas.")
				return
			endif
			$playervar = GetPlayerVar($playerid,3839)
			if $playervar != $guildid
				BC("dialogbox","player",-1,"You don't have any rewards to collect!\nOnly those who came out victorious in the Throne of Boreas can collect this reward.")
				return
			endif
			$playervar = GetPlayerVar($playerid,3422)
			if $playervar == 99
				BC("dialogbox","player",-1,"You have already collected your reward for this week's Throne of Boreas events! ")
				return
			endif
			if $playervar == $chday
				$nullitem = GetPlayerInfo($playerid,"nullitem",0)
				if $nullitem > 0
					AddPlayerInfo($playerid,"item",21187,1)
					SetPlayerVar($playerid,3422,99)
					BC("chat","player",-1,"You've collected Lord Boreas' completion prize, Lord Boreas' Medal!")
				else
					BC("dialogbox","player",-1,"You don't have enough space in your bag!")
				endif
			else
				BC("dialogbox","player",-1,"You don't have any rewards to collect!\nOnly those who came out victorious in the Throne of Boreas can collect this reward.")
			endif
			
		}
		
		function OnOption7(){
			
			$playerid = GetPlayerID()
			$week = GetSystemTime("week")
			if $week > 0
				BC("dialogbox","player",-1,"The event is only available on Sunday!")
				return
			endif
			$guildid = GetPlayerInfo($playerid,"guildid")
		  if $guildid == 0
		  	BC("dialogbox","player",-1,"You haven't joined a guild yet!")
		  	return
		  endif
			$yweek = GetNowWeek()
			if $week == 1
				if $yweek == 1
					$yweek = 53
				else
					$yweek -= 1
				endif
			endif
			
			$hour = GetSystemTime("hour")
			$minute = GetSystemTime("minute")
			$hour = $hour * 100
			$time = $hour + $minute

			if $time < 2030
				BC("dialogbox","player",-1,"The Throne of Boreas Event has not started yet.")
				return
			endif
			$chday = GetGuildVar($guildid,11)
			if $chday != $yweek
				BC("dialogbox","player",-1,"Your Guild didn't participate in the Throne of Boreas.")
				return
			endif
			$getvar = GetGlobalVar(137)
			if $getvar == 9
				BC("dialogbox","player",-1,"The Throne of Boreas event has ended.")
				return
			endif
			
			$yweek = GetNowWeek()
			$playervar = GetPlayerVar(-1,3435)
			if $yweek == $playervar
				$mapX = 103
				$mapY = 63
				FlyToEctype(-1,561,$mapX,$mapY)
			else
				BC("dialogbox","player",-1,"It seems as if you've never entered the Throne of Boreas; you can't return to it.")
			endif
			
			
		}