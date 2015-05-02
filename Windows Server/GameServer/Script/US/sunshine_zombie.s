//   ?? ?? phinx card
	function OnUseItem(){

		$n = GetPlayerInfo( -1, "item", 52149 )

		if $n < 100
			BC( "screen", "player", -1, "You don't have enough items, can't combine!" )
			return
		endif


		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????
		$del_count = SubPlayerInfo( -1, "item", 52149, 100 )
		//??????????

		if $del_count == 0

						AddPlayerInfo( -1, "item", 52151, 1 )

		endif

	}

