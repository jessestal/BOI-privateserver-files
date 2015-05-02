	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:AV-NPC-1851-Lever.s
	//		TaskID:??4
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$PlayerVar = GetPlayerVar( -1, 3787 )
		if $PlayerVar == 0
			$Random = RandomNumber( 1, 3 )
			if $Random == 1
				SetPlayerVar( -1, 3788, 1 )
				SetPlayerVar( -1, 3787, 1234 )
			endif
			if $Random == 2
				SetPlayerVar( -1, 3788, 2 )
				SetPlayerVar( -1, 3787, 2413 )
			endif
			if $Random == 3
				SetPlayerVar( -1, 3788, 3 )
				SetPlayerVar( -1, 3787, 4123 )
			endif
		endif
		
		$PlayerVar1 = GetPlayerVar( -1, 3787 )
		$PlayerVar2 = GetPlayerVar( -1, 3788 )
		if $PlayerVar1 == 4
			SetPlayerVar( -1, 3787, 0 )
			AddStatus( -1, 10597, 1 )
			BC( "screen", "player", -1, "You activated the device. Portal in Room VI will run for 30 seconds." )
			return
		else
			if $PlayerVar1 == 413
				SetPlayerVar( -1, 3787, 13 )
				BC( "screen", "player", -1, "You pulled the lever. A clapping sound is heard from afar." )
				return
			else
				if $PlayerVar1 == 4123
					SetPlayerVar( -1, 3787, 123 )
					BC( "screen", "player", -1, "You pulled the lever. A clapping sound is heard from afar." )
					return
				else
					BC( "screen", "player", -1, "You pulled the wrong lever. You'll have to redo it all." )
					if $PlayerVar2 == 1
						SetPlayerVar( -1, 3787, 1234 )
						return
					endif
					if $PlayerVar2 == 2
						SetPlayerVar( -1, 3787, 2413 )
						return
					endif
					if $PlayerVar2 == 3
						SetPlayerVar( -1, 3787, 4123 )
						return
					endif
				endif	
			endif
		endif
	}