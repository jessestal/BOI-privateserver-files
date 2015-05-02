	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/22
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-30512.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnDead(){
		
		$player_id = GetPlayerID()
		$ectype_id = GetEctypeID($player_id,539)
		OpenMask(1,$ectype_id)
		DeleteMonster($ectype_id,30525)
		DeleteMonster($ectype_id,30527)
		
		
	}