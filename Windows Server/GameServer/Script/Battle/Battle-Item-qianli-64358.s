 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/11
	//		Author:???
	//		TaskName:Battle-Item-qianli-64358.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerVar( -1 , 3713 )
		if $a > 300
			BC( "screen", "player", -1, "You have used 300 Potions of Potential today. Unable to use more!" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64358 , 1 )
		if  $info != 0
			return
		endif
		
		$a = $a + 1
		SetPlayerVar( -1 , 3713 , $a )
		AddPotential( -1 , 1 )
	
	}