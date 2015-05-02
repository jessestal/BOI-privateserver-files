	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/22
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-30504.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnDead(){
		
		$renwu = IsTaskAccept(-1,309)
		if $renwu == 0
			AddMonsterByFloat( 30502,1,7,115,100,0,0,270)
		endif
		
	}