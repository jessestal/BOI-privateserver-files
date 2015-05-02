		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:????
		//		TaskID:
		//
		//****************************************

		function OnRequest(){

//0-????????????
//1-????????
//2-????????
//3-????????????	??3859
//4-??????-????????

			$playerid = GetPlayerID()
			$player_uid = GetPlayerVar($playerid, 3856 )
			$ectype_id = GetEctypeID($playerid, 531 )
//??????-??????-?????????--1
//???????-????-????
			if $ectype_id <= 0
				DisableNpcOption(1)
				DisableNpcOption(2)
			else
				DisableNpcOption(0)
				DisableNpcOption(3)
			endif
//???285??,?????285????--2
			$is285 = IsTaskAccept( $playerid, 285 )
			$is285d = IsTaskDone( $playerid, 285 )
			if $is285 == 1
				if $is285d == 1
					DisableNpcOption(0)
				endif
			endif

//??297???????--3
//???297????????
			$is297d = IsTaskDone( $playerid, 297 )
			if $is297d == 0
				DisableNpcOption(0)
//				BC("screen","player",-1,"DisableNpcOption = 3-1")
			else
				DisableNpcOption(3)
				DisableNpcOption(4)
//				BC("screen","player",-1,"DisableNpcOption = 3-2")
			endif

//???304????????--4
			$is304 = IsTaskAccept( $playerid, 304 )
			if $is304 != 0
				DisableNpcOption(3)
//				BC("screen","player",-1,"DisableNpcOption = 4")
			endif
//???????????--5
			$nowday = GetSystemTime("yday")
			$playerday = GetPlayerVar(-1,3859)
			if $nowday == $playerday
				DisableNpcOption(4)
//				BC("screen","player",-1,"DisableNpcOption = 5")
			endif
//??298???,??????--6
			$taskdone = IsTaskDone( $playerid, 298 )
			if $taskdone == 0
				DisableNpcOption(3)
				DisableNpcOption(4)
//				BC("screen","player",-1,"DisableNpcOption = 6")
			endif
//???304????????
			$is304acc = IsTaskAccept(-1,304)
			if $is304acc == 0
				DisableNpcOption(4)
			endif

		}


		function OnOption0(){

			$playerid = GetPlayerID()
			$team = IsPlayerInTeam(-1)
			if $team == 0
				BC("dialogbox","player",-1,"Please leave your Party.")
				return
			endif

			$succeed = FlyToEctype(-1,531,63,119)
			if $succeed > 0
				$ectype_id = GetEctypeID(-1,531)
				SetPlayerVar(-1,3856,$succeed)
				BC("screen","player",-1,"You enter the Sepulcher.")
				SetEctypeVar($ectype_id,110,$playerid)
				StartEctypeTimer($ectype_id,1)
				StartEctypeTimer($ectype_id,3)
			else
				BC("dialogbox","player",-1,"Failed to enter instance!")
				return
			endif
//----------------------????------------------

		}

		function OnOption1(){
			//??
			$ectype_uid = GetEctypeUniqueID(-1,531)
			$player_uid = GetPlayerVar(-1,3856)
			$ectype_id = GetEctypeID(-1,531)
			if $ectype_id <= 0
				BC("screen","player",-1,"Error")
				return
			endif
			if $ectype_uid == $player_uid
				$result = FlyToEctype(-1,531,63,119)
				if $result > 0
					BC("screen","player",-1,"You have returned to the Sepulcher.")
				else
					BC("dialogbox","player",-1,"Error occurred when teleporting into the instance. Error Code: ",$result)
				endif
			else
				BC("dialogbox","player",-1,"You do not belong to this instance anymore.")
			endif
		}


		function OnOption2(){

			$result = ReleaseEctype(-1,531)
			if $succeed == 0
				BC("dialogbox","player",-1,"Instance reset successfully.")
			else
				BC("dialogbox","player",-1,"Failed to reset Instance!")
			endif

		}

		function OnOption3(){

			$playerid = GetPlayerID()
			$team = IsPlayerInTeam(-1)
			if $team == 0
				BC("dialogbox","player",-1,"Please leave your Party.")
				return
			endif

			$succeed = FlyToEctype(-1,531,63,119)
			if $succeed > 0
				$ectype_id = GetEctypeID(-1,531)
				SetPlayerVar(-1,3856,$succeed)
				BC("screen","player",-1,"You have entered the Sepulcher (Daily Mode).")
				SetEctypeVar($ectype_id,110,$playerid)
				SetEctypeVar($ectype_id,10,1)
				StartEctypeTimer($ectype_id,1)
				StartEctypeTimer($ectype_id,3)
			else
				BC("dialogbox","player",-1,"Failed to enter instance!")
				return
			endif
//----------------------????------------------
		}

		function OnOption4(){

			$nowday = GetSystemTime("yday")
			$playerday = GetPlayerVar(-1,3859)
			if $nowday == $playerday
				BC("dialogbox","player",-1,"You have already completed this quest.")
			else
				$is304acc = IsTaskAccept(-1,304)
				if $is304acc == 0
					BC("dialogbox","player",-1,"You have already acquired this quest.")
				else
					AcceptTask(-1,304)
//					SetPlayerVar(-1,3859,$nowday)
				endif
			endif

		}