	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/07/31
	//		Author�����쳽����ϸ������������
	//		TaskName����ԯ��BOSS���
	//		TaskID��DXLM2-BOSS-Qimeng-51788.s
	//
	//****************************************

	function OnDead(){
		
	//��ȡ�����Ѷȣ������ѶȽ����������Ʒ��ˢ������,����NPC
	$dif = GetEctypeVar(-1, 99 )
	
	AddNPC( -1, 689)
	AddNPC( -1, 584)

	//����ģʽ�½������飬��Ʒ�͹���
	if $dif == 1
	//������Ҿ���	
//	AddPlayerInfo(-1, )
	
	//�ж���������Ʒ��

	//������ҵ��� ����ʯ�����ˣ�
//	AddPlayerInfo(-1, "item",  , 1)

	
	//ˢ�����������������9��
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)		
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)

		
	endif
	
	//����ģʽ�½������飬��Ʒ��ˢ������
	
	
	if $dif == 2
	//������Ҿ���	
	
	//������ҵ��� ����ʯ�����ˣ�
	//�ж���������Ʒ��
	
	//ˢ�����������������15��
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
		
	}