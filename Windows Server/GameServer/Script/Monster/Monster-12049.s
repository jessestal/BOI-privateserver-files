 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/30
	//		Author:???
	//		TaskName:Monster-12049.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		#name = GetPlayerInfo( -1, "name")
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		BC("screen", "server", -1 , #name ," lead a team to kill the Nexus of Hunger. Lunar Arc Chests have also been scattered throughout the map.")
		BC("chat", "server", -1 , #name ," lead a team to kill the Nexus of Hunger. Lunar Arc Chests have also been scattered throughout the map.")
		AddMonster( 12047 , 10 , $mapid , $x , $y , 10 )
	  AddMonster( 12047 , 10 , $mapid , 32 , 21 , 30 )
		AddMonster( 12047 , 10 , $mapid , 66 , 38 , 30 )
		AddMonster( 12047 , 10 , $mapid , 99 , 45 , 30 )
		AddMonster( 12047 , 10 , $mapid , 96 , 69 , 30 )
		AddMonster( 12047 , 10 , $mapid , 63 , 66 , 30 )
		AddMonster( 12047 , 10 , $mapid , 28 , 64 , 30 )
		AddMonster( 12047 , 10 , $mapid , 24 , 91 , 30 )
		AddMonster( 12047 , 10 , $mapid , 48 , 99 , 30 )
		AddMonster( 12047 , 10 , $mapid , 72 , 97 , 30 )
		AddMonster( 12047 , 10 , $mapid , 90 , 82 , 30 )
	
	}