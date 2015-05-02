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
		$del = SubPlayerInfo( -1, "item", 52135, 1 )



		//??????????
		if $del == 0

//?????? 5600
			$no = RandomNumber(1, 10000)

			if $no <= 5600
				AddPlayerInfo( -1, "item", 5, 1 )
			endif

//???? 1600
			if $no > 5600
				if $no <= 7200
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif

//?????? 1500
			if $no > 7200
				if $no <= 8700
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif

//????? 510
			if $no > 8700
				if $no <= 9210
					AddPlayerInfo( -1, "item", 2222, 1 )
				endif
			endif

//?????? 300
			if $no > 9210
				if $no <= 9510
					AddPlayerInfo( -1, "item", 20273, 1 )
				endif
			endif

//????? 300
			if $no > 9510
				if $no <= 9810
					AddPlayerInfo( -1, "item", 64245, 1 )
				endif
			endif

//??????? 100
			if $no > 9810
				if $no <= 9910
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif

//????? 50
			if $no > 9910
				if $no <= 9960
					AddPlayerInfo( -1, "item", 64246, 1 )
				endif
			endif

//????? 30
			if $no > 9960
				if $no <= 9990
					AddPlayerInfo( -1, "item", 64247, 1 )
				endif
			endif

//????? ? 5
			if $no > 9990
				if $no <= 9995
					AddPlayerInfo( -1, "item", 36485, 1 )
				endif
			endif

//????? ? 5
			if $no > 9995
				if $no <= 10000
					AddPlayerInfo( -1, "item", 36483, 1 )
				endif
			endif


		endif

	}
