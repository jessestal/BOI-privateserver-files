	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta55-Init.s
	//		TaskID��
	//
	//****************************************
	
	// ��¼��������ұ�����3327
	// ��¼ɱС�������ĸ���������1
	// ��¼ɱ��������ĸ���������2
	// �ж�С���Ƿ�ȫ�������ı�����3(ɱ��Ϊ1������Ϊ0)
	// �жϴ���Ƿ�ȫ�������ı�����4(ɱ��Ϊ1������Ϊ0)
	// ��¼С�������ı�����5
	// ��¼ͷ�������ı�����6

	
	function OnCreate(){
		
		
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 3 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		//����С������
		SetEctypeVar(-1,5,939)
		SetEctypeVar(-1,6,0)
		
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ������
		AddMonsterByFloat( 55524, 1, $ectype_ID, 153, 153, 0, 0, 45 )
		AddMonsterByFloat( 55500, 1, $ectype_ID, 153, 153, 0, 0, 160 )
		AddSingleVehicle(55518,$ectype_ID, 153, 156, 0, -1, 0, 0 )
	}
	