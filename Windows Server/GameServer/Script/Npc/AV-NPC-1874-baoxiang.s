	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-NPC-1874-baoxiang.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$ItemID1 = 12483
		
		$PlayerItem1 = GetPlayerInfo( -1, "item", $ItemID1 )
		if $PlayerItem1 < 1
			BC( "dialogbox", "player", -1, "The Varraroca Key is required to open Varraroca's Chest." )
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
		
		BC( "screen", "player", -1, "Varraroca's Chest is open. You have acquired the legendary treasure." )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		AddPlayerInfo( -1, "item", 65342, 1 )
		
		$ServerVar = GetServerVar( 59 )
		if $ServerVar != 0
			return
		endif
		$Random = RandomNumber( 1, 100 )
		if $Random == 1
			SetServerVar( 59, 1 )
			AddMonster( 30049, 1, 160, 88, 89, 0 )
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "map", 160, "The hero ",#name,"Opening Varraroca's Chest have enraged the fire demon. A new disaster is arriving." )
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
	}