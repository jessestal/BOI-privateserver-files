	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/02/20
	//		Author��������
	//		TaskName��Ectype-baicengta81-89-Init.s
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
	// С����������ࣺ7
	// ͷ����������ࣺ8
	// ˢ�ֵĲ�����9
	// ����ʱ���Ĵ�����10
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		
		SetEctypeTimer( 1 , 10 , "EctypeTime1" )
		
		//�ٻ�NPC
		AddNpcByPos( 2467, $ectype_ID, 255, 155, 180000, 0 )
		
		//ˢ�ƽ���
		$c = RandomNumber( 0, 333 )
		if $c == 0
			AddMonsterByFloat( 55328, 1, $ectype_ID, 202, 130, 0 )
		endif
		
		$a = RandomNumber( 0, 5 )
		$b = RandomNumber( 0, 5 )
		//����С��,ͷ���������������
		SetEctypeVar($ectype_ID,5,72)
		SetEctypeVar($ectype_ID,6,27)
		SetEctypeVar($ectype_ID,7,$a)
		SetEctypeVar($ectype_ID,8,$b)
		
		call Spawn()
		
	}
	
	function Spawn(){
		
		$ectype_ID = GetCurEctypeID()
		$a = GetEctypeVar($ectype_ID,7)
		$b = GetEctypeVar($ectype_ID,8)
		$d = GetEctypeVar($ectype_ID,9)
		
		$aa = $a + 55251
		$ab = $a + 185
		if $a == 5
			$ab = 242
		endif
		$ba = $b + 55281
		$bb = $b + 190
		if $b == 5
			$bb = 243
		endif
		
		//ˢС��
		AddLevelFieldMonster($aa,$ab,120,85,40,8,$ectype_ID,74,61,11)
		//ˢͷ��
		AddLevelFieldMonster($ba,$bb,120,85,40,3,$ectype_ID,74,61,11)
		
		$dd = $d + 1
		SetEctypeVar($ectype_ID,9,$dd)
		
		if $d < 8
			StartEctypeTimer ($ectype_ID,1)
		endif
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		$a0 = GetEctypeVar($ectype_ID,1)
		$b0 = GetEctypeVar($ectype_ID,2)
		$boshu = GetEctypeVar($ectype_ID,9)
		$cishu = GetEctypeVar($ectype_ID,10)
		$c = $a0 + $b0
		$zongshu = $boshu * 11
		
		if $c >= $zongshu 
			call Spawn()
			SetEctypeVar($ectype_ID,10,0)
		else
			if $cishu >= 8
				call Spawn()
				SetEctypeVar($ectype_ID,10,0)
			else
				$cishu = $cishu + 1
				SetEctypeVar($ectype_ID,10,$cishu)
				StartEctypeTimer ($ectype_ID,1)
			endif
		endif
		
	}