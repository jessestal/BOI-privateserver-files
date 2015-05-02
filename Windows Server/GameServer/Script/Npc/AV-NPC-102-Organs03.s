	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-102-Organs03.s
	//		TaskID:????03
	//
	//****************************************
	
	function OnRequest(){
		$OrgansVar = 3634
	
		$Organs01 = GetPlayerVar( -1, $OrgansVar )
		if $Organs01 == 0
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
		$OrgansVar01 = GetPlayerVar( -1, 3634 )
		$OrgansVar02 = GetPlayerVar( -1, 3635 )
		$OrgansVar03 = GetPlayerVar( -1, 3636 )
		$OrgansVar04 = GetPlayerVar( -1, 3637 )
		
		if $OrgansVar01 == 123
			if $OrgansVar04 == 3
				if $OrgansVar02 == 4
					if $OrgansVar03 == 4
						BC( "screen", "player", -1, "You have disarmed the trap. Now you can use the Teleport Crystal." )
						NPCAction( -1, 102, response, 1 )
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						SetPlayerVar( -1, 3637, 4 )
						return
					endif	
				endif	
			endif
		endif
		
		if $OrgansVar01 == 321
			if $OrgansVar04 == 1
				BC( "screen", "player", -1, "As the button being pressed down, it starts to shine with blue glow." )
				NPCAction( -1, 102, response, 1 )
				SetPlayerVar( -1, 3637, 4 )
				return
			endif
		endif
		
		if $OrgansVar01 == 132
			if $OrgansVar04 == 2
				if $OrgansVar02 == 4
					BC( "screen", "player", -1, "As the button being pressed down, it starts to shine with blue glow." )
					NPCAction( -1, 102, response, 1 )
					SetPlayerVar( -1, 3637, 4 )
					return
				endif	
			endif
		endif
		
		BC( "screen", "player", -1, "The blue button cannot be pressed down" )
		return
	}