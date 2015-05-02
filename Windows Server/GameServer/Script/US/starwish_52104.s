function OnUseItem(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )

			if $empty < 2
					BC( "screen", "player", -1, "You need at least 2 empty slots in your bag to open this." )
					return
			endif

			$result = SubPlayerInfo( -1, "item", 52104,1 )

			if $result < 0
					BC( "screen", "player", -1, "Failed to open Bag." )
					return
			endif

			AddPlayerInfo( -1, "item", 64266,10 )
			AddPlayerInfo( -1, "item", 63403,10 )

		}
