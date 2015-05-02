// ???? ?? ??

function OnRequest(){
		}

function OnOption0(){

	$month =  GetSystemTime( "month" )
	$day =  GetSystemTime( "mday" )
	$h =  GetSystemTime( "hour" )
	$lv = GetPlayerInfo( -1, "level" )
	$a = GetPlayerInfo( -1, "item",52157 )





		if $month != 2
				BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
				return
		else
				if $day < 14
						BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
						return
				endif

				if $day > 21
						BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
						return
				endif
		endif


		if $lv < 20
				BC( "dialogbox", "player", -1, "Oh dear, you're not yet LV20! Reach LV20 if you want to collect a gift!" )
				return
		endif


		$t1 = GetSystemTime( "yday" )
		$t2 = GetPlayerVar( -1, 3866 )

		if $t1 == $t2
				BC( "dialogbox", "player", -1, "You've already collected a gift today" )
				return
		endif

		if $a < 5
				BC( "dialogbox", "player", -1, "You don't have enough Valentine's Chocolates. You need at least 5 to collect a prize" )
				return
		endif

		$del = SubPlayerInfo( -1, "item", 52157,5 )
				if $del == 0

						$a1 = $lv * $lv
						$a2 = $a1 * 10
						$b1 = $lv * 1200
						$c1 = $a2 + $b1

						$exp1 = $c1 * 8
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

						$exp2 = $c * 8
						$exp2 = $exp2 / 10

						if $lv < 40
								AddPlayerInfo( -1 , "exp" , $exp1 )
						else
								AddPlayerInfo( -1 , "exp" , $exp2 )
						endif

						BC( "dialogbox", "player", -1, "Happy Valentine's Day" )
						SetPlayerVar( -1, 3866, $t1 )
				endif

		}


function OnOption1(){

		$month =  GetSystemTime( "month" )
		$day =  GetSystemTime( "mday" )
		$h =  GetSystemTime( "hour" )

		$id = GetPlayerID()
		$headerID = GetTeamHeaderID(-1)
		$teamate_d = GetTeamAreaSize( -1 )
		$team_c = GetTeamMemberCount( -1 )
		$teamer0 = GetTeamMemberID( -1, 0 )
		$teamer1 = GetTeamMemberID( -1, 1 )

		$lv0 = GetPlayerInfo( $teamer0, "level" )
		$lv1 = GetPlayerInfo( $teamer1, "level" )

		$s0 = GetPlayerInfo( $teamer0, "sex" )
		$s1 = GetPlayerInfo( $teamer1, "sex" )

		$t = GetSystemTime( "yday" )
		$t0 = GetPlayerVar( $teamer0, 3866 )
		$t1 = GetPlayerVar( $teamer1, 3866 )

		$a0 = GetPlayerInfo( $teamer0, "item",52157 )
		$a1 = GetPlayerInfo( $teamer1, "item",52157 )




		if $month != 2
				BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
				return
		else
				if $day < 14
						BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
						return
				endif

				if $day > 21
						BC( "dialogbox", "player", -1, "You can collect your gift from Feb. 14th to the 21st" )
						return
				endif
		endif

		if $id != $headerID
				BC( "dialogbox", "player", -1, "Only the party leader can collect the prize." )
				return
		endif


		if $team_c != 2
				BC( "dialogbox", "player", -1, "You don't have enough people in your party, you need at least 2 players of different genders in your party to collect the prize." )
				return
		endif

		if $teamate_d > 9
				BC( "dialogbox", "player", -1, "One of your party members is too far away, or has gone offline." )
				return
		endif

		if $s0 == $s1
				BC( "dialogbox", "player", -1, "You need at least 2 players of different genders in your party to collect the prize." )
				return
		endif

		if $t0 == $t
				BC( "dialogbox", "player", -1, "One of your party members has already collected the gift, you can't collect." )
				return
		endif

		if $t1 == $t
				BC( "dialogbox", "player", -1, "One of your party members has already collected the gift, you can't collect." )
				return
		endif


		if $lv0 < 20
				BC( "dialogbox", "player", -1, "One of your party members is not yet LV20, cannot collect." )
				return
		endif

		if $lv1 < 20
				BC( "dialogbox", "player", -1, "One of your party members is not yet LV20, cannot collect." )
				return
		endif

		if $a0 < 5
				BC( "dialogbox", "player", -1, "One of your party members doesn't have enough Valentine's Chocolates. You need at least 5 to collect the gift ." )
				return
		endif

		if $a1 < 5
				BC( "dialogbox", "player", -1, "One of your party members doesn't have enough Valentine's Chocolates. You need at least 5 to collect the gift ." )
				return
		endif

		$del0 = SubPlayerInfo( $teamer0, "item", 52157,5 )
		$del1 = SubPlayerInfo( $teamer1, "item", 52157,5 )

		$a1 = $lv0 * $lv0
		$a2 = $a1 * 10
		$b1 = $lv0 * 1200
		$c1 = $a2 + $b1

		$exp1 = $c1 * 16
		$exp11 = $exp1 / 10


		$a = $lv0 * $lv0
		$a = $a * $lv0
		$a = $a * 186
		$b = $lv0 * $lv0
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv0
		$c = $c + $a
		$c = $c - 15760000

		$exp2 = $c * 16
		$exp21 = $exp2 / 10

		$a1 = $lv1 * $lv1
		$a2 = $a1 * 10
		$b1 = $lv1 * 1200
		$c1 = $a2 + $b1

		$exp1 = $c1 * 16
		$exp12 = $exp1 / 10


		$a = $lv1 * $lv1
		$a = $a * $lv1
		$a = $a * 186
		$b = $lv1 * $lv1
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv1
		$c = $c + $a
		$c = $c - 15760000

		$exp2 = $c * 16
		$exp22 = $exp2 / 10


		if $lv0 < 40
				AddPlayerInfo( $teamer0 , "exp" , $exp11 )
		else
				AddPlayerInfo( $teamer0 , "exp" , $exp21 )
		endif


		if $lv1 < 40
				AddPlayerInfo( $teamer1 , "exp" , $exp12 )
		else
				AddPlayerInfo( $teamer1 , "exp" , $exp22 )
		endif


		BC( "dialogbox", "player", $teamer0, "Happy Valentine's Day" )
		BC( "dialogbox", "player", $teamer1, "Happy Valentine's Day" )

		SetPlayerVar( $teamer0, 3866, $t )
		SetPlayerVar( $teamer1, 3866, $t )



		}




