   	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/05/19
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Monster32158.s
	//		TaskID£º»¶³ªÊ³ÈË»¨6
	//****************************************
	
	function OnDead(){
		PlayEffect( -1, "script\special_shirenhua_6.ini" )
		$PlayerVar1 = GetPlayerVar( -1, 3793 )
		$PlayerVar2 = GetPlayerVar( -1, 3792 )
		if $PlayerVar1 == 6754
			SetPlayerVar( -1, 3793, 754 )
			return
		else
			if $PlayerVar1 == 6
				SetPlayerVar( -1, 3793, 0 )
				$Item = GetPlayerInfo( -1, "item", 12479 )
				if $Item < 1
					AddPlayerInfo( -1, "item", 12479, 1 )
					return
				endif
				return
			else
				if $PlayerVar2 == 1
					SetPlayerVar( -1, 3793, 36754 )
					return
				endif
				if $PlayerVar2 == 2
					SetPlayerVar( -1, 3793, 13425 )
					return
				endif
				if $PlayerVar2 == 3
					SetPlayerVar( -1, 3793, 54321 )
					return
				endif
				if $PlayerVar2 == 4
					SetPlayerVar( -1, 3793, 13576 )
					return
				endif
			endif
		endif
		
	}
		