	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/11
	//		Author�����쳽����ϸ������������
	//		TaskName��ľ��������
	//		TaskID��11987_monster_Drop.s
	//
	//****************************************
	
	function OnDead(){

		
		$playerid = GetEctypeVar(-1,110)
		$dropitemD = 90226
		
		DropMonsterItems($playerid,$dropitemD)

	}