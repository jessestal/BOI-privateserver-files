	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		AddLoveExp/09/01
	//		Author:???
	//		TaskName:HD-Marry-NPC1971.s
	//		TaskID:????
	//
	//****************************************
	
	
	//????? ????????
	//????   ???????
	function OnRequest(){
	
		$sevcount = GetServerVar( 114 )
		$line = GetPlayerVar( -1 , 3727 )
		$count = GetPlayerVar( -1 , 3725 )
		
		if $line == 0
			BC( "dialogbox", "player", -1, "On this Realm, there are " , $sevcount , " married couples." , " My records indicate that you are single." )
		else
			BC( "dialogbox", "player", -1, "On this Realm, there are " , $sevcount , " married couples." , "Realm:" , $line , ". Marriage SN:" , $count , ". Congratulations!" )
		endif
	
	}