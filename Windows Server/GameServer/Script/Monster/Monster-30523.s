	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/03/22
	//		Author���콨��
	//		TaskName��Monster-30523.s
	//		TaskID��
	//
	//****************************************
	
	//��������1����¼30521����������
	//��������3����¼30523����������
	
		function OnDead(){
			
			$ectype_ID = GetEctypeID(-1,539)
			$a = GetEctypeVar($ectype_ID,3)
			$a = $a + 1
			
			SetEctypeVar($ectype_ID,3,$a)
			if $a == 15
				DeleteMonster($ectype_ID,30529)
			endif
			
		}
			