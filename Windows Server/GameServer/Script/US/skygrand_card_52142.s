//  ?? ?? skygrand card

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
		$del_count = SubPlayerInfo( -1, "item", 52142, 1 )
		//??????????

		if $del_count == 0

				$random_item_2 = RandomNumber( 1, 10000 )

					if $random_item_2 <= 1
						AddPlayerInfo( -1, "item", 62564, 1 )
						#name = GetPlayerInfo(-1 , "name")
						BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive an Aeacus pet!" )
						BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive an Aeacus pet!" )
					endif

					if $random_item_2 > 1
						if $random_item_2 <= 2
							AddPlayerInfo( -1, "item", 64181, 1 )
							#name = GetPlayerInfo(-1 , "name")
							BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a Pet Skill Removal Charm!" )
							BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a Pet Skill Removal Charm!" )
						endif
					endif

					if $random_item_2 > 2
						if $random_item_2 <= 3
							AddPlayerInfo( -1, "item", 5384, 1 )
							#name = GetPlayerInfo(-1 , "name")
							BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a Latamantis pet!" )
							BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a Latamantis pet!" )
						endif
					endif

					if $random_item_2 > 3
						if $random_item_2 <= 8
							AddPlayerInfo( -1, "item", 59310, 1 )
							#name = GetPlayerInfo(-1 , "name")
							BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a LV5 Gem Chest!" )
							BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive a LV5 Gem Chest!" )
						endif
					endif

					if $random_item_2 > 8
						if $random_item_2 <= 9
							AddPlayerInfo( -1, "item", 59316, 1 )
							#name = GetPlayerInfo(-1 , "name")
							BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive Athena's Shield!" )
							BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Aeacus Card, and was lucky enough to receive Athena's Shield!" )
						endif
					endif

					if $random_item_2 > 9
						if $random_item_2 <= 59
							AddPlayerInfo( -1, "item", 61092, 1 )
						endif
					endif

					if $random_item_2 > 59
						if $random_item_2 <= 3064
							AddPlayerInfo( -1, "item", 60030, 4 )
						endif
					endif

					if $random_item_2 > 3064
						if $random_item_2 <= 6064
							AddPlayerInfo( -1, "item", 5, 2 )
						endif
					endif

					if $random_item_2 > 6064
						if $random_item_2 <= 7345
							AddPlayerInfo( -1, "item", 60097, 1 )
						endif
					endif

					if $random_item_2 > 7345
						if $random_item_2 <= 9845
							AddPlayerInfo( -1, "item", 63381, 1 )
						endif
					endif

					if $random_item_2 > 9845
						if $random_item_2 <= 9945
							AddPlayerInfo( -1, "item", 18, 1 )
						endif
					endif

					if $random_item_2 > 9945
						if $random_item_2 <= 9950
							AddPlayerInfo( -1, "item", 59287, 1 )
						endif
					endif

					if $random_item_2 > 9950
						if $random_item_2 <= 10000
							AddPlayerInfo( -1, "item", 2135, 1 )
						endif
					endif

		endif

	}
