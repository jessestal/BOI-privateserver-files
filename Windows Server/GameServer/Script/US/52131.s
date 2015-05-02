	function OnUseItem(){

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )

		//??????????
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52131, 1 )

		AddPlayerInfo( -1, "item", 59164, 200 )

	}
