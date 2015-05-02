
		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:2011??
		//		TaskID:
		//
		//****************************************

		function OnRequest(){
			
			$year = GetSystemTime("year")
			$month = GetSystemTime("month")
			$mday = GetSystemTime("mday")

			if $year != 2011
				DisableNpcOption(0)
				DisableNpcOption(1)
			else
				if $month != 12
					DisableNpcOption(0)
					DisableNpcOption(1)
				else
					if $mday < 20
						DisableNpcOption(0)
						DisableNpcOption(1)
					else
						if $mday > 26
							DisableNpcOption(0)
							DisableNpcOption(1)
						endif
						if $mday < 25
							DisableNpcOption(1)
						endif
					endif
				endif
			endif

		}
		
		function OnOption0(){
//?????
			$yday = GetSystemTime("yday")
			$playerid = GetPlayerID()
			$playerday = GetPlayerVar($playerid,4014)
			$mday = GetSystemTime("mday")
			$level = GetPlayerInfo($playerid,"level")
			
			if $level < 45
				BC("dialogbox","player",-1,"You must be at least LV45 to join the Watering event. ")
				return
			endif
			
			if $playerday == $yday
				BC("dialogbox","player",-1,"You have watered Christmas tree today, thanks.\n\n{#ffe00808=Merry Christmas!!!#}")
				return
			endif
			
			$taskid = 1767
			while $taskid <= 1769
				$taskacced = IsTaskAccept($playerid,$taskid)
				if $taskacced == 0
					BC("dialogbox","player",-1,"Please finish the Christmas' Greeting quest first.")
					return
				endif
				$taskid = $taskid + 1
			endwhile
			
			$count = GetTaskCount($playerid)
			if $count > 20
				BC("dialogbox","player",-1,"Your quest list is full, can't acquire quest.")
				return
			endif
			
			$item1 = GetPlayerInfo($playerid,"item",44142)
			if $item1 < 1
				BC("dialogbox","player",-1,"You need at least one Snowsprite Dew to water!\nSnowsprite Dew can be obtained from Fallen Darkness, Dragon Island, or Trial for the Brave.")
				return
			endif
			
			SubPlayerInfo($playerid,"item",44142,$item1)
//			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
//			if $nullitem < 1
//				BC("dialogbox","player",-1,"GUID:04803000005")
//				return
//			endif
			$gift = GetPlayerVar($playerid,3304)
			if $mday == 20
				SetPlayerVar($playerid,3304,1)
			else
				$gift = $gift + 1
				SetPlayerVar($playerid,3304,1)
			endif
			SetPlayerVar($playerid,4014,$yday)
			$growup = GetGlobalVar(60)
			$luckybuff = RandomNumber(0,99)
			$luckybuff = $luckybuff - $item1
			if $luckybuff < 50
				$growup2 = $growup + 2
				BC("dialogbox","player",-1,"You have watered the Spirit Christmas Tree, and get a lot of EXP. The growth value of Spirit Christmas Tree is increased by 1.\n\nThanks to your good luck, the growth value of Spirit Christmas Tree increased by an additional 1.\nThe Spirit Christmas Tree's current growth value is ",$growup2,"Click\nto receive a small gift: Salary Card (200)!\n\nYou acquired the quest Christmas' Greeting.")
				AddPlayerInfo($playerid,"item",59141,1)
			else
				$growup2 = $growup + 1
				BC("dialogbox","player",-1,"You have watered the Spirit Christmas Tree, and get a lot of EXP. The growth value of Spirit Christmas Tree is increased by 1, and is now ",$growup2," points.\n\n\nYou have acquired the quest Christmas' greeting.")
			endif
			SetGlobalVar(60,$growup2)
			
			$taskid = RandomNumber(1767,1769)
			AcceptTask($playerid,$taskid)
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
			
			if $growup < 2500
				if $growup2 >= 2500
					BC("screen","server",-1,"The growth value of Spirit Christmas Tree has reached 2500. When Christmas comes, all players above LV45 can reveive a reward!")
					BC("chat","server",-1,"The growth value of Spirit Christmas Tree has reached 2500. When Christmas comes, all players above LV45 can reveive a reward!")
				endif
			endif
			if $growup < 2000
				if $growup2 >= 2000
					DeleteNPC(2319)
					DeleteNPC(2320)
					AddNPC(2321)
					BC("screen","server",-1,"The growth value of Spirit Christmas Tree has reached 2000. ")
					BC("chat","server",-1,"The growth value of Spirit Christmas Tree has reached 2000. ")
				endif
			endif
			if $growup < 1000
				if $growup2 >= 1000
					DeleteNPC(2319)
					AddNPC(2320)
					DeleteNPC(2321)
					BC("screen","server",-1,"The growth value of Spirit Christmas Tree has reached 1000. ")
					BC("chat","server",-1,"The growth value of Spirit Christmas Tree has reached 1000. ")
				endif
			endif
			if $growup < 500
				if $growup2 >= 500
					BC("screen","server",-1,"The growth value of Spirit Christmas Tree has reached 500. ")
					BC("chat","server",-1,"The growth value of Spirit Christmas Tree has reached 500. ")
				endif
			endif
			if $growup < 1500
				if $growup2 >= 1500
					BC("screen","server",-1,"The growth value of Spirit Christmas Tree has reached 1500. ")
					BC("chat","server",-1,"The growth value of Spirit Christmas Tree has reached 1500. ")
				endif
			endif
			
		}


		function OnOption1(){
//??????
			
			$playerid = GetPlayerID()
			$growup = GetGlobalVar(60)
			$gift = GetPlayerVar($playerid,3304)
			
			if $growup < 2500
				BC("dialogbox","player",-1,"The growth value of Spirit Christmas Tree is below 2500. Can't receive reward. ")
				return
			endif
			if $gift == 10
				BC("dialogbox","player",-1,"You've already received the reward.")
				return
			endif
			
			SetPlayerVar($playerid,3304,10)
			AddPlayerInfo($playerid,"item",44140,1)
			AddPlayerInfo($playerid,"item",44140,$gift)
			BC("dialogbox","player",-1,"Receive reward successfully. Merry Christmas!\nDuing the Christmas event, you watered the tree ",$gift," times, and get ",$gift," Christmas cards.")
			
			
			
		}
