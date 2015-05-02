	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/22
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-30505.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnDead(){
		
		$renwu = IsTaskAccept(-1,309)
		if $renwu == 0
			AddMonsterByFloat( 30501,1,7,107,107,0,0,45 )
		endif
		
	}