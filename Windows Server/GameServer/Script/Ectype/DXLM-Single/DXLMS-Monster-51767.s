	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-08-25
	//		Author:???
	//		TaskName:
	//		TaskID:???

	//
	//****************************************
	
	function OnDead(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		$key = 69		
		if $nullitem < 1
			BC("messagebox","player",-1,"You do not have enough space in your bag.")
			SetEctypeVar($ectype_id,$key,0)
			AddMonsterByFloat(51767, 1, $ectype_id, 300, 51, 0)
		else
			$getvar = GetEctypeVar($ectype_id,$key)
			if $getvar == 0
				BC("screen","player",-1,"The ancient soul was released.")
				BC("chat","player",-1,"The ancient soul was released.")
				AddPlayerInfo(-1,"item",44054,1)
				BC("dialogbox","player",-1,"Obtained the Heaven Soul Stone")
				SetEctypeVar($ectype_id,$key,1)
				SetEctypeVar($ectype_id,68,1)
				AddNPC(670,-1)
				//---???
			endif
		endif	
	
	}