	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/01
	//		Author���콨��
	//		TaskName��Ectype-baicengta-Init.s
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
		SetEctypeVar(-1,5,30)
		SetEctypeVar(-1,6,3)		
		$ectype_ID = GetCurEctypeID()
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 72, 70, 180000, 0 )
		
		//���ȥ��һ���ֵ�
		$decrease = RandomNumber( 1, 4 )
		
		//���ˢС��		
		$a = RandomNumber( 0, 4 )
		$smid = 55241 + $a
		$sstr = 101 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 10, $ectype_ID, 28, 21, 4 )
		endif
		if $decrease != 2
			AddLevelMonster( $smid, $sstr, 120, 10, $ectype_ID, 22, 27, 4 )
		endif
		if $decrease != 3
			AddLevelMonster( $smid, $sstr, 120, 10, $ectype_ID, 28, 33, 4 )
		endif
		if $decrease != 4
			AddLevelMonster( $smid, $sstr, 120, 10, $ectype_ID, 34, 27, 4 )
		endif
		
			
		//�漴ˢ���
		$b = RandomNumber( 0, 4 )
		$bmid = 55271 + $b
		$bstr = 106 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 28, 20, 4 )
		endif
		if $decrease != 2
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 20, 27, 4 )
		endif
		if $decrease != 3
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 28, 35, 4 )
		endif
		if $decrease != 4
			AddLevelMonster( $bmid, $bstr, 120, 1, $ectype_ID, 35, 27, 4 )
		endif
			
			//ˢ�ƽ���
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55301, 1, $ectype_ID, 47, 47, 0 )
			endif
	}