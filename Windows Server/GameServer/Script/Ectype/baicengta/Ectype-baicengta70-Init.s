	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/02/20
	//		Author��������
	//		TaskName��Ectype-baicengta70-Init.s
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
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 147, 136, 180000, 0 )
		AddMonsterByFloat( 55331, 1, $ectype_ID, 174, 136, 0, 0, 180 )
		AddMonsterByFloat( 55334, 1, $ectype_ID, 174, 136, 0, 0, 180 )
		
	}