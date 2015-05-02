function OnUseItem(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )

			if $empty < 1
					BC( "dialogbox", "player", -1, "You must have at least 1 free slot in your bag." )
					return
			endif

			$result = SubPlayerInfo( -1, "item", 52112,1 )

			if $result < 0
					BC( "dialogbox", "player", -1, "Failed to open Bag." )
					return
			endif

			AddPlayerInfo( -1, "item", 64386, 1 )


		}
