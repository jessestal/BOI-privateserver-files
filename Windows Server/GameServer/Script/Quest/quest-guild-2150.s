	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��
	//		Author��
	//		TaskName��
	//		TaskID��
	//
	//****************************************
	
	
	
	function OnTaskDone(){
		
		$today = GetSystemTime( "yday" )
		
		//��ɶԻ��������ñ���
		SetPlayerVar( -1 , "4063" , 100 )
		//�������һ�ι������������
		SetPlayerVar( -1 , 4061 , $today )
		
		
	}
