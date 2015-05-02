	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/18
	//		Author:???
	//		TaskName:AV-NPC-1867-Music.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	
	function OnOption0(){
		$PlayerVar = GetPlayerVar( -1, 3792 )
		if $PlayerVar == 0
			$Random = RandomNumber( 1, 4 )
			if $Random == 1
				SetPlayerVar( -1, 3792, 1 )
				SetPlayerVar( -1, 3793, 36754 )
				PlayEffect( -1, "script\melody_01.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\nmi-la-ti-so-fa" )
				return
			endif
			if $Random == 2
				SetPlayerVar( -1, 3792, 2 )
				SetPlayerVar( -1, 3793, 13425 )
				PlayEffect( -1, "script\melody_02.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=do-mi-fa-re-so#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
			if $Random == 3
				SetPlayerVar( -1, 3792, 3 )
				SetPlayerVar( -1, 3793, 54321 )
				PlayEffect( -1, "script\melody_03.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=so-fa-mi-re-do#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
			if $Random == 4
				SetPlayerVar( -1, 3792, 4 )
				SetPlayerVar( -1, 3793, 13576 )
				PlayEffect( -1, "script\melody_04.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=do-mi-so-ti-la#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
		else
			if $PlayerVar == 1
				PlayEffect( -1, "script\melody_01.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=mi-la-ti-so-fa#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
			if $PlayerVar == 2
				PlayEffect( -1, "script\melody_02.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=do-mi-fa-re-so#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
			if $PlayerVar == 3
				PlayEffect( -1, "script\melody_03.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=so-fa-mi-re-do#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
			if $PlayerVar == 4
				PlayEffect( -1, "script\melody_04.ini" )
				BC( "dialogbox", "player", -1, "In the music note you see\n\n{#ffff002a=do-mi-so-ti-la#}\n\nUnknown music has been heard from afar, implying something mysterious." )
				return
			endif
		endif
		
	}