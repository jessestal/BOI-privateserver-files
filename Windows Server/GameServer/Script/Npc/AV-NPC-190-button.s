	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:AV-NPC-190-button.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$PlayerVar = GetPlayerVar( -1, 3702 )
		if $PlayerVar == 0
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$PlayerVar = GetPlayerVar( -1, 3702 )
		if $PlayerVar == 123
			SetPlayerVar( -1, 3702, 23 )
			BC( "screen", "player", -1, "You pushed down the button. Click." )
			return
		else
			if $PlayerVar == 13
				SetPlayerVar( -1, 3702, 3 )
				BC( "screen", "player", -1, "You pushed down the button. Click." )
				return
			else
				if $PlayerVar == 1
					SetPlayerVar( -1, 3702, 0 )
					AddPlayerInfo( -1, "item", 12560, 1 )
					return
				else
					BC( "screen", "player", -1, "You pushed the wrong button and triggered the thunder." )
					UseSkill( -1, 8672, 1 )
					SetPlayerVar( -1, 3702, 0 )
					return
				endif
			endif
		endif
	}