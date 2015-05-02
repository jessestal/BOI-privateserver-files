//  ?? ?? ??????

function OnRequest(){

	}



function OnOption0(){

		$n1 = GetGlobalVar( 216 )
		$h = GetSystemTime( "hour" )
		$d = GetSystemTime( "yday" )
		$g = GetPlayerVar( -1, 3861 )
		$buff = IsExistStatus(-1 , 7316)

		if $h < 20
			BC( "dialogbox", "player", -1, "The zombies will begin attacking the Sun Tree at 20:00. Defeat them, and after I've purified the area, I'll give you a gift. Don't be greedy - you can only choose one gift!" )
			return
		endif

		if $h > 23
			BC( "dialogbox", "player", -1, "It's too late today, please try tomorrow." )
			return
		endif

		if $n1 == 0
			BC( "dialogbox", "player", -1, "The zombies haven't been defeated yet! Hurry, heroes!" )
			return
		endif

		if $g != $d
			BC( "dialogbox", "player", -1, "The purifying ceremony has begun. You may collect your gift after the ceremony." )
			AddStatus( -1, 7316, 1 )
			SetPlayerVar( -1, 3861, $d )
			return
		endif

		if $buff == 0
			BC( "dialogbox", "player", -1, "The ceremony is still under way. You must wait for the ceremony to finish before you can collect your gift." )
			return
		endif

		if $g == $d
			BC( "dialogbox", "player", -1, "The ceremony has finished! You may collect your gift." )
			return
		endif

		BC( "dialogbox", "player", -1, "The purifying ceremony has begun. You may collect your gift after the ceremony." )
		AddStatus( -1, 7316, 1 )
		SetPlayerVar( -1, 3861, $d )

}

function OnOption1(){

		$n1 = GetGlobalVar( 216 )
		$h = GetSystemTime( "hour" )
		$d = GetSystemTime( "yday" )
		$g = GetPlayerVar( -1, 3861 )
		$g2 = GetPlayerVar( -1, 3862 )
		$buff = IsExistStatus(-1 , 7316)

		if $g2 == $d
			BC( "dialogbox", "player", -1, "You've already collected your gift today, come again tomorrow." )
			return
		endif


		if $h < 20
			BC( "dialogbox", "player", -1, "The zombies will begin attacking the Sun Tree at 20:00. Defeat them, and after I've purified the area, I'll give you a gift. Don't be greedy - you can only choose one gift!" )
			return
		endif

		if $h > 23
			BC( "dialogbox", "player", -1, "It's too late today, please try tomorrow." )
			return
		endif

		if $n1 == 0
			BC( "dialogbox", "player", -1, "The zombies haven't been defeated yet! Hurry, heroes!" )
			return
		endif

		if $g != $d
			BC( "dialogbox", "player", -1, "You haven't performed the purifying ceremony yet." )
			return
		endif

		if $buff == 0
			BC( "dialogbox", "player", -1, "The ceremony is still under way. You must wait for the ceremony to finish before you can collect your gift." )
			return
		endif

		$bag = GetPlayerInfo( -1, "nullitem", 0 )

		if $bag < 1
			BC( "dialogbox", "player", -1, "You must have at least 1 free slot in your bag." )
			return
		endif

		BC( "dialogbox", "player", -1, "May you and your family be blessed with health, longevity, and eternal happiness." )

		AddPlayerInfo( -1, "item",52153, 1)
		SetPlayerVar( -1, 3862,$d )

}

function OnOption2(){

		$n1 = GetGlobalVar( 216 )
		$h = GetSystemTime( "hour" )
		$d = GetSystemTime( "yday" )
		$g = GetPlayerVar( -1, 3861 )
		$g2 = GetPlayerVar( -1, 3862 )
		$buff = IsExistStatus(-1 , 7316)

		if $g2 == $d
			BC( "dialogbox", "player", -1, "You've already collected your gift today, come again tomorrow." )
			return
		endif


		if $h < 20
			BC( "dialogbox", "player", -1, "The zombies will begin attacking the Sun Tree at 20:00. Defeat them, and after I've purified the area, I'll give you a gift. Don't be greedy - you can only choose one gift!" )
			return
		endif

		if $h > 23
			BC( "dialogbox", "player", -1, "It's too late today, please try tomorrow." )
			return
		endif

		if $n1 == 0
			BC( "dialogbox", "player", -1, "The zombies haven't been defeated yet! Hurry, heroes!" )
			return
		endif

		if $g != $d
			BC( "dialogbox", "player", -1, "You haven't performed the purifying ceremony yet." )
			return
		endif

		if $buff == 0
			BC( "dialogbox", "player", -1, "The ceremony is still under way. You must wait for the ceremony to finish before you can collect your gift." )
			return
		endif

		$a1 = GetPlayerInfo( -1, "item",52150 )
		$a2 = GetPlayerInfo( -1, "item",52151 )
		$a3 = GetPlayerInfo( -1, "item",52152 )

		if $a1 < 1
			if $a2 < 1
				if $a3 < 1
					BC( "dialogbox", "player", -1, "You don't have a Sunshine Crystal, you can't collect this giftbox." )
					return
				endif
			endif
		endif

		$bag = GetPlayerInfo( -1, "nullitem", 0 )

		if $bag < 1
			BC( "dialogbox", "player", -1, "You must have at least 1 free slot in your bag." )
			return
		endif


		if $a1 > 0
			$del = SubPlayerInfo( -1, "item", 52150,1 )
			if $del == 0
				AddPlayerInfo( -1, "item",52154, 1)
				SetPlayerVar( -1, 3862,$d )
				BC( "dialogbox", "player", -1, "Thank you for your help! May you and your family be blessed with health, longevity, and eternal happiness." )
				return
			endif
		endif

		if $a2 > 0
			$del = SubPlayerInfo( -1, "item", 52151,1 )
			if $del == 0
				AddPlayerInfo( -1, "item",52154, 1)
				SetPlayerVar( -1, 3862,$d )
				BC( "dialogbox", "player", -1, "Thank you for your help! May you and your family be blessed with health, longevity, and eternal happiness." )
				return
			endif
		endif

		if $a3 > 0
			$del = SubPlayerInfo( -1, "item", 52152,1 )
			if $del == 0
				AddPlayerInfo( -1, "item",52154, 1)
				SetPlayerVar( -1, 3862,$d )
				BC( "dialogbox", "player", -1, "Thank you for your help! May you and your family be blessed with health, longevity, and eternal happiness." )
				return
			endif
		endif

}
