	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/19
	//		Author������
	//		TaskName��Vehicle-59259.s
	//		TaskID���ؾ����������ű�
	//
	//****************************************
	
	
	function OnDead(){
		
		//��ȡ����CharID
		$charID = GetMonsterCharID()
		//��ȡChar�������ڵ�MapID
		$mapID = GetMonsterMapID($charID)
		//ħ���������
		$defvar = GetEctypeVar($mapID , 27)
		
		if $charID == 0
			return
		endif
		
		DelGuildDomainVehicle($charID)
		$defvar = $defvar + 1
		SetEctypeVar($mapID , 27 , $defvar)
		
		
	
	}