//  -------------??----------??-----------
	function OnUseItem(){

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )

		//??????????
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????????????
		if $nullitem2 < 1
			BC( "screen", "player", -1, "You don't have enough room in your materials bag!" )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52126, 1 )

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 30
				$n1 = RandomNumber(1, 10000)
				if $n1 < 9000
						AddPlayerInfo( -1, "item", 64409, 1 )
						return
				else
						DropMonsterItems(-1,56096)
						return
				endif
		endif

		$n2 = RandomNumber(1, 10000)

				if $n2 < 9997
						DropMonsterItems(-1,56096)
				else
						$st = GetSystemTime( "yday" )
						$gt = GetGlobalVar( 212 )
						$nl = GetGlobalVar( 213 )

						if $st == $gt
								if $nl < 2
										DropMonsterItems(-1,56101)
										$nl = $nl + 1
										SetGlobalVar( 213,$nl )
								else
										DropMonsterItems(-1,56096)
								endif
						else
								DropMonsterItems(-1,56101)
								SetGlobalVar( 212,$st )
								SetGlobalVar( 213,1 )
						endif
				endif

	}













