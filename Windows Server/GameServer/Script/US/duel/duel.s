//     ??    ??    ??



function OnRequest(){



		}

function OnOption0(){


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Isn't it past your bedtime, little one?" )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52163 )

			if $a < 1
					BC( "dialogbox", "player", -1, "You need at least 1 Lucky Coin to start playing this game." )
					return
			endif


		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif


		$del = SubPlayerInfo( -1, "item", 52163,1 )

		if $del == 0

			$repeat = GetPlayerVar( -1, 3869 )
			$n = GetPlayerVar( -1, 3870 )

			if $repeat == 1
				$n = $n + 1
				SetPlayerVar( -1, 3870, $n )
			else
				SetPlayerVar( -1, 3870, 0 )
				SetPlayerVar( -1, 3869, 1 )
			endif

			$n = GetPlayerVar( -1, 3870 )

			if $n > 3

				$n = $n - 3
				$n = $n * 10
				$n = 30 - $n
				if $n < 10
					$n = 10
				endif

				$r = RandomNumber( 1, 90 )
					if $r <= $n
						BC( "dialogbox", "player", -1, "Scissors! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
						AddPlayerInfo( -1,"item",52167,1 )
//						AddPlayerInfo( -1,"item",52163,1 )
						return
					else
						$r = RandomNumber( 1, 3 )
							if $r == 1
								BC( "dialogbox", "player", -1, "Rock! Oh, a draw. But I'll win next time!" )
								AddPlayerInfo( -1,"item",52163,1 )
								return
							else
								BC( "dialogbox", "player", -1, "Paper! Yeah! Now your Lucky Coin is mine, my own, my precious. you ought to rethink your strategy a bit!" )
								return
							endif
					endif
			else
				$r = RandomNumber( 1, 3 )

				if $r < 2
					BC( "dialogbox", "player", -1, "Scissors! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
					AddPlayerInfo( -1,"item",52167,1 )
//					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r == 2
					BC( "dialogbox", "player", -1, "Rock! Oh, a draw. But I'll win next time!" )
					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r > 2
					BC( "dialogbox", "player", -1, "Paper! Yeah! Now your Lucky Coin is mine, my own, my precious." )
					return
				endif

			endif
		endif

		}

function OnOption1(){


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Isn't it past your bedtime, little one?" )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52163 )

			if $a < 1
					BC( "dialogbox", "player", -1, "You need at least 1 Lucky Coin to start playing this game." )
					return
			endif


		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif


		$del = SubPlayerInfo( -1, "item", 52163,1 )

		if $del == 0

			$repeat = GetPlayerVar( -1, 3869 )
			$n = GetPlayerVar( -1, 3870 )

			if $repeat == 2
				$n = $n + 1
				SetPlayerVar( -1, 3870, $n )
			else
				SetPlayerVar( -1, 3870, 0 )
				SetPlayerVar( -1, 3869, 2 )
			endif

			$n = GetPlayerVar( -1, 3870 )

			if $n > 3

				$n = $n - 3
				$n = $n * 10
				$n = 30 - $n
				if $n < 10
					$n = 10
				endif

				$r = RandomNumber( 1, 90 )
					if $r <= $n
						BC( "dialogbox", "player", -1, "Paper! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
						AddPlayerInfo( -1,"item",52167,1 )
//						AddPlayerInfo( -1,"item",52163,1 )
						return
					else
						$r = RandomNumber( 1, 3 )
							if $r == 1
								BC( "dialogbox", "player", -1, "Scissors! Oh, a draw. But I'll win next time!" )
								AddPlayerInfo( -1,"item",52163,1 )
								return
							else
								BC( "dialogbox", "player", -1, "Rock! Yeah! Now your Lucky Coin is mine, my own, my precious. you ought to rethink your strategy a bit!" )
								return
							endif
					endif
			else
				$r = RandomNumber( 1, 3 )

				if $r < 2
					BC( "dialogbox", "player", -1, "Paper! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
					AddPlayerInfo( -1,"item",52167,1 )
//					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r == 2
					BC( "dialogbox", "player", -1, "Scissors! Oh, a draw. But I'll win next time!" )
					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r > 2
					BC( "dialogbox", "player", -1, "Rock! Yeah! Now your Lucky Coin is mine, my own, my precious." )
					return
				endif

			endif
		endif

		}

function OnOption2(){


		$lv = GetPlayerInfo( -1, "level" )

		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Isn't it past your bedtime, little one?" )
				return
		endif

		$a = GetPlayerInfo( -1, "item", 52163 )

			if $a < 1
					BC( "dialogbox", "player", -1, "You need at least 1 Lucky Coin to start playing this game." )
					return
			endif


		$empty = GetPlayerInfo( -1, "nullitem",0 )

		if $empty < 1
				BC( "dialogbox", "player", -1, "Your bag is full." )
				return
		endif


		$del = SubPlayerInfo( -1, "item", 52163,1 )

		if $del == 0

			$repeat = GetPlayerVar( -1, 3869 )
			$n = GetPlayerVar( -1, 3870 )

			if $repeat == 3
				$n = $n + 1
				SetPlayerVar( -1, 3870, $n )
			else
				SetPlayerVar( -1, 3870, 0 )
				SetPlayerVar( -1, 3869, 3 )
			endif

			$n = GetPlayerVar( -1, 3870 )

			if $n > 3

				$n = $n - 3
				$n = $n * 10
				$n = 30 - $n
				if $n < 10
					$n = 10
				endif

				$r = RandomNumber( 1, 90 )
					if $r <= $n
						BC( "dialogbox", "player", -1, "Rock! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
						AddPlayerInfo( -1,"item",52167,1 )
//						AddPlayerInfo( -1,"item",52163,1 )
						return
					else
						$r = RandomNumber( 1, 3 )
							if $r == 1
								BC( "dialogbox", "player", -1, "Paper! Oh, a draw. But I'll win next time!" )
								AddPlayerInfo( -1,"item",52163,1 )
								return
							else
								BC( "dialogbox", "player", -1, "Scissors! Yeah! Now your Lucky Coin is mine, my own, my precious. you ought to rethink your strategy a bit!" )
								return
							endif
					endif
			else
				$r = RandomNumber( 1, 3 )

				if $r < 2
					BC( "dialogbox", "player", -1, "Rock! Aw, no! You won. Lucky play! But I'm sure to win next time. Here, take your Victory Token." )
					AddPlayerInfo( -1,"item",52167,1 )
//					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r == 2
					BC( "dialogbox", "player", -1, "Paper! Oh, a draw. But I'll win next time!" )
					AddPlayerInfo( -1,"item",52163,1 )
					return
				endif

				if $r > 2
					BC( "dialogbox", "player", -1, "Scissors! Yeah! Now your Lucky Coin is mine, my own, my precious." )
					return
				endif

			endif
		endif

		}
