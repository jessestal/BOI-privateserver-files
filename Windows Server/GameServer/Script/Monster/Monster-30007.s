 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/6
	//		Author:???|???
	//		TaskName:Monster-30007.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		#name = GetPlayerInfo( -1, "name")
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		BC("screen", "server", -1 , #name ,"s party has defeated the giant Achinoth, acquiring great rewards.")
		BC("chat", "server", -1 , #name ,"s party has defeated the giant Achinoth, acquiring great rewards.")
		AddMonster( 44007 , 10 , $mapid , $x , $y , 5 )
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's full, you can't collect Achinoth's Soulshard!")
			BC( "messagebox", "player", -1, "Your bag's full, you can't collect Achinoth's Soulshard!")
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 54078 , 5 )
	
	}