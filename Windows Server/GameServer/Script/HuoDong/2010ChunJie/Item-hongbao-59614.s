		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-hongbao-59614.s
	//		TaskID:2010?????
	//****************************************
 
	function OnUseItem(){
		
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 45
			BC( "dialogbox", "player", -1, "You can open the gift when you reached LV45. ")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59614, 1 )
		if $result != 0
			return
		endif
	
		if $lv >= 45
			if $lv < 60
				AddPlayerInfo( -1, "money", 40000 )
			endif
		endif
		
		
		if $lv >= 60
			if $lv < 75
				AddPlayerInfo( -1, "money", 60000 )
			endif
		endif
		
		if $lv >= 75
			if $lv < 90
				AddPlayerInfo( -1, "money", 100000 )
			endif
		endif
		
		if $lv >= 90
			AddPlayerInfo( -1, "money", 120000 )
		endif
		
		
		
						
	}