  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/07/24
	//		Author��������
	//		TaskName��skillbaihu.s
	//		TaskID���׻����Ƽ���
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6400, 1 )
		AddPlayerInfo( -1, "mp", 100000 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
	}