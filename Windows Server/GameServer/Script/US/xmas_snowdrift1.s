		function OnDead(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )


			if $empty < 1
					BC( "screen", "player", -1, "Your bag is full." )
					return
			endif


				AddPlayerInfo( -1, "item", 52117, 1 )

		}
