	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/19
	//		Author������
	//		TaskName��Vehicle-59260.s
	//		TaskID���ؾ����������ű�
	//
	//****************************************
	
	
	function OnDead(){
		
		//��ȡ����CharID
		$charID = GetMonsterCharID()
		//��ȡChar�������ڵ�MapID
		$mapID = GetMonsterMapID($charID)
		//ħ���������
		$rightvar = GetEctypeVar($mapID , 29)
		
		if $charID == 0
			return
		endif
		
		DelGuildDomainVehicle($charID)
		$rightvar = $rightvar + 1
		SetEctypeVar($mapID , 29 , $rightvar)
		
		
	
	}