    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/10
	//		Author:???
	//		TaskName:Monster-52007.s
	//		TaskID:??-??3
	//****************************************
	
	function OnDead(){
	
		//????????,??
		$result = IsCeremonyOn(2)
		if $result == 0
			BC( "screen", "player", -1 , "Wedding accomplished." )
			return
		endif
	
		//????
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 1
			BC( "screen", "player", -1, "Unable to get rewards. Please keep at least 1 bag slot empty." )
		else
			AddPlayerInfo( -1, "item" , 52015 , 1 )
		endif
		
		AddPlayerInfo( -1 , "exp" , 10000 )
		PlayEffect( -1, "Effect\common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" )
		
		
		$id1 = GetCeremonyHostID(2, 0)
		$id2 = GetCeremonyHostID(2, 1)
		
		//????????,??
		$rea = CheckRelation($id1, $id2)
		if $rea != 3
			BC( "screen", "player", $id1 , "Both husband and wife are not present. Unable to get Bliss EXP." )
			BC( "screen", "player", $id2 , "Both husband and wife are not present. Unable to get Bliss EXP." )	
			return
		endif
		
		
		//????????????,???????????
		$mapid1 = GetPlayerInfo($id1, "mapid")
		$mapid2 = GetPlayerInfo($id2, "mapid")
		//???????????
		if $mapid1 == 208
			if $mapid2 == 208
				BC( "screen", "player", $id1, "A Balloon of Happiness has been released. Your Bliss EXP has increased by 100." )
				BC( "screen", "player", $id2, "A Balloon of Happiness has been released. Your Bliss EXP has increased by 100." )
				AddLoveExp($id1, 100 )
				AddLoveExp($id2, 100 )
			else
				BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
				BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			endif
		else
			BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
			BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			
		endif
		
		//?1????
		$result = AddMonster(52020, 1, 208, 55, 56, 0 )
		BC( "screen", "map", 208, "A Bear Doll of Happiness has showed up. Go and find then to gather Bliss EXP." )
		
		//???????,???????0
		if $result == 0
			SetServerVar(111, 0)
		endif
		
		

	}