//       ??    ?? ???????


	function OnUseItem(){


	$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 3
				BC( "screen", "player", -1, "You need at least 3 open slots in your bag." )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52159,1 )

		if $del == 0
				AddPlayerInfo( -1, "item", 5, 25 )
				AddPlayerInfo( -1, "item", 2222, 15 )
				AddPlayerInfo( -1, "item", 2374, 1 )
		endif


}
