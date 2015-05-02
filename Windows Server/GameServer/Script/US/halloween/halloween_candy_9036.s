//  ?? ?? ???

function OnRequest(){

	}


function OnOption0(){

		$d = GetSystemTime( "yday" )
		$g2 = GetPlayerVar( -1, 3862 )
		$lv = GetPlayerInfo( -1, "level" )

		if $g2 == $d
			BC( "dialogbox", "player", -1, "Hey there, friend. How goes it today? That candy of yours is really tasty." )
			return
		endif

		$candy = GetPlayerInfo( -1, "item",52155 )


		if $candy < 1
				BC( "dialogbox", "player", -1, "What?! No candy, and you still want a prize? Do you take me for a fool?!" )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52155,1 )

		if $del == 0
				AddStatus( -1, 7317, 1 )
				SetPlayerVar( -1, 3862,$d )
				BC( "dialogbox", "player", -1, "Hah, I like you! Let's be friends." )
		endif


		$a1 = $lv * $lv
		$a2 = $a1 * 10
		$b1 = $lv * 1200
		$c1 = $a2 + $b1

		$exp1 = $c1

		$a = $lv * $lv
		$a = $a * $lv
		$a = $a * 186
		$b = $lv * $lv
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv
		$c = $c + $a
		$c = $c - 15760000

		$exp2 = $c

		if $lv < 40

			AddPlayerInfo( -1 , "exp" , $exp1 )

		else

			AddPlayerInfo( -1 , "exp" , $exp2 )

		endif



}
