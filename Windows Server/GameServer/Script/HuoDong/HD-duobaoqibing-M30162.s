   //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/1/18
	//		Author:??
	//		TaskName:HD-duobaoqibing-M30162.s
	//		TaskID:????,??????
	//****************************************
	
	function OnDead(){
	
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Minute =  GetSystemTime( "minute")
		$result = IsTaskAccept( -1, 4406 )

		if $result != 0
			BC("screen", "player", -1, "Unable to get a reward without Bountyhunter quest.")
			return
		endif

		if $Now_Hour >= 21
			if $Now_Hour <= 22
				$level = GetPlayerInfo(-1 , "level")
				$add_money = $level * $level
				AddPlayerInfo (-1, "money", $add_money)
			endif
		endif
		//??.23?00???
		if $Now_Hour == 23
			if $Now_Minute == 0
				$level = GetPlayerInfo(-1 , "level")
				$add_money = $level * $level
				AddPlayerInfo (-1, "money", $add_money)
			endif
		endif
	}
