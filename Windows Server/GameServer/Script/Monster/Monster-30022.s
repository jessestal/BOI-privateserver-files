 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/7
	//		Author:???
	//		TaskName:Monster-30022.s
	//		TaskID:30022   ????
	//****************************************
	
	function OnDead(){
		$Headerid = GetTeamHeaderID( -1 )
		#name = GetPlayerInfo( $Headerid , "name" )
		BC( "screen", "server" , -1 , #name, "s party has come to Chrono Lair Level 2 Portal and defeated Illusion Blue Dragon." )
		BC( "chat", "server" , -1 , #name, "s party has come to Chrono Lair Level 2 Portal and defeated Illusion Blue Dragon." )
	}