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
		$leftvar = GetEctypeVar($mapID , 28)
		
		if $charID == 0
			return
		endif
		
		DelGuildDomainVehicle($charID)
		$leftvar = $leftvar + 1
		SetEctypeVar($mapID , 28 , $leftvar)
		
		
	
	}