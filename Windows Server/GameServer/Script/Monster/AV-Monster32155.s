   	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/05/19
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Monster32155.s
	//		TaskID£º»¶³ªÊ³ÈË»¨3
	//****************************************
	
	function OnDead(){
		PlayEffect( -1, "script\special_shirenhua_3.ini" )
		$PlayerVar1 = GetPlayerVar( -1, 3793 )
		$PlayerVar2 = GetPlayerVar( -1, 3792 )
		if $PlayerVar1 == 36754
			SetPlayerVar( -1, 3793, 6754 )
			return
		else
			if $PlayerVar1 == 3425
				SetPlayerVar( -1, 3793, 425 )
				return
			else
				if $PlayerVar1 == 321
					SetPlayerVar( -1, 3793, 21 )
					return
				else
					if $PlayerVar1 == 3576
						SetPlayerVar( -1, 3793, 576 )
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
			endif
		endif
		
	}
		