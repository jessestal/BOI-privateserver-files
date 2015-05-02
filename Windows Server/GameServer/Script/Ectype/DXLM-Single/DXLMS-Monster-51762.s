	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 67
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC("messagebox","player",-1,"You do not have enough space in your bag.")
			SetEctypeVar($ectype_id,$key,0)
		else
//			$getvar = GetEctypeVar($ectype_id,$key)
//			if $getvar == 1
//				SetEctypeVar($ectype_id,$key,2)
//			endif
			AddPlayerInfo(-1,"item",44055,1)
			BC("dialogbox","player",-1,"Obtained the Earth Soul Stone")
			$dropid = 90145
//			DropMonsterItems(-1,$dropid)
		endif
	
	
	}