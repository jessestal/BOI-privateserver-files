	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/05/08
	//		Author���Ƴ�
	//		TaskName��Quest-bainian-4236.s
	//		TaskID�������������4236
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
		
		//1.8������
		$expold = $exp
		$exp = $exp / 10
		$exp = $exp * 8
		$exp = $expold + $exp
		
		//��������
		AddPlayerInfo( -1, "exp", $exp )
		
		AcceptTask( -1, 4237 )
	}