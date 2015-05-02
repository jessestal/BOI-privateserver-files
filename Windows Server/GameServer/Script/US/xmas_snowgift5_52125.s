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
		$del = SubPlayerInfo( -1, "item", 52125, 1 )

		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 30
				$n1 = RandomNumber(1, 10000)
				if $n1 < 9000
						AddPlayerInfo( -1, "item", 63710, 1 )
						return
				else
						DropMonsterItems(-1,56095)
						return
				endif
		endif

		$n2 = RandomNumber(1, 10000)

				if $n2 < 9997
						DropMonsterItems(-1,56095)
				else
						$st = GetSystemTime( "yday" )
						$gt = GetGlobalVar( 210 )
						$nl = GetGlobalVar( 211 )

						if $st == $gt
								if $nl < 2
										DropMonsterItems(-1,56100)
										$nl = $nl + 1
										SetGlobalVar( 211,$nl )
								else
										DropMonsterItems(-1,56095)
								endif
						else
								DropMonsterItems(-1,56100)
								SetGlobalVar( 210,$st )
								SetGlobalVar( 211,1 )
						endif
				endif

	}













