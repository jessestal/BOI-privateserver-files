	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/08/06
	//		Author��������
	//		TaskName�����߿˿�Ƭ
	//		TaskID��NPC-44.s
	//
	//****************************************
	
	function OnRequest(){
		
		$klick = GetPlayerVar( -1, 3535 )
		if $klick >= 255
			$HorN = HaveTarot(-1,2515)
			if $HorN == 0
				AddTarotCard(-1,2515)
			endif
			return
		endif
		$klick = $klick + 1
		SetPlayerVar(-1,3535,$klick)
	}