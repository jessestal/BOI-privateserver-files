   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster41030.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$OrgansVar01 = GetPlayerVar( -1, 3684 )
		$OrgansVar03 = GetPlayerVar( -1, 3683 )		
		$time0 = GetSystemTime( "yday" )
		
		if $OrgansVar03 == $time0
			if $OrgansVar01 < 5
				$OrgansVar01 = GetPlayerVar( -1, 3684 )
				$OrgansVar02 = $OrgansVar01 + 1
				SetPlayerVar( -1, 3684, $OrgansVar02 )
				$Random = RandomNumber( 5000, 50000 )
				AddPlayerInfo( -1, "money", $Random )
				#name = GetPlayerInfo( -1, "name" )
				BC( "screen", "server", -1, "The hero ",#name," has opened Golden Chest in Cave of Haze, and has fortunately acquired ",$Random," coins.")
				DropMonsterItems( -1, 41030 )
				return
			else
				DropMonsterItems( -1, 41030 )
				return	
			endif
		else
			SetPlayerVar( -1, 3684, 0 )
			SetPlayerVar( -1, 3683, $time0 )
			$OrgansVar01 = GetPlayerVar( -1, 3684 )
			$OrgansVar02 = $OrgansVar01 + 1
			SetPlayerVar( -1, 3684, $OrgansVar02 )
			$Random = RandomNumber( 5000, 50000 )
			AddPlayerInfo( -1, "money", $Random )
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#name," has opened Golden Chest in Cave of Haze, and has fortunately acquired ",$Random," coins.")
			DropMonsterItems( -1, 41030 )
			return
		endif
		
	}
		