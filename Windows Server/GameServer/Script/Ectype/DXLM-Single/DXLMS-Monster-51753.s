	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:???51766

	//
	//****************************************
	
	function OnDead(){
		//59898	????

		$ectype_id = GetPlayerInfo(-1,"mapid")		
		$key = 64
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC("messagebox","player",-1,"You do not have enough space in your bag.")
			SetEctypeVar($ectype_id,$key,0)
		else
			$getvar = GetEctypeVar($ectype_id,$key)
			if $getvar == 1
				SetEctypeVar($ectype_id,$key,2)
				AddPlayerInfo(-1,"item",59898,1)
				BC("dialogbox","player",-1,"Obtained Feather of Fortune")
				DeleteNPC(655,-1)
			endif
		endif
		
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 82
		$count = GetEctypeVar($ectype_id,$key)
		$count = $count + 1
		SetEctypeVar($ectype_id,$key,$count)
//		BC( "screen", "player", -1, "GUID:04101000002" )

		
	
	
	}