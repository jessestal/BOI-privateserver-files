	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-115-Undead01.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ItemID1 = 12432
		
		$PlayerItem1 = GetPlayerInfo( -1, "item", $ItemID1 )
		if $PlayerItem1 < 1
			BC( "dialogbox", "player", -1, "Unable to unleash the medal's power without Undead Badge." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 0 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID1, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 65345, 1 )
		PlayEffect( -1, "skill\Monster\boss\yemu\fire\tx_yemu_fire.ini" )
	}