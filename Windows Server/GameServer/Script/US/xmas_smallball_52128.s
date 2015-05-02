function OnUseItem(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )

			if $empty < 1
					BC( "screen", "player", -1, "You do not have enough space in your Bag." )
					return
			endif

			$a = GetPlayerInfo( -1, "item", 52128 )

			if $a < 10
					BC( "screen", "player", -1, "You don't have enough Ice Crystals, cannot combine." )
					return
			endif

			$sub = SubPlayerInfo(-1,"item",52128,10)
			AddPlayerInfo( -1, "item", 52116, 1 )

		}
