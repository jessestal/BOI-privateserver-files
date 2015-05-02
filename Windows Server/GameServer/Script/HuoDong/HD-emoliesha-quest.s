	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/12
	//		Author:??
	//		TaskName:HD-emoliesha-quest.s
	//		TaskID:????????
	//
	//****************************************
	//??????
	function OnTaskDone(){
		//
		$status_value = IsExistStatus(-1 , 10521)
		if $status_value == 0
			//????
			$level = GetPlayerInfo(-1 , "level")
			$a = $level * $level 
			$exp = $a * 10
			BC( "chat", "player", -1, "Get bonus EXP for Transform: ", $exp ,", received Magician's Chest." )
			AddPlayerInfo( -1, "item", 63271, 1)
			AddPlayerInfo(-1 , "exp" , $exp )
		endif
		
		//???????????????
		$player_number = GetServerVar(60)
		$player_number = $player_number + 1
		SetServerVar(60 , $player_number)
		if $player_number == 100
			BC( "screen", "map", 111, "Ashura King Tanno: Daring human, you helped Bayard kill my healers, you must pay for it." )
			BC( "screen", "map", 2, "Ashura King Tanno: Daring human, you helped Bayard kill my healers, you must pay for it." )
			return
		endif
		
		if $player_number >= 200
			BC( "screen", "map", 111, "Ashura King Tanno: The Atlantis Array can not stop me, I will sacrifice our demon warriors with your blood." )
			BC( "screen", "map", 2, "Ashura King Tanno: The Atlantis Array can not stop me, I will sacrifice our demon warriors with your blood." )
			AddMonster( 30151, 1, 111, 59, 70, 0 ,0)
			SetServerVar(60 , 0)
			return
		endif
		
	
	}