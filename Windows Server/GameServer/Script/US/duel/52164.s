function OnUseItem(){


		$empty = GetPlayerInfo( -1, "nullitem",0 )
		if $empty < 1
				BC( "screen", "player", -1, "Make sure you reserve at least 1 open slot in your bag, or you won't be able to collect your prize." )
				return
		endif

		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif

			SubPlayerInfo(-1,"item",52164,1)
			AddPlayerInfo( -1, "item", 59104, 1 )

			$lv = GetPlayerInfo( -1, "level" )


				$a1 = $lv * $lv
				$a2 = $a1 * 10
				$b1 = $lv * 1200
				$c1 = $a2 + $b1

				$exp1 = $c1 * 2
				$exp1 = $exp1 / 10

				$a = $lv * $lv
				$a = $a * $lv
				$a = $a * 186
				$b = $lv * $lv
				$b = $b * 24421
				$c = $a - $b
				$a = 1075000 * $lv
				$c = $c + $a
				$c = $c - 15760000

				$exp2 = $c * 2
				$exp2 = $exp2 / 10

				if $lv < 40
						AddPlayerInfo( -1 , "exp" , $exp1 )
				else
						AddPlayerInfo( -1 , "exp" , $exp2 )
				endif



	}
