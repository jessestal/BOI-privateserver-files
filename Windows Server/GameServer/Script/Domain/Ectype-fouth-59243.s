	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/07/13
	//		Author������
	//		TaskName��Ectype-fouth-59243.s
	//		TaskID�� �����������Ĳ���59243�����ű�
	//
	//****************************************

	
	function OnDead(){
		//��ȡ����CharID
		$charID = GetMonsterCharID()
		// ��ȡChar�������ڵ�MapID
		$mapID = GetMonsterMapID($charID)
		//��ǰ25�ű���������������ÿ����һ������1��
		$count = GetEctypeVar( -1 , 25 )		
		$count = $count + 1
		SetEctypeVar($mapID , 25 , $count)
								
	}
	