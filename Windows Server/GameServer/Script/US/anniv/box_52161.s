	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	??
	//		TaskName:blessing_of_hades_52107.s
	//		TaskID:?????
	//
	//****************************************

	function OnUseItem(){


		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )

		$gift1 = 59838
		$gift2 = 1
		$gift3 = 60013
		$gift4 = 59771


		//??????????
		if $nullitem < 3
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????????????
		if $nullitem2 < 1
			BC( "screen", "player", -1, "You don't have enough room in your materials bag!" )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52161, 1 )

		//??????????
		if $del == 0


				AddPlayerInfo( -1, "item", $gift1, 5 )
				AddPlayerInfo( -1, "item", $gift2, 100 )
				AddPlayerInfo( -1, "item", $gift3, 100 )
				AddPlayerInfo( -1, "item", $gift4, 1 )

		endif

	}
