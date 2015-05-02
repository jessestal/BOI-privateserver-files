	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/02/22
	//		Author:???
	//		TaskName:478????
	//		TaskID:
	//
	//****************************************
	
	
	function EnterArea(){
		//??2????????????
		$ectype_id = GetEctypeID(-1, 478) 
		$key = 66
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			$monster1 = 51765
			$monster2 = 51856
			
			AddMonsterByFloat($monster1, 1, $ectype_id, 68, 94, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 73, 94, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 78, 94, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 83, 94, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 88, 94, 0)
			
			AddMonsterByFloat($monster1, 1, $ectype_id, 68, 78, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 73, 78, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 78, 78, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 83, 78, 0)
			AddMonsterByFloat($monster1, 1, $ectype_id, 88, 78, 0)
			
			AddMonsterByFloat($monster2, 1, $ectype_id, 68, 94, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 73, 94, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 78, 94, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 83, 94, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 88, 94, 0)
			
			AddMonsterByFloat($monster2, 1, $ectype_id, 68, 78, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 73, 78, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 78, 78, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 83, 78, 0)
			AddMonsterByFloat($monster2, 1, $ectype_id, 88, 78, 0)
			$monsterA = 51751
			AddMonsterByFloat($monsterA, 1, $ectype_id, 58, 87, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 59, 87, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 57, 87, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 58, 86, 0)
			AddMonsterByFloat($monsterA, 1, $ectype_id, 58, 88, 0)
			SetEctypeVar($ectype_id,$key,1)
			BC( "screen", "player", -1, "You activated some triggers." )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		endif
		
	}
	
	function LeaveArea(){
	
	
	
	}