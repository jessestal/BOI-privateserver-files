	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta26-29-Init.s
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
		
		//����С�ֺ�ͷ������
		SetEctypeVar(-1,5,45)
		SetEctypeVar(-1,6,6)		
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 154, 151, 180000, 0 )
		
		//���ȥ��һ���ֵ�
		$decrease = RandomNumber( 1, 4 )
		
		//���ˢС��		
		$a = RandomNumber( 0, 4 )
		$smid = 55241 + $a
		$sstr = 121 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 66, 62, 4 )
		endif                                                          
		if $decrease != 2                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 64, 53, 4 )
		endif                                                          
		if $decrease != 3                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 53, 62, 4 )
		endif                                                          
		if $decrease != 4                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 59, 66, 4 )
		endif
		
			
		//�漴ˢ���
		$b = RandomNumber( 0, 4 )
		$bmid = 55271 + $b
		$bstr = 126 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 67, 64, 4 )
		endif                                                         
		if $decrease != 2                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 66, 53, 4 )
		endif                                                         
		if $decrease != 3                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 51, 63, 4 )
		endif                                                         
		if $decrease != 4                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 61, 68, 4 )
		endif
			
			//ˢ�ƽ���
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55322, 1, $ectype_ID, 129, 135, 0 )
			endif
	}