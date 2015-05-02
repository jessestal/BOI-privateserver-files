    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/10
	//		Author:???
	//		TaskName:Monster-52046.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		
		//???????+1
		//$count = GetServerVar( 112 )
		//$count = $count + 1
		//SetServerVar( 112 , $count )
		
		//????????,??
		$result = IsCeremonyOn(2)
		if $result == 0
			BC( "screen", "player", -1, "No ceremony is in progress. Unable to get rewards." )
			return
		endif
		
		//100%???
		AddPlayerInfo( -1 , "exp" , 1000 )
		BC( "screen", "player", -1 , "You feel happy for eating a delicious meal, increasing EXP by 1000 points!" )
		
		
		//???????,????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 2
			BC( "screen", "player", -1, "Unable to get rewards. Please keep at least 2 bag slots empty." )
		else
			AddPlayerInfo( -1 , "item" , 6807 , 1 )
			AddPlayerInfo( -1 , "item" , 52015 , 1 )
		endif
		
		//??
		PlayEffect( -1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_05.ini" )
		
		
		$id1 = GetCeremonyHostID(2, 0)
		$id2 = GetCeremonyHostID(2, 1)
		
		//????????,??
		$rea = CheckRelation($id1, $id2)
		if $rea != 3
			BC( "screen", "player", $id1 , "A meal has been eaten. Unable to receive Bliss EXP since you are not married." )
			BC( "screen", "player", $id1 , "A meal has been eaten. Unable to receive Bliss EXP since you are not married." )
			return
		endif
		
		//????????????,???????????
		$mapid1 = GetPlayerInfo($id1, "mapid")
		$mapid2 = GetPlayerInfo($id2, "mapid")
		//???????????
		if $mapid1 == 208
			if $mapid2 == 208
				BC( "screen", "player", $id1, "A meal has been eaten. Your Bliss EXP has increased by 10." )
				BC( "screen", "player", $id2, "A meal has been eaten. Your Bliss EXP has increased by 10." )
				$loveexp = 10
				AddLoveExp( $id1, $loveexp )
				AddLoveExp( $id2, $loveexp )
			else
				BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
				BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			endif
		else
			BC( "screen", "player", $id1, "Both husband and wife are not present. Unable to get Bliss EXP." )
			BC( "screen", "player", $id2, "Both husband and wife are not present. Unable to get Bliss EXP." )
			
		endif
	}