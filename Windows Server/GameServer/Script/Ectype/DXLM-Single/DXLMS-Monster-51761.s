	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:??1

	//
	//****************************************
	
	function OnDead(){
		//59898	????
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC("messagebox","player",-1,"You do not have enough space in your bag.")
			SetEctypeVar($ectype_id,$key,0)
		else
			$getvar = GetEctypeVar($ectype_id,$key)
			if $getvar == 3
				SetEctypeVar($ectype_id,$key,4)
			endif
			AddPlayerInfo(-1,"item",59898,1)
			BC("dialogbox","player",-1,"Obtained Feather of Fortune")
		endif
	
	
	}