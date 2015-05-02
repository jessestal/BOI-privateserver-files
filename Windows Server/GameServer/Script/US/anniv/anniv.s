// 2011.05.04 ?? ????? ???? ?? ???

function OnRequest(){

	}

function OnOption0(){

		$n1 = GetGlobalVar( 600 )
		$h = GetSystemTime( "hour" )
		$d = GetSystemTime( "yday" )
		$g = GetPlayerVar( -1, 3869 )
		$buff = IsExistStatus(-1 , 7313)

		if $h < 20
			BC( "dialogbox", "player", -1, "The demons appear at 20:00 on Realm 7 in Sea of Atlantis. I can pray to the gods when they are cleared." )
			return
		endif

		if $h > 22
			BC( "dialogbox", "player", -1, "It's too late today, please try tomorrow." )
			return
		endif

		if $n1 == 0
			BC( "dialogbox", "player", -1, "The demon is not defeated yet, come on, heroes!" )
			return
		endif

		if $g != $d
			BC( "dialogbox", "player", -1, "Pray for you, and you can get the god's blessing when the prayer ends." )
			AddStatus( -1, 7313, 1 )
			SetPlayerVar( -1, 3869, $d )
			return
		endif

		if $buff == 0
			BC( "dialogbox", "player", -1, "I am praying for you. You can get the god's blessing when the prayer ends. " )
			return
		endif

		if $g == $d
			BC( "dialogbox", "player", -1, "The prayer ends, you can get the god's blessing." )
			return
		endif

		BC( "dialogbox", "player", -1, "Pray for you, and you can get the god's blessing when the prayer ends." )
		AddStatus( -1, 7313, 1 )
		SetPlayerVar( -1, 3869, $d )

}

function OnOption1(){

		$n1 = GetGlobalVar( 600 )
		$h = GetSystemTime( "hour" )
		$d = GetSystemTime( "yday" )
		$g = GetPlayerVar( -1, 3869 )
		$g2 = GetPlayerVar( -1, 3870 )
		$buff = IsExistStatus(-1 , 7313)

		if $g2 == $d
			BC( "dialogbox", "player", -1, "You have claimed the blessing today, please come tomorrow." )
			return
		endif


		if $h < 20
			BC( "dialogbox", "player", -1, "The demons appear at 20:00 on Realm 7 in Sea of Atlantis. You can get the god's blessing when the prayer ends." )
			return
		endif

		if $h > 22
			BC( "dialogbox", "player", -1, "It's too late today, please try tomorrow." )
			return
		endif

		if $n1 == 0
			BC( "dialogbox", "player", -1, "The demon is not defeated yet, come on, heroes!" )
			return
		endif

		if $g != $d
			BC( "dialogbox", "player", -1, "I haven't prayed for you today." )
			return
		endif

		if $buff == 0
			BC( "dialogbox", "player", -1, "I am praying for you. You can get the god's blessing when the prayer ends. " )
			return
		endif

		$bag = GetPlayerInfo( -1, "nullitem", 0 )

		if $bag < 1
			BC( "dialogbox", "player", -1, "You must have at least 1 free slot in your bag." )
			return
		endif

		BC( "dialogbox", "player", -1, "May you and your family be blessed with health, longevity, and eternal happiness." )

		AddPlayerInfo( -1, "item",52137, 1)
		SetPlayerVar( -1, 3870,$d )

}
