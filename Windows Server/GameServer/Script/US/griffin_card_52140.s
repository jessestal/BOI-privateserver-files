//-------------??------------??------------------???-----------------

	function OnUseItem(){

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????
		$del_count = SubPlayerInfo( -1, "item", 52140, 1 )
		//??????????


		$random_item_2 = RandomNumber( 1, 10000 )

		if $random_item_2 <= 5
				AddPlayerInfo( -1, "item", 62561, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Furios pet!" )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Furios pet!" )
			endif

			if $random_item_2 > 5
				if $random_item_2 <= 6
					AddPlayerInfo( -1, "item", 64181, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Pet Skill Removal Charm!" )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Pet Skill Removal Charm!" )
				endif
			endif

			if $random_item_2 > 6
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Gem of Helios LV4!" )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a Gem of Helios LV4!" )
				endif
			endif

			if $random_item_2 > 7
				if $random_item_2 <= 9
					AddPlayerInfo( -1, "item", 60099, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a LV13 Chalice Coupon!" )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive a LV13 Chalice Coupon!" )
				endif
			endif

			if $random_item_2 > 9
				if $random_item_2 <= 10
					AddPlayerInfo( -1, "item", 60098, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive Athena's Shield!" )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with their Furious Card, and was lucky enough to receive Athena's Shield!" )
				endif
			endif

			if $random_item_2 > 10
				if $random_item_2 <= 60
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif

			if $random_item_2 > 60
				if $random_item_2 <= 2695
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif

			if $random_item_2 > 2695
				if $random_item_2 <= 4695
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif

			if $random_item_2 > 4695
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

	}
