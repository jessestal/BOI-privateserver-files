   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster32138.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
		$Map = GetPlayerInfo( -1, "mapid" )
		if $Map != 160
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3789 )
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * $level
		#name = GetPlayerInfo( -1, "name" )
		if $PlayerVar == 0
			SetPlayerVar( -1, 3789, 1 )
			$exp = $level * 4
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 1st time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 1
			SetPlayerVar( -1, 3789, 2 )
			$exp = $level * 6
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 2nd time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 2
			SetPlayerVar( -1, 3789, 3 )
			$exp = $level * 8
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 3rd time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 3
			SetPlayerVar( -1, 3789, 4 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 5
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 4th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 4 chests continuously." )
				return
			endif
			$exp = $level * 10
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 4th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 4
			SetPlayerVar( -1, 3789, 5 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 8
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 5th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 5 chests continuously." )
				return
			endif
			$exp = $level * 12
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 5th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 5
			SetPlayerVar( -1, 3789, 6 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 12
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 6th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 6 chests continuously." )
				return
			endif
			$exp = $level * 14
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 6th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 6
			SetPlayerVar( -1, 3789, 7 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 20
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 7th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 7 chests continuously." )
				return
			endif
			$exp = $level * 18
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 7th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 7
			SetPlayerVar( -1, 3789, 8 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 30
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 8th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 8 chests continuously." )
				return
			endif
			$exp = $level * 22
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 8th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 8
			SetPlayerVar( -1, 3789, 9 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 40
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 9th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 9 chests continuously." )
				return
			endif
			$exp = $level * 26
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 9th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 9
			SetPlayerVar( -1, 3789, 10 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 60
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 10th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 10 chests continuously." )
				return
			endif
			$exp = $level * 35
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 10th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 10
			SetPlayerVar( -1, 3789, 11 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 80
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 11th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 11 chests continuously." )
				return
			endif
			$exp = $level * 44
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 11th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 11
			SetPlayerVar( -1, 3789, 12 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 90
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 12th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 12 chests continuously." )
				return
			endif
			$exp = $level * 53
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 12th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 12
			SetPlayerVar( -1, 3789, 13 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 95
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 13th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 13 chests continuously." )
				return
			endif
			$exp = $level * 62
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 13th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 13
			SetPlayerVar( -1, 3789, 14 )
			$Random = RandomNumber( 1, 100 )
			if $Random <= 95
				SetPlayerVar( -1, 3789, 16 )
				FlyToMap( -1, 160, 72, 32 )
				$PlayerVar = GetPlayerVar( -1, 3789 )
				BC( "screen", "player", -1, "You opened the chest for the 14th time. You have left the cabin successfully." )
				BC( "screen", "map", 160, "The hero ",#name," has been teleported out after having opened 14 chests continuously." )
				return
			endif
			$exp = $level * 71
			AddPlayerInfo( -1, "exp", $exp )
			$PlayerVar = GetPlayerVar( -1, 3789 )
			BC( "screen", "player", -1, "You opened the chest for the 14th time. You have acquired ",$exp," EXP." )
			return
		endif
		if $PlayerVar == 14
			SetPlayerVar( -1, 3789, 16 )
			$exp = $level * 80
			AddPlayerInfo( -1, "exp", $exp )
			FlyToMap( -1, 160, 72, 32 )
			$Title = HaveTitle( -1, 40 )
			if $Title != 0
				AddTitle( -1, 40 )
				BC( "screen", "map", 160, "The hero ",#name," has opened 15 Chests of Surprise without a stop, and has finally acquired the title 'I am Lucky'" )
			endif			
			return
		endif
	}
		