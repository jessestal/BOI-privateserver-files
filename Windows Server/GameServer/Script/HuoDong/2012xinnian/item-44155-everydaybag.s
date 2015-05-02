	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-12-6
	//		Author:???
	//		TaskName:?-????-?
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){

		$playerid = GetPlayerID()
		$level = GetPlayerInfo($playerid,"level")

//59615	?????			50%
//44093	???????(30??)			25%
//44156	????			25%

		if $level < 60
			BC("screen","player",-1,"Must be at least LV60 to open.")
			return
		endif
		$nullitem = GetPlayerInfo($playerid,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif

		$sub = SubPlayerInfo($playerid,"item",44155,1)
		if $sub == 0
			$randbuff = RandomNumber(0,99)
			if $randbuff < 50
				AddPlayerInfo($playerid,"item",59615,1)
			else
				if $randbuff < 75
					AddPlayerInfo($playerid,"item",44093,1)
				else
					AddPlayerInfo($playerid,"item",44156,1)
				endif
			endif
		endif


	}
