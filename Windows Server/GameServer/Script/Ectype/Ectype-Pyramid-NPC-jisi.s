	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/04
	//		Author:???
	//		TaskName:Ectype-Pyramid-NPC-jisi.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 20
			DisableNpcOption(0)
		endif
		
	}
	
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1 ,232 )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 20
			BC( "dialogbox", "player", -1, "has succeeded to summon the Arch Priestess." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 50037 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "More food is needed to complete the ritual. Kill Little Boar and gather Pork Chops." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 50037, 1 )
		if $SubItem != 0
			return
		endif
		
		$ectype_type = GetEctypeVar( -1, 115 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 115, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		$ectype_type = 20 - $ectype_type
		if $ectype_type > 0
			BC( "screen", "map", $ectype_ID, "You must offer ",$ectype_type," more Pork Chops to awaken the statue." )
		endif
		
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 20
			BC( "screen", "map", $ectype_ID, "You have awakened my from my thousand-year sleep. This mistake shall be your last!" )
			$playerX = GetPlayerInfo( -1, "mapx" )
			$playerY = GetPlayerInfo( -1, "mapy" )
			$ectype_var = GetEctypeVar( -1, 4 )
			if $ectype_var == 0
				AddMonster( 51494, 1, $ectype_ID, $playerX, $playerY , 1 )
			else
				AddMonster( 51225, 1, $ectype_ID, $playerX, $playerY , 1 )
			endif
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
		
	}