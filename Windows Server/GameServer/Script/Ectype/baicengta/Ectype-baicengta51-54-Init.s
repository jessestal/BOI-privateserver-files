	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta51-54-Init.s
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
		SetEctypeVar(-1,5,60)
		if $decrease == 1
			SetEctypeVar(-1,6,10)
		endif
		if $decrease == 2
			SetEctypeVar(-1,6,11)
		endif
		if $decrease == 3
			SetEctypeVar(-1,6,10)
		endif
		if $decrease == 4
			SetEctypeVar(-1,6,11)
		endif		
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 154, 154, 180000, 0 )
		
		//���ˢС��		
		$a = RandomNumber( 0, 4 )
		$smid = 55246 + $a
		$sstr = 151 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 54, 55, 4  )
		endif                                                           
		if $decrease != 2                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 65, 55, 4  )
		endif                                                           
		if $decrease != 3                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 54, 66, 4  )
		endif                                                           
		if $decrease != 4                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 65, 66, 4  )
		endif
		
			
		//�漴ˢ���
		$b = RandomNumber( 0, 4 )
		$bmid = 55276 + $b
		$bstr = 156 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 4, $ectype_ID, 53, 54, 4 )
		endif                                                         
		if $decrease != 2                                             
			AddLevelMonster( $bmid, $bstr, 120, 3, $ectype_ID, 66, 54, 4 )
		endif                                                         
		if $decrease != 3                                             
			AddLevelMonster( $bmid, $bstr, 120, 4, $ectype_ID, 53, 67, 4 )
		endif                                                         
		if $decrease != 4                                             
			AddLevelMonster( $bmid, $bstr, 120, 3, $ectype_ID, 66, 67, 4 )
		endif
			
			//ˢ�ƽ���
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55325, 1, $ectype_ID, 122, 125, 0 )
			endif
	}
	