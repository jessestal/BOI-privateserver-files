	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/08
	//		Author���Ƴ�
	//		TaskName��Quest-bainian-4231.s
	//		TaskID�������������4231
	//
	//****************************************
	
	function OnTaskDone(){
		//��������׶εİ��꽱��������һ���׶�����
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 20
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
		
		//0.8������
		$exp = $exp / 10
		$exp = $exp * 8
		
		//��������
		AddPlayerInfo( -1, "exp", $exp )
		
		AcceptTask( -1, 4232 )
	}