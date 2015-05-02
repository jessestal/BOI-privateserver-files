// 北美 卢鑫 感恩节 食物

	function OnUseItem(){

	$lv = GetPlayerInfo( -1, "level" )

	$del = SubPlayerInfo( -1, "item", 52156,1 )

		if $del == 0
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


			AddStatus( -1, 7318, 1 )


		endif



	}
