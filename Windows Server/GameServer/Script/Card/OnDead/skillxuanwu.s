  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/24
	//		Author：张文宇
	//		TaskName：skillxuanwu.s
	//		TaskID：玄武卡牌技能
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6403, 1 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
	}