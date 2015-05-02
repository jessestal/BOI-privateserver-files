   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/02
	//		Author:??
	//		TaskName:Ectype-Monster-kuloudao51142.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		
		
		$ectype_ID = GetEctypeID(-1 ,222)
		
		//??????
		$ectype_type = GetEctypeVar(-1 ,0)
		
		//??????
		$player_hp = GetPlayerInfo(-1 ,"hp")
		$sub_hp = $player_hp / 10
		SubPlayerInfo(-1 ,"hp" , $sub_hp)
		
		#name = GetPlayerInfo(-1 ,"name")
		BC("screen", "map", $ectype_ID, #name," sheds their blood on the coin, attempting to break the curse.")
		BC("screen", "map", $ectype_ID, "Pirate Captain Barbert: Touch my treasure, eh?! Guess I'll have to kill you myself!")
		if $ectype_type == 0
			AddMonster( 51115, 1,$ectype_ID, 54, 36,  0 )
		else
			if $ectype_type == 1
				AddMonster( 51135, 1, $ectype_ID, 54, 36,  0 )
			else
				AddMonster( 51455, 1, $ectype_ID, 54, 36,  0 )
			endif
		endif
		
	}