  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/07/24
	//		Author��������
	//		TaskName��skillqinglong.s
	//		TaskID���������Ƽ���
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6399, 1 )
		AddPlayerInfo( -1, "hp", 50000 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
	}