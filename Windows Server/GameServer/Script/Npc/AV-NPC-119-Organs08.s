	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/17
	//		Author:???
	//		TaskName:AV-NPC-119-Organs08.s
	//		TaskID:????08
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		AddStatus( -1, 10564, 1 )
		BC( "screen", "player", -1, "Spell Pillar I has been activated!" )
		PlayEffect( -1, "skill\Monster\boss\shengguangshu\fire\tx_shengguangshu_fire.ini" )
	}