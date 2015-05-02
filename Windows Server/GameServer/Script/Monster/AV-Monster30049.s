   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/16
	//		Author:???
	//		TaskName:AV-Monster30049.s
	//		TaskID:????
	//****************************************
	
	function OnDead(){
			
			SetServerVar( 59, 0 )
			AddMapPlayerInfo( 160, "exp", 200000 )
			BC( "screen", "map", 160, "Fire Demon has been defeated and cast into hell again. Every fighter in Darkflame Temple gains 200,000 EXP as a reward." )
			
	}
		