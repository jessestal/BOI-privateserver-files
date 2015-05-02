   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author: ??
	//		TaskName:Ectype-RYMC-Item-63463.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){

		$ectype_ID = GetEctypeID(-1 ,223)
		$is_summon = GetEctypeVar(-1 ,3)
		if $is_summon == 1
			BC("screen", "map", $ectype_ID, "The ritual to summon Efreet has been finished. Unable to use Engraved Fingerband.")
			return
		endif
		$mapid = GetPlayerInfo(-1 , "mapid")
		$x = GetPlayerInfo(-1 , "mapx")
		$y = GetPlayerInfo(-1 , "mapy")
		
		if $mapid < 10051
			if $mapid > 10100
				BC("screen", "player", -1, "Engraved Fingerband must be used at Flame Altar of Lava Heights.")
				return
			endif
		endif
		
		if $x < 33
			BC("screen", "player", -1, "Please use it near Flame Altar.")
			return
		endif
		
		if $y < 58
			BC("screen", "player", -1, "Please use it near Flame Altar.")
			return
		endif
		
		if $x > 35
			BC("screen", "player", -1, "Please use it near Flame Altar.")
			return
		endif
		
		if $y > 60
			BC("screen", "player", -1, "Please use it near Flame Altar.")
			return
		endif
		
		$ItemID1 = SubPlayerInfo( -1, "item", 63463, 1 )
		if $ItemID1 != 0
			return
		endif
		SetEctypeVar(-1 ,3,1)
		$ectype_type = GetEctypeVar(-1 ,0)
		if $ectype_type == 0
			AddMonster( 51165, 1,$ectype_ID, $x, $y, 0 )
			BC("screen", "map", $ectype_ID, "Efreet Sultan: Ah! I can feel my strength returning to me! I have waited so long...!")
		else
			if $ectype_type == 2
				AddMonster( 51475, 1,$ectype_ID, $x, $y, 0 )
				BC("screen", "map", $ectype_ID, "Efreet Sultan: Ah! I can feel my strength returning to me! I have waited so long...!")
			else
			
				AddMonster( 51185, 1,$ectype_ID, $x, $y, 0 )
				BC("screen", "map", $ectype_ID, "Efreet Sultan: Ah! I can feel my strength returning to me! I have waited so long...!")
			endif
		endif


	}