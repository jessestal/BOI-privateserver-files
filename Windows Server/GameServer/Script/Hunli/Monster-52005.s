    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/10
	//		Author:???
	//		TaskName:Monster-52005.s
	//		TaskID:??-??1
	//****************************************
	
	function OnDead(){
	
		//????????,??
		$result = IsCeremonyOn(2)
		if $result == 0
			BC( "screen", "map", 208, "Wedding accomplished." )
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
		
		AddPlayerInfo(-1, "exp", 100)
		PlayEffect( -1, "Effect\common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" )
		
		
		//??????
		$n = RandomNumber( 0 , 100 )
		if $n < 10
			BC( "chat", "map", 208, "You will be blessed." )
		endif
		if $n > 90
			BC( "chat", "map", 208, "You will be happy ever after." )
		endif
		
		
		$id1 = GetCeremonyHostID(2, 0)
		$id2 = GetCeremonyHostID(2, 1)
		
		//????????,??
		$rea = CheckRelation($id1, $id2)
		if $rea != 3
			BC( "screen", "player", $id1 , "A balloon has been released. Unable to receive Bliss EXP since you are not married." )
			BC( "screen", "player", $id2 , "A balloon has been released. Unable to receive Bliss EXP since you are not married." )	
			return
		endif
		
		$count = GetServerVar(109)
		$count = $count + 1
		SetServerVar( 109, $count )
		//365??????
		//????????????,???????????
		$mapid1 = GetPlayerInfo($id1, "mapid")
		$mapid2 = GetPlayerInfo($id2, "mapid")
		//???????????
		if $count < 366
			if $mapid1 == 208
				if $mapid2 == 208
					if $n < 10
						BC( "screen", "player", $id1, "A balloon has been released. Your Bliss EXP is increased by 1." )
						BC( "screen", "player", $id2, "A balloon has been released. Your Bliss EXP is increased by 1." )
					endif
					AddLoveExp($id1, 1 )
					AddLoveExp($id2, 1 )
				else
					BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
					BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
				endif
			else
				BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
				BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			endif
		endif
			
		
		//????+1,???=180?,??????1,?1???2
		if $count < 180
			//if $count == 50
			//	BC( "screen", "map", 208, "GUID:04693000012" )
			//endif
			//???1???1
			//BC( "screen", "map", 208, "GUID:04693000013" , $count , "GUID:04693000014" )
			$result = AddMonster(52005, 1, 208, 64, 66, 10 )
		
		//????180???????????1?,?1???2
		else
			//BC( "screen", "map", 208, "GUID:04693000015" , $count , "GUID:04693000016" )
			//if $count == 180
			//	//???10??????1000????,????????
			//	AddMapPlayerInfo(208, "exp", 1000)
			
			//	if $mapid1 == 208
			//		AddLoveExp($id1, 1000)
			//	endif
			//	//???????????
			//	if $mapid2 == 208
			//		AddLoveExp($id2, 1000)
			//	endif
			//	BC( "screen", "map", 208, "GUID:04693000017" )
			//endif
			
			if $count < 366
				$result = AddMonster(52006, 1, 208, 68, 62, 10)
			endif
		endif

	}