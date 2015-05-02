	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-103-Organs04.s
	//		TaskID:????04
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$OrgansVar01 = GetPlayerVar( -1, 3634 )
		$OrgansVar02 = GetPlayerVar( -1, 3635 )
		$OrgansVar03 = GetPlayerVar( -1, 3636 )
		$OrgansVar04 = GetPlayerVar( -1, 3637 )
		if $OrgansVar02 == 4
			if $OrgansVar03 == 4
				if $OrgansVar04 == 4
					if $OrgansVar01 == 123
						FlyToMap( -1, 188, 42, 56 )
						SetPlayerVar( -1, 3634, 0 )
						SetPlayerVar( -1, 3635, 0 )
						SetPlayerVar( -1, 3636, 0 )
						SetPlayerVar( -1, 3637, 0 )
						return
					endif
					if $OrgansVar01 == 321
						FlyToMap( -1, 188, 42, 56 )
						SetPlayerVar( -1, 3634, 0 )
						SetPlayerVar( -1, 3635, 0 )
						SetPlayerVar( -1, 3636, 0 )
						SetPlayerVar( -1, 3637, 0 )
						return
					endif
					if $OrgansVar01 == 132
						FlyToMap( -1, 188, 42, 56 )
						SetPlayerVar( -1, 3634, 0 )
						SetPlayerVar( -1, 3635, 0 )
						SetPlayerVar( -1, 3636, 0 )
						SetPlayerVar( -1, 3637, 0 )
						return
					endif
				endif
			endif
		endif	
		
		if $OrgansVar01 == 0
			//???
			$Random01 = RandomNumber( 1, 3 )
			if $Random01 == 1
				BC( "dialogbox", "player", -1, "Teleport device not activated. Gradually, the crystal sphere is displaying a faint pattern:\n{#ffe30000=0#}{#ffffe400=0#}{#ff34a7ff=0#}. What could this mean?" )
				SetPlayerVar( -1, 3634, 123 )
				SetPlayerVar( -1, 3635, 1 )
				SetPlayerVar( -1, 3636, 2 )
				SetPlayerVar( -1, 3637, 3 )
				return
			endif
		
			if $Random01 == 2
				BC( "dialogbox", "player", -1, "Teleport device not activated. Gradually, the crystal sphere is displaying a faint pattern:\n{#ff34a7ff=0#}{#ffffe400=0#}{#ffe30000=0#}. What could this mean?" )
				SetPlayerVar( -1, 3634, 321 )
				SetPlayerVar( -1, 3635, 3 )
				SetPlayerVar( -1, 3636, 2 )
				SetPlayerVar( -1, 3637, 1 )
				return
			endif
		
			if $Random01 == 3
				BC( "dialogbox", "player", -1, "Teleporter has not been activated yet. There are\n{#ffe30000=0#}{#ff34a7ff=0#}{#ffffe400=0#} images showing in the crystal ball. Probably it is telling something." )
				SetPlayerVar( -1, 3634, 132 )
				SetPlayerVar( -1, 3635, 1 )
				SetPlayerVar( -1, 3636, 3 )
				SetPlayerVar( -1, 3637, 2 )
				return
			endif
		else
			if $OrgansVar01 == 123
				BC( "dialogbox", "player", -1, "Teleport device not activated. Gradually, the crystal sphere is displaying a faint pattern:\n{#ffe30000=0#}{#ffffe400=0#}{#ff34a7ff=0#}. What could this mean?" )
			endif
			if $OrgansVar01 == 321
				BC( "dialogbox", "player", -1, "Teleport device not activated. Gradually, the crystal sphere is displaying a faint pattern:\n{#ff34a7ff=0#}{#ffffe400=0#}{#ffe30000=0#}. What could this mean?" )
			endif
			if $OrgansVar01 == 132
				BC( "dialogbox", "player", -1, "Teleporter has not been activated yet. There are\n{#ffe30000=0#}{#ff34a7ff=0#}{#ffffe400=0#} images showing in the crystal ball. Probably it is telling something." )
			endif	
		endif
		
	}