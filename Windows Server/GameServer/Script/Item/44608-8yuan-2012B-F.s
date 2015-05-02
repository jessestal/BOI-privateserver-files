	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You have less than 4 open bag slots." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif

		$getplayervar = GetPlayerVar(-1,283)
		if $getplayervar == 0
			AddPlayerInfo(-1,"item",54276,1)
			SetPlayerVar(-1,283,1)
			BC("chat","player",-1,"It's your first time opening the Celestial Blessing Gift Pack. You've acquired the card Celestial Lord!")
			BC("dialogbox","player",-1,"It's your first time opening the Celestial Blessing Gift Pack. You've acquired the card Celestial Lord!")
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44608, 1 )
		//??????????
		
		if $del_count == 0
//???????+7???	4	44378
//??????	2	5
//?? 10w???	2	59323
//?????	1	44542
			AddPlayerInfo($playerid,"item",44378,4)
			AddPlayerInfo($playerid,"item",2,2)
			AddPlayerInfo($playerid,"item",44610,2)
			AddPlayerInfo($playerid,"item",44609,1)
		endif

		
	}
