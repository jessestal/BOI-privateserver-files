   	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/19
	//		Author�������
	//		TaskName��AV-Monster32159.s
	//		TaskID������ʳ�˻�7
	//****************************************
	
	function OnDead(){
		PlayEffect( -1, "script\special_shirenhua_7.ini" )
		$PlayerVar1 = GetPlayerVar( -1, 3793 )
		$PlayerVar2 = GetPlayerVar( -1, 3792 )
		if $PlayerVar1 == 754
			SetPlayerVar( -1, 3793, 54 )
			return
		else
			if $PlayerVar1 == 76
				SetPlayerVar( -1, 3793, 6 )
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
		