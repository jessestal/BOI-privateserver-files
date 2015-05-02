	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-1883-lever.s
	//		TaskID:??BUFF
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "Something seems to be happening in room [X]." )
		AddStatus( -1, 10659, 1 )
	}