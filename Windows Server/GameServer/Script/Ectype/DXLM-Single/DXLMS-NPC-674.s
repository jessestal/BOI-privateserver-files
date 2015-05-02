		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-08-25
		//		Author:???
		//		TaskName:??????
		//		TaskID:???479*
		//
		//****************************************

	function OnRequest(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$key = 72
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DisableNpcOption(0)
		endif
	}


	function OnOption0(){
		//?????
//44054	???
//44055	???
		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		
		$item1 = GetPlayerInfo($playerid,"item",44054)
		if $item1 > 0
			SubPlayerInfo($playerid,"item",44054,1)
			$key = 72
			SetEctypeVar($ectype_id,$key,1)
			BC("dialogbox","player",-1,"Bestowed the Heaven Soul Stone upon the idol.")
			$key = 71
			$getvar = GetEctypeVar($ectype_id,$key)
			if $getvar == 1
				AddNPC(672,-1)
				SetEctypeVar($ectype_id,73,1)
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		else
			BC("dialogbox","player",-1,"Nothing can be inserted here.")
		endif
		

	}
	
	
	
	
	