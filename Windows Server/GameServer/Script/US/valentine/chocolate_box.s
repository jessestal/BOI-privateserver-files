//--------------???  ??--------------------------------

function OnDead(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )

			AddMonster( 56149, 1, 2, 58, 78, 50 )

			if $empty < 1
					BC( "screen", "player", -1, "Your bag is full." )
					return
			endif


				AddPlayerInfo( -1, "item", 52157, 1 )

		}
