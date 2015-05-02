	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/02/20
	//		Author��������
	//		TaskName��Ectype-baicengta76-79-Init.s
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
		AddNpcByPos( 2467, $ectype_ID, 147, 136, 180000, 0 )
		
		//ˢ�ƽ���
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55326, 1, $ectype_ID, 202, 130, 0 )
			endif
		
		$a = RandomNumber( 0, 5 )
		$b = RandomNumber( 0, 5 )
		//����С��,ͷ���������������
		SetEctypeVar($ectype_ID,5,72)
		SetEctypeVar($ectype_ID,6,18)
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
		$ab = $a + 173
		$ba = $b + 55281
		$bb = $b + 179
		//A���Բ
		$x = $d % 2
		if $x == 0
			//ˢС��
			AddLevelFieldMonster($aa,$ab,120,85,10,8,$ectype_ID,68,53,12)
			//ˢͷ��
			AddLevelFieldMonster($ba,$bb,120,85,10,2,$ectype_ID,68,53,12)
		endif
		
		//B��СԲ
		if $x == 1
			//ˢС��
			AddLevelFieldMonster($aa,$ab,120,85,10,8,$ectype_ID,75,52,6)
			//ˢͷ��
			AddLevelFieldMonster($ba,$bb,120,85,10,2,$ectype_ID,75,52,6)
		endif
		
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
		$zongshu = $boshu * 10
		
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