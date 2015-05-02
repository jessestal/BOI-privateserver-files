	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/05
	//		Author:??
	//		TaskName:QUEST-npc189.s
	//		TaskID:??NPC189??????
	//
	//****************************************
	
	function OnOption0(){
	
		$result = IsTaskDone( -1, 552 )
		//????????
		if $result != 1
			BC( "screen", "player", -1, "Recently we are investigating illegal raiding on shipwrecks and artifact smugglings. If you have found anything, please contact us." )
			return
		endif
		//???????????
		$value = GetPlayerVar( -1, 1 )
		if $value == 1
			BC( "screen", "player", -1, "I thank you for your donation, in behalf of the charity organization." )
			return
		endif
		//?????
		$money = GetPlayerInfo( -1, "money" )
		if $money < 100
			BC( "screen", "player", -1, "You don't have enough money for a proper donation." )
			return
		endif
		
		AddPlayerInfo( -1, "exp", 15000 )
		BC( "chat", "player", -1, "Gain EXP: 15000" )
		//?????
		AddTitle(-1,17)
		SubPlayerInfo( -1, "money", 100)
		SetPlayerVar( -1, 1,1)
	}
	
	function OnOption1(){
	
		$result = IsTaskDone( -1, 552 )
		//????????
		if $result != 1
			BC( "screen", "player", -1, "Recently we are investigating illegal raiding on shipwrecks and artifact smugglings. If you have found anything, please contact us." )
			return
		endif
		//???????????
		$value = GetPlayerVar( -1, 1 )
		if $value == 1
			BC( "screen", "player", -1, "I thank you for your donation, in behalf of the charity organization." )
			return
		endif
		//?????
		$money = GetPlayerInfo( -1, "money" )
		if $money < 500
			BC( "screen", "player", -1, "You don't have enough money for a proper donation." )
			return
		endif
		
		AddPlayerInfo( -1, "exp", 25000 )
		BC( "chat", "player", -1, "Gain EXP: 25000" )
		//?????
		AddTitle(-1,18)
		SubPlayerInfo( -1, "money", 500)
		SetPlayerVar( -1, 1,1)
	
	
	
	}
	
	function OnOption2(){
	
	
		$result = IsTaskDone( -1, 552 )
		//????????
		if $result != 1
			BC( "screen", "player", -1, "Recently we are investigating illegal raiding on shipwrecks and artifact smugglings. If you have found anything, please contact us." )
			return
		endif
		//???????????
		$value = GetPlayerVar( -1, 1 )
		if $value == 1
			BC( "screen", "player", -1, "I thank you for your donation, in behalf of the charity organization." )
			return
		endif
		//?????
		$money = GetPlayerInfo( -1, "money" )
		if $money < 1000
			BC( "screen", "player", -1, "You don't have enough money for a proper donation." )
			return
		endif
		
		AddPlayerInfo( -1, "exp", 35000 )
		BC( "chat", "player", -1, "Gain EXP: 35000" )
		//?????
		AddTitle(-1,19)
		SubPlayerInfo( -1, "money", 1000)
		SetPlayerVar( -1,1,1)
	
	}