	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/08
	//		Author���Ƴ�
	//		TaskName��Quest-bainian-4234.s
	//		TaskID�������������4234
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
		
		//1.4������
		$expold = $exp
		$exp = $exp / 10
		$exp = $exp * 4
		$exp = $expold + $exp
		
		//��������
		AddPlayerInfo( -1, "exp", $exp )
		
		AcceptTask( -1, 4235 )
	}