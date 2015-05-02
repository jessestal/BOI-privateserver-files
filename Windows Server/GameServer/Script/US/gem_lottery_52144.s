//   ?? ?? phinx card
	function OnUseItem(){

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif

		//????
		$del_count = SubPlayerInfo( -1, "item", 52144, 1 )
		//??????????

		if $del_count == 0

				$a = RandomNumber( 1, 10000 )

					if $a <= 2
						AddPlayerInfo( -1, "item", 2115, 1 )
						#name = GetPlayerInfo(-1 , "name")
//						BC("screen", "servergroup", -1, "GUID:08406000002",#name,"GUID:08406000003" )
//						BC("chat", "servergroup", -1, "GUID:08406000004",#name,"GUID:08406000005" )
					endif

					if $a > 2
						if $a <= 4
							AddPlayerInfo( -1, "item", 2135, 1 )
						endif
					endif


					if $a > 4
						if $a <= 15
							AddPlayerInfo( -1, "item", 63422, 1 )
						endif
					endif

					if $a > 15
						if $a <= 26
							AddPlayerInfo( -1, "item", 64248, 1 )
						endif
					endif

					if $a > 26
						if $a <= 79
							AddPlayerInfo( -1, "item", 64247, 1 )
						endif
					endif


					if $a > 79
						if $a <= 132
							AddPlayerInfo( -1, "item", 2127, 1 )
						endif
					endif


					if $a > 132
						if $a <= 399
							AddPlayerInfo( -1, "item", 59303, 1 )
						endif
					endif



					if $a > 399
						if $a <= 666
							AddPlayerInfo( -1, "item", 2131, 1 )
						endif
					endif


					if $a > 666
						if $a <= 2000
							AddPlayerInfo( -1, "item", 64245, 1 )
						endif
					endif


					if $a > 2000
						if $a <= 3600
							AddPlayerInfo( -1, "item", 2449, 1 )
						endif
					endif



					if $a > 3600
						if $a <= 6000
							AddPlayerInfo( -1, "item", 60097, 1 )
						endif
					endif



					if $a > 6000

							AddPlayerInfo( -1, "item", 5, 1 )

					endif


		endif

	}

