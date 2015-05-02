	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/17
	//		Author:???
	//		TaskName:AV-NPC-120-Organs09.s
	//		TaskID:????09
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		AddStatus( -1, 10565, 1 )
		BC( "screen", "player", -1, "Spell Pillar II has been activated!" )
		PlayEffect( -1, "skill\Monster\boss\shengguangshu\fire\tx_shengguangshu_fire.ini" )
	}