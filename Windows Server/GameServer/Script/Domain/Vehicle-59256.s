	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/19
	//		Author������
	//		TaskName��Vehicle-59256.s
	//		TaskID���ؾ����������ű�
	//
	//****************************************
	
	
	function OnDead(){
		
		//��ȡ����CharID
		$charID = GetMonsterCharID()
		//��ȡChar�������ڵ�MapID
		$mapID = GetMonsterMapID($charID)
		//ħ���������
		$atkvar = GetEctypeVar($mapID , 26)
		
		if $charID == 0
			return
		endif
		
		DelGuildDomainVehicle($charID)
		$atkvar = $atkvar + 1
		SetEctypeVar($mapID , 26 , $atkvar)
		
	}