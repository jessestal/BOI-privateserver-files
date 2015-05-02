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

		$sex = GetPlayerInfo( -1, "sex" )

		//?
		$gift1 = 59839
		$gift2 = 36506




		//??????????
		if $nullitem < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif


		//???????
		$del = SubPlayerInfo( -1, "item", 52162, 1 )

		//??????????
		if $del == 0


				AddPlayerInfo( -1, "item", $gift1, 5 )
				AddPlayerInfo( -1, "item", $gift2, 1 )


		endif

	}
