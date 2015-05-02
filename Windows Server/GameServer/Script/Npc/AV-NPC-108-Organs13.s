	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/03
	//		Author:??? ???
	//		TaskName:AV-NPC-108-Organs13.s
	//		TaskID:????13
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
	
		$Random01 = RandomNumber( 1, 2 )
		if $Random01 == 1
			AddStatus( -1, 10569, 1 )
			PlayEffect( -1, "skill\Taoist\bingdun\fire\tx_taoist_bingdun_fire.ini" )
			BC( "screen", "player", -1, "The Magic Orb spins violently. Being protected by the ancient power, you have 30 seconds to go through the passage ahead!" )
			return
		endif
		if $Random01 == 2
			AddStatus( -1, 10570, 1 )
			PlayEffect( -1, "skill\Taoist\huoyandun\fire\tx_taoist_huoyandun_fire.ini" )
			BC( "screen", "player", -1, "The Magic Orb spins violently. Being protected by the ancient power, you have 30 seconds to go through the passage ahead!" )
			return
		endif
		
	}