//  -------------??----------??-----------
function OnUseItem(){

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )

		//??????????
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????????????
		if $nullitem2 < 1
			BC( "screen", "player", -1, "You don't have enough room in your materials bag!" )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52118, 1 )

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 40
				DropMonsterItems(-1,56091)
				return
		endif

		DropMonsterItems(-1,56090)


	}













