// 2011.05.04 ?? ????? ?????

	function OnRequest(){


	}

	function OnOption0(){

		$level = GetPlayerInfo( -1, "level" )
		$gift = GetPlayerVar( -1, 3868 )

		if $level < 25
			BC( "dialogbox", "player", -1, "Must be LV25-39 to collect" )
			return
		endif



		if $level > 39
			BC( "dialogbox", "player", -1, "Must be LV25-39 to collect" )
			return
		endif



		if $gift == 1
			BC( "dialogbox", "player", -1, "You've already collected this gift." )
			return
		endif



		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		AddPlayerInfo( -1, "item", 59121, 20 )

		SetPlayerVar( -1, 3868, 1 )

	}



	function OnOption1(){
		$level = GetPlayerInfo( -1, "level" )
		$job = GetPlayerInfo( -1, "profession" )
		$gift = GetPlayerVar( -1, 3868 )
		$a = 31003
		$b = 31010
		$c = 31018
		$d = 31025
		$e = 31032
		$f = 31202

		if $level < 40
			BC( "dialogbox", "player", -1, "Must be LV40-54 to collect" )
			return
		endif



		if $level > 54
			BC( "dialogbox", "player", -1, "Must be LV40-54 to collect" )
			return
		endif


		if $gift == 2
			BC( "dialogbox", "player", -1, "You've already collected this gift." )
			return
		endif





		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		if $job == 1
			AddPlayerInfo( -1, "item", $a, 1 )
		endif

		if $job == 2
			AddPlayerInfo( -1, "item", $b, 1 )
		endif

		if $job == 3
			AddPlayerInfo( -1, "item", $c, 1 )
		endif

		if $job == 4
			AddPlayerInfo( -1, "item", $d, 1 )
		endif

		if $job == 5
			AddPlayerInfo( -1, "item", $e, 1 )
		endif

		if $job == 6
			AddPlayerInfo( -1, "item", $f, 1 )
		endif



		SetPlayerVar( -1, 3868, 2 )


	}


	function OnOption2(){

		$level = GetPlayerInfo( -1, "level" )
		$job = GetPlayerInfo( -1, "profession" )
		$gift = GetPlayerVar( -1, 3868 )

		$a = 31043
		$b = 31050
		$c = 31058
		$d = 31065
		$e = 31072
		$f = 31210


		if $level < 55
			BC( "dialogbox", "player", -1, "Must be LV55-69 to collect" )
			return
		endif



		if $level > 69
			BC( "dialogbox", "player", -1, "Must be LV55-69 to collect" )
			return
		endif


		if $gift == 3
			BC( "dialogbox", "player", -1, "You've already collected this gift." )
			return
		endif



		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		if $job == 1
			AddPlayerInfo( -1, "item", $a, 1 )
		endif

		if $job == 2
			AddPlayerInfo( -1, "item", $b, 1 )
		endif

		if $job == 3
			AddPlayerInfo( -1, "item", $c, 1 )
		endif

		if $job == 4
			AddPlayerInfo( -1, "item", $d, 1 )
		endif

		if $job == 5
			AddPlayerInfo( -1, "item", $e, 1 )
		endif

		if $job == 6
			AddPlayerInfo( -1, "item", $f, 1 )
		endif



		SetPlayerVar( -1, 3868, 3 )

	}

	function OnOption3(){

		$level = GetPlayerInfo( -1, "level" )
		$job = GetPlayerInfo( -1, "profession" )
		$gift = GetPlayerVar( -1, 3868 )

		$a = 31083
		$b = 31090
		$c = 31098
		$d = 31105
		$e = 31112
		$f = 31218


		if $level < 70
			BC( "dialogbox", "player", -1, "Must be LV70-84 to collect" )
			return
		endif



		if $level > 84
			BC( "dialogbox", "player", -1, "Must be LV70-84 to collect" )
			return
		endif


		if $gift == 4
			BC( "dialogbox", "player", -1, "You've already collected this gift." )
			return
		endif







		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		if $job == 1
			AddPlayerInfo( -1, "item", $a, 1 )
		endif

		if $job == 2
			AddPlayerInfo( -1, "item", $b, 1 )
		endif

		if $job == 3
			AddPlayerInfo( -1, "item", $c, 1 )
		endif

		if $job == 4
			AddPlayerInfo( -1, "item", $d, 1 )
		endif

		if $job == 5
			AddPlayerInfo( -1, "item", $e, 1 )
		endif

		if $job == 6
			AddPlayerInfo( -1, "item", $f, 1 )
		endif



		SetPlayerVar( -1, 3868, 4 )

	}

	function OnOption4(){

		$level = GetPlayerInfo( -1, "level" )
		$job = GetPlayerInfo( -1, "profession" )
		$gift = GetPlayerVar( -1, 3868 )

		$a = 31123
		$b = 31130
		$c = 31138
		$d = 31145
		$e = 31152
		$f = 31226

		if $level < 85
			BC( "dialogbox", "player", -1, "Must be LV85-99 to collect" )
			return
		endif



		if $level > 99
			BC( "dialogbox", "player", -1, "Must be LV85-99 to collect" )
			return
		endif


		if $gift == 5
			BC( "dialogbox", "player", -1, "You've already collected this gift." )
			return
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		if $job == 1
			AddPlayerInfo( -1, "item", $a, 1 )
		endif

		if $job == 2
			AddPlayerInfo( -1, "item", $b, 1 )
		endif

		if $job == 3
			AddPlayerInfo( -1, "item", $c, 1 )
		endif

		if $job == 4
			AddPlayerInfo( -1, "item", $d, 1 )
		endif

		if $job == 5
			AddPlayerInfo( -1, "item", $e, 1 )
		endif

		if $job == 6
			AddPlayerInfo( -1, "item", $f, 1 )
		endif


		SetPlayerVar( -1, 3868, 5 )

	}
