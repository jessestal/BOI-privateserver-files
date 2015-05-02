    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/10
	//		Author:???
	//		TaskName:Monster-52020.s
	//		TaskID:?? - ???
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
		AddPlayerInfo( -1 , "exp" , 10000 )
		PlayEffect( -1, "Effect\common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" )
		
		
		
		$id1 = GetCeremonyHostID(2, 0)
		$id2 = GetCeremonyHostID(2, 1)
		
		
		//????????,??
		$rea = CheckRelation($id1, $id2)
		if $rea != 3
			BC( "screen", "player", $id1 , "A Bear Doll of Happiness has been found. Unable to receive Bliss EXP since you are not married." )
			BC( "screen", "player", $id2 , "A Bear Doll of Happiness has been found. Unable to receive Bliss EXP since you are not married." )
			return
		endif

		
		
		//????????????????,????
		//$myid = GetPlayerID()
		//if $myid != $id1
		//	if $myid != $id2
		//		$result = AddMonster(52020, 1, 208, 68, 62, 10)
		//		BC( "screen", "map", 208, "GUID:04696000004" )
		//		return
		//	endif
		//endif
		
		
		//?????
		$mapid1 = GetPlayerInfo($id1, "mapid")
		$mapid2 = GetPlayerInfo($id2, "mapid")
		if $mapid1 == 208
				if $mapid2 == 208
					BC( "screen", "player", $id1, "A Bear Doll of Happiness has been found. Your Bliss EXP has increased by 10." )
					BC( "screen", "player", $id2, "A Bear Doll of Happiness has been found. Your Bliss EXP has increased by 10." )
					AddLoveExp($id1, 10 )
					AddLoveExp($id2, 10 )
				else
					BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
					BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
				endif
			else
				BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
				BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			endif
		endif
		
		
		//?????+1,???=10?,???????
		$count = GetServerVar(111)
		$count = $count + 1
		SetServerVar( 111, $count )
		
		if $count < 10
			
			//???1????
			//BC( "screen", "map", 208, "GUID:04696000011" , $count , "GUID:04696000012" )
			
			//??5??????
			$n = RandomNumber( 0 , 4 )
			if $n == 0
				AddMonster(52020, 1, 208, 55, 56, 0 )
			endif
			if $n == 1
				AddMonster(52020, 1, 208, 58, 75, 0 )
			endif
			if $n == 2
				AddMonster(52020, 1, 208, 70, 75, 0 )
			endif
			if $n == 3
				AddMonster(52020, 1, 208, 72, 68, 0 )
			endif
			if $n == 4
				AddMonster(52020, 1, 208, 72, 56, 0 )
			endif
		endif
		
		if $count == 10
			BC( "screen", "map", 208, "Congratulations! You gathered numerous happiness. May all players here be happy always. See you later!" )
		endif

	}