	function OnUseItem(){

			$empty = GetPlayerInfo( -1, "nullitem",0 )
			if $empty < 1
					BC( "screen", "player", -1, "Make sure you reserve at least 1 open slot in your bag, or you won't be able to collect your prize." )
					return
			endif

			SubPlayerInfo(-1,"item",52122,1)
			DropMonsterItems(-1,56092)


	}
