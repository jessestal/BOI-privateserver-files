	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/17
	//		Author:???
	//		TaskName:AV-NPC-121-Organs10.s
	//		TaskID:????10
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		AddStatus( -1, 10566, 1 )
		BC( "screen", "player", -1, "Spell Pillar III has been activated!" )
		PlayEffect( -1, "skill\Monster\boss\shengguangshu\fire\tx_shengguangshu_fire.ini" )
	}