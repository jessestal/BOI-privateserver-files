	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/03/22
	//		Author���콨��
	//		TaskName��Monster-30516.s
	//		TaskID��
	//
	//****************************************
	
	//��������4�����ڼ�¼30516����������
	
	function OnDead(){
		
		$player_id = GetPlayerID()
		$ectype_id = GetEctypeID($player_id,539)
		$a = GetEctypeVar($ectype_id,4)
		$a = $a + 1
		SetEctypeVar($ectype_id,4,$a)
		if $a == 8
			OpenMask(2,$ectype_id)
		endif
		
	}