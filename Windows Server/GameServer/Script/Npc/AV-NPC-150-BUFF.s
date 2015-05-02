	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/23
	//		Author:???
	//		TaskName:AV-NPC-150-BUFF.s
	//		TaskID:??BUFF
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
		AddStatus( -1, 10599, 1 )
		BC( "screen", "player", -1, "You have acquired Demigod's Blessing." )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		
	}