	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta30-Init.s
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
		AddNpcByPos( 2467, $ectype_ID, 152, 152, 180000, 0 )
		AddMonsterByFloat( 55516, 1, $ectype_ID, 153, 153, 0, 0, 180 )
		AddMonsterByFloat( 55314, 1, $ectype_ID, 168, 138, 0, 0, 180 )
		AddMonsterByFloat( 55315, 1, $ectype_ID, 165, 137, 0, 0, 180 )
		AddMonsterByFloat( 55316, 1, $ectype_ID, 168, 141, 0, 0, 180 )
		
	}