	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/23
	//		Author�������
	//		TaskName��AV-NPC-1868-send.s
	//		TaskID����λ�����ţ�10��
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		FlyToMap( -1, 160, 36, 86 )
		$ServerVar = GetServerVar( 93 )
		if $ServerVar != 1
			AddMonster( 32139, 20, 160, 33, 85, 3 )
			SetServerVar( 93, 1 )
			return
		endif
	}