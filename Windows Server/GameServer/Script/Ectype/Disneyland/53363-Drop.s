	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName�������԰����
	//		TaskID��53363-Drop.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 568 ����¼���������� 1
		//90217  �̳ǵ���
		//90218  �󶨵���
		//3518   ��ҵ���ʹ�����


		//��������
		$ectype_id = GetEctypeID(-1, 568)
		
		$kind = GetPlayerVar(-1,3518)
		if $kind == 3
			DropMonsterItems(-1,90217)
		endif
		if $kind == 2
			DropMonsterItems(-1,90217)
		endif		
		if $kind == 1
			DropMonsterItems(-1,90218)
		endif				
		
		SetPlayerVar(-1,3518,0)
	}