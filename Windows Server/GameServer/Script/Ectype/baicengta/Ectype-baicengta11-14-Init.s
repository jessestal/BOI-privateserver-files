	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta11-14-Init.s
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
		
		//���ȥ��һ���ֵ�
		$decrease = RandomNumber( 1, 4 )
		
		//����С�ֺ�ͷ������
		SetEctypeVar(-1,5,36)
		if $decrease == 1
			SetEctypeVar(-1,6,5)
		endif
		if $decrease == 2
			SetEctypeVar(-1,6,4)
		endif
		if $decrease == 3
			SetEctypeVar(-1,6,5)
		endif
		if $decrease == 4
			SetEctypeVar(-1,6,4)
		endif
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 152, 193, 180000, 0 )
		
		//���ˢС��		
		$a = RandomNumber( 0, 4 )
		$smid = 55241 + $a
		$sstr = 111 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 12, $ectype_ID, 59, 68, 4 )
		endif                                                       
		if $decrease != 2                                           
			AddLevelMonster( $smid, $sstr, 120, 12, $ectype_ID, 51, 74, 4 )
		endif                                                       
		if $decrease != 3                                           
			AddLevelMonster( $smid, $sstr, 120, 12, $ectype_ID, 59, 81, 4 )
		endif                                                       
		if $decrease != 4                                           
			AddLevelMonster( $smid, $sstr, 120, 12, $ectype_ID, 67, 75, 4 )
		endif
		
			
		//�漴ˢ���
		$b = RandomNumber( 0, 4 )
		$bmid = 55271 + $b
		$bstr = 116 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 59, 67, 4 )
		endif                                                      
		if $decrease != 2                                          
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 50, 75, 4 )
		endif                                                      
		if $decrease != 3                                          
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 59, 83, 4 )
		endif                                                      
		if $decrease != 4                                          
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 68, 75, 4 )
		endif
			
			//ˢ�ƽ���
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55321, 1, $ectype_ID, 130, 175, 0 )
			endif
	}