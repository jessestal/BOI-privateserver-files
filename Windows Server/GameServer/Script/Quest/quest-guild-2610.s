	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/08/07
	//		Author���콨��
	//		TaskName��quest-guild-2610.s
	//		TaskID�����᳣�������ȡ
	//
	//****************************************
	
	//�߼����� 4036
	//�������� 4037
	
	function OnTaskDone(){
		
		$today = GetSystemTime( "yday" )
		
		//��ɶԻ��������ñ���
		SetPlayerVar( -1 , "4063" , 200 )
		//�������һ�ι������������
		SetPlayerVar( -1 , 4037 , $today )
		
	}