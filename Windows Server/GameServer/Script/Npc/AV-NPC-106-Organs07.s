	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-106-Organs07.s
	//		TaskID:????07
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$OrgansVar01 = GetPlayerVar( -1, 3780 )
		$OrgansVar02 = GetPlayerVar( -1, 3781 )
		
		if $OrgansVar01 == 1
			if $OrgansVar02 == 1
				BC( "screen", "player", -1, "The Magic Orb spins violently. Being protected by the ancient power, you have 30 seconds to go through the passage ahead!" )
				SetPlayerVar( -1, 3780, 0 )
				SetPlayerVar( -1, 3781, 0 )
				$Random01 = RandomNumber( 1, 2 )
				if $Random01 == 1
					AddStatus( -1, 10569, 1 )
					PlayEffect( -1, "skill\Taoist\bingdun\fire\tx_taoist_bingdun_fire.ini" )
					return
				endif
				if $Random01 == 2
					AddStatus( -1, 10570, 1 )
					PlayEffect( -1, "skill\Taoist\huoyandun\fire\tx_taoist_huoyandun_fire.ini" )
					return
				endif
			endif
		endif
		
		BC( "screen", "player", -1, "You put your hands on the Magic Orb. But nothing is happening. It seems something else also needs to be activated." )
		return
		
	}