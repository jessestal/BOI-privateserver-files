	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/09
	//		Author:??
	//		TaskName:HD-cangbaotu-QUEST-4330
	//		TaskID:???????????
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		
		$n = RandomNumber ( 1, 10 )
		//??BOSS???????
		
		$n2 = RandomNumber ( 1, 2 )
		//????????????,??????????
		//SubPlayerInfo( -1, "item", 63084, -1 )
		if $level < 50
			if $n == 1
				AddPlayerInfo( -1 ,"item", 63085, 1 )
			endif
			if $n == 2
				AddPlayerInfo( -1 ,"item", 63086, 1 )
			endif
			if $n == 3
				AddPlayerInfo( -1 ,"item", 63087, 1 )
			endif
			if $n == 4
				AddPlayerInfo( -1 ,"item", 63088, 1 )
			endif
			if $n == 5
				AddPlayerInfo( -1 ,"item", 63089, 1 )
			endif
			if $n == 6
				AddPlayerInfo( -1 ,"item", 63090, 1 )
			endif
			if $n == 7
				AddPlayerInfo( -1 ,"item", 63091, 1 )
			endif
			if $n == 8
				AddPlayerInfo( -1 ,"item", 63092, 1 )
			endif
			if $n == 9
				AddPlayerInfo( -1 ,"item", 63093, 1 )
			endif
			if $n == 10
				if $n2 == 1
					AddPlayerInfo( -1 ,"item", 63094, 1 )
				else
					AddPlayerInfo( -1 ,"item", 63085, 1 )
				endif
			endif
		endif
		
		//---------------------------------------------------
		if $level >= 50
			if $level < 60
				if $n == 1
					AddPlayerInfo( -1 ,"item", 63095, 1 )
				endif
				if $n == 2
					AddPlayerInfo( -1 ,"item", 63096, 1 )
				endif
				if $n == 3
					AddPlayerInfo( -1 ,"item", 63097, 1 )
				endif
				if $n == 4
					AddPlayerInfo( -1 ,"item", 63098, 1 )
				endif
				if $n == 5
					AddPlayerInfo( -1 ,"item", 63099, 1 )
				endif
				if $n == 6
					AddPlayerInfo( -1 ,"item", 63100, 1 )
				endif
				if $n == 7
					AddPlayerInfo( -1 ,"item", 63101, 1 )
				endif
				if $n == 8
					AddPlayerInfo( -1 ,"item", 63102, 1 )
				endif
				if $n == 9
					AddPlayerInfo( -1 ,"item", 63103, 1 )
				endif
				if $n == 10
					if $n2 == 1
						AddPlayerInfo( -1 ,"item", 63104, 1 )
					else
						AddPlayerInfo( -1 ,"item", 63095, 1 )
					endif
				endif
			endif
		endif
		//--------------------------------------------------------
		if $level >= 60
			if $level < 70
				if $n == 1
					AddPlayerInfo( -1 ,"item", 63105, 1 )
				endif
				if $n == 2
					AddPlayerInfo( -1 ,"item", 63106, 1 )
				endif
				if $n == 3
					AddPlayerInfo( -1 ,"item", 63107, 1 )
				endif
				if $n == 4
					AddPlayerInfo( -1 ,"item", 63108, 1 )
				endif
				if $n == 5
					AddPlayerInfo( -1 ,"item", 63109, 1 )
				endif
				if $n == 6
					AddPlayerInfo( -1 ,"item", 63110, 1 )
				endif
				if $n == 7
					AddPlayerInfo( -1 ,"item", 63111, 1 )
				endif
				if $n == 8
					AddPlayerInfo( -1 ,"item", 63112, 1 )
				endif
				if $n == 9
					AddPlayerInfo( -1 ,"item", 63113, 1 )
				endif
				if $n == 10
					if $n2 == 1
						AddPlayerInfo( -1 ,"item", 63114, 1 )
					else
						AddPlayerInfo( -1 ,"item", 63105, 1 )
					endif
				endif
			endif
		endif
		//-----------------------------------------------
		if $level >= 70
			if $level < 80
				if $n == 1
					AddPlayerInfo( -1 ,"item", 63115, 1 )
				endif
				if $n == 2
					AddPlayerInfo( -1 ,"item", 63116, 1 )
				endif
				if $n == 3
					AddPlayerInfo( -1 ,"item", 63117, 1 )
				endif
				if $n == 4
					AddPlayerInfo( -1 ,"item", 63118, 1 )
				endif
				if $n == 5
					AddPlayerInfo( -1 ,"item", 63119, 1 )
				endif
				if $n == 6
					AddPlayerInfo( -1 ,"item", 63120, 1 )
				endif
				if $n == 7
					AddPlayerInfo( -1 ,"item", 63121, 1 )
				endif
				if $n == 8
					AddPlayerInfo( -1 ,"item", 63122, 1 )
				endif
				if $n == 9
					AddPlayerInfo( -1 ,"item", 63123, 1 )
				endif
				if $n == 10
					if $n2 == 1
						AddPlayerInfo( -1 ,"item", 63124, 1 )
					else
						AddPlayerInfo( -1 ,"item", 63115, 1 )
					endif
				endif
			endif
		endif
		//--------------------------
		//?????5?,90??????80-90??,????????????
		if $level >= 80
				if $n == 1
					AddPlayerInfo( -1 ,"item", 63125, 1 )
				endif
				if $n == 2
					AddPlayerInfo( -1 ,"item", 63125, 1 )
				endif
				if $n == 3
					AddPlayerInfo( -1 ,"item", 63126, 1 )
				endif
				if $n == 4
					AddPlayerInfo( -1 ,"item", 63126, 1 )
				endif
				if $n == 5
					AddPlayerInfo( -1 ,"item", 63127, 1 )
				endif
				if $n == 6
					AddPlayerInfo( -1 ,"item", 63127, 1 )
				endif
				if $n == 7
					AddPlayerInfo( -1 ,"item", 63128, 1 )
				endif
				if $n == 8
					AddPlayerInfo( -1 ,"item", 63128, 1 )
				endif
				if $n == 9
					AddPlayerInfo( -1 ,"item", 63128, 1 )
				endif
				if $n == 10
					if $n2 == 1
						AddPlayerInfo( -1 ,"item", 63129, 1 )
					else
						AddPlayerInfo( -1 ,"item", 63125, 1 )
					endif
				endif
		endif
		//???????
		$a = $level * $level
		$b = $a * 2
		$add_exp = $b + 200
		
		//????????
		$status_value = IsExistStatus(-1 , 10520)
		if $status_value == 0
			//????
			$b1 = $add_exp / 2
			$add_exp = $add_exp + $b1
			AddPlayerInfo( -1, "item", 63271, 1)
			BC( "chat", "player", -1, "Get bonus EXP for Transform: ", $b1,"Received Magician's Chest.")
		endif
		//????????
		AddPlayerInfo( -1, "exp", $add_exp )
	}