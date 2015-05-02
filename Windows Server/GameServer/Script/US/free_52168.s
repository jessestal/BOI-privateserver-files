	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	??
	//		TaskName:blessing_of_hades_52106.s
	//		TaskID:??????
	//
	//****************************************

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
		$del = SubPlayerInfo( -1, "item", 52168, 1 )



		//??????????
		if $del == 0


			$no = RandomNumber(1, 100)

			if $no <= 1
				AddPlayerInfo( -1, "item", 62027, 1 )
				return
			endif

			if $no <= 4
				AddPlayerInfo( -1, "item", 5955, 1 )
				return
			endif

			if $no <= 11
				AddPlayerInfo( -1, "item", 59081, 1 )
				return
			endif

			if $no <= 23
				AddPlayerInfo( -1, "item", 59080, 1 )
				return
			endif

			if $no <= 48
				AddPlayerInfo( -1, "item", 2221, 1 )
				return
			endif

			if $no <= 100
				AddPlayerInfo( -1, "item", 63720, 1 )
				return
			endif

		endif

	}
