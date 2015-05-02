	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/22
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-30503.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnDead(){
		
		$renwu = IsTaskAccept(-1,309)
		if $renwu == 0
			AddMonsterByFloat( 30500,1,7,103,100,0,0,190)
		endif
		
	}