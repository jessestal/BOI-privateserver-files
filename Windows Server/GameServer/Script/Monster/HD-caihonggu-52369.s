  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06
	//		Author: ???
	//		TaskName:HD-caihonggu-52369.s
	//		TaskID:   ????????
	//****************************************
	
	function OnDead(){
		
		$monster_count = GetEctypeVar( -1 , 23 )
		$monster_count = $monster_count + 1
		SetEctypeVar( -1 , 23 , $monster_count )

		$ectype_id = GetEctypeID(-1 , 558)
		$lv = GetPlayerInfo(-1 , "level")
		$monster_fieldlevel = GetFieldLevel( -1 )

	if $monster_fieldlevel > 0	
//------??2??,9?,???????----------------
		if $monster_count == 9
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 66 , 64 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 67 , 63 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 69 , 62 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 2nd group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 2nd group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??3??,9?---------------------------
		if $monster_count == 18
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 43 , 50 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 3rd group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 3rd group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??4??,9?,???????----------------------------
		if $monster_count == 27
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 73 , 44 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 72 , 46 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 76 , 47 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 74 , 46 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 70 , 44 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 4th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 4th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
//-------??5??,9?-----------------------------
		if $monster_count == 36
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 66 , 64 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 5th group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 5th group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??6??,9?,???????-----------------
		if $monster_count == 45
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 43 , 50 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 44 , 51 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 41 , 52 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 6th group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 6th group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??7??,9?-------------------------
		if $monster_count == 54
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 73 , 44 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 72 , 46 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 76 , 47 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 7th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 7th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
//-------??8??,9?,???????-----------------------
		if $monster_count == 63
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 66 , 64 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 67 , 63 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 69 , 62 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 8th group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 8th group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??9??,9?----------------------
		if $monster_count == 72
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 43 , 50 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 9th group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 9th group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??10??,9?,???????-----------------------
		if $monster_count == 81
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 73 , 44 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 72 , 46 , 1 )
			AddLevelFieldMonster( 52369 , 216 , $lv , 216 , $monster_fieldlevel , 3 , $ectype_id , 76 , 47 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 74 , 46 , 1 )
			AddLevelFieldMonster( 52370 , 217 , $lv , 217 , $monster_fieldlevel , 1 , $ectype_id , 70 , 44 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 10th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 10th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
		if $monster_count == 90
			BC( "screen" , "map" , $ectype_id , "Congratulations! You destroyed all the Tormented Minions in Dream Rainbow Valley!")
			BC( "chat" , "map" , $ectype_id , "Congratulations! You destroyed all the Tormented Minions in Dream Rainbow Valley!" )
		endif
	else
//------??2??,9?,???????----------------
		if $monster_count == 9
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 66 , 64 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 67 , 63 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 69 , 62 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 2nd group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 2nd group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??3??,9?---------------------------
		if $monster_count == 18
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 43 , 50 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 3rd group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 3rd group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??4??,9?,???????----------------------------
		if $monster_count == 27
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 73 , 44 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 72 , 46 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 76 , 47 , 1)
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 74 , 46 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 70 , 44 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 4th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 4th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
//-------??5??,9?-----------------------------
		if $monster_count == 36
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 66 , 64 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 5th group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 5th group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??6??,9?,???????-----------------
		if $monster_count == 45
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 43 , 50 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 44 , 51 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 41 , 52 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 6th group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 6th group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??7??,9?-------------------------
		if $monster_count == 54
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 73 , 44 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 72 , 46 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 76 , 47 , 1)
			BC( "screen" , "map" , $ectype_id , "The 7th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 7th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
//-------??8??,9?,???????-----------------------
		if $monster_count == 63
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 68 , 61 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 70 , 63 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 66 , 64 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 67 , 63 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 69 , 62 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 8th group of invaders are here. Tormented Minions have appeared at 176, 156!")
			BC( "chat" , "map" , $ectype_id , "The 8th group of invaders are here. Tormented Minions have appeared at 176, 156!" )
		endif
//-------??9??,9?----------------------
		if $monster_count == 72
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 42 , 54 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 44 , 55 , 1 )
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 43 , 50 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 9th group of invaders are here. Tormented Minions have appeared at 109, 138!")
			BC( "chat" , "map" , $ectype_id , "The 9th group of invaders are here. Tormented Minions have appeared at 109, 138!" )
		endif
//-------??10??,9?,???????-----------------------
		if $monster_count == 81
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 73 , 44 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 72 , 46 , 1)
			AddLevelMonster( 52369 , 216 , $lv , 3 , $ectype_id , 76 , 47 , 1)
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 74 , 46 , 1 )
			AddLevelMonster( 52370 , 217 , $lv , 1 , $ectype_id , 70 , 44 , 1 )
			BC( "screen" , "map" , $ectype_id , "The 10th group of invaders are here. Tormented Minions have appeared at 193, 112!")
			BC( "chat" , "map" , $ectype_id , "The 10th group of invaders are here. Tormented Minions have appeared at 193, 112!" )
		endif
		if $monster_count == 90
			BC( "screen" , "map" , $ectype_id , "Congratulations! You destroyed all the Tormented Minions in Dream Rainbow Valley!")
			BC( "chat" , "map" , $ectype_id , "Congratulations! You destroyed all the Tormented Minions in Dream Rainbow Valley!" )
		endif	
	endif

	}
	
