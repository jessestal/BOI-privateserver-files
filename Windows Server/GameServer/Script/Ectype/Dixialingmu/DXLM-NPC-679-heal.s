
		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-07
		//		Author:???
		//		TaskName:??????
		//		TaskID:
		//
		//****************************************

	function OnRequest(){


	}


	function OnOption0(){
		//?? - 3000?

		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$cost_money = 1000

		$money = GetPlayerInfo( -1, "money")
		if $money >= $cost_money
			SubPlayerInfo( -1, "money", $cost_money)
		else
			BC( "screen", "player", -1, "Insufficient Coins!" )
			return
		endif

		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
 		AddPlayerInfo( -1, "hp", $add_hp)
		AddPlayerInfo( -1, "mp", $add_mp)
		//HealAllPet(-1)
		PlayEffect( -1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
		BC( "chat", "player", -1, "Coins Cost: ", $cost_money)
		BC( "screen", "player", -1, "Coins Cost: ", $cost_money)

//		$playeridEX = GetEctypeVar( -1 , 111)
//		BC( "chat", "player", -1, "1:", $playeridEX)
//		$playeridEX = GetEctypeVar( -1 , 112)
//		BC( "chat", "player", -1, "2:", $playeridEX)
//		$playeridEX = GetEctypeVar( -1 , 113)
//		BC( "chat", "player", -1, "3:", $playeridEX)
//		$playeridEX = GetEctypeVar( -1 , 114)
//		BC( "chat", "player", -1, "4:", $playeridEX)
//		$playeridEX = GetEctypeVar( -1 , 115)
//		BC( "chat", "player", -1, "5:", $playeridEX)
//		$playeridEX = GetEctypeVar( -1 , 116)
//		BC( "chat", "player", -1, "6:", $playeridEX)
	}

	function OnOption1(){
		//??
		FlyToMap( -1, 119, 100, 49)



	}
	
	function OnOption2(){
		//?????
//??3	305	195			119 	76 
//??1	195	173			76 	  68 

		$ectype_id = GetEctypeID(-1, 479)
		$choice = GetEctypeVar($ectype_id,0)
		$gg55 = GetEctypeVar(-1, 55)
		
		if $choice == 1
			BC("dialogbox","player",-1,"You can teleport back into the catacomb when you've reached certain objectives for the instance.")
		endif
//		if $choice == 2
//			BC("dialogbox","player",-1,"GUID:03974000004")
//		endif
		
	//???55,???????????????
		if $gg55 == 1
			FlyToMap(-1, $ectype_id, 11, 92)
			BC("screen","player",-1,"You feel dizzy")
			return
		endif
		
		if $choice == 3
			FlyToMap(-1,$ectype_id,119,76)
			BC("screen","player",-1,"You feel dizzy")
			return
		endif
		if $choice == 4
			FlyToMap(-1,$ectype_id,76,68)
			BC("screen","player",-1,"You feel dizzy")
			return
		endif
		
		$var3414 = GetPlayerVar(-1,3414)
		if $var3414 == 1
			$result = FlyToEctype(-1,479,27,18)
			BC("screen","player",-1,"You feel dizzy")
		endif
		if $var3414 == 3
		$result = FlyToEctype(-1,479,7,74)
			BC("screen","player",-1,"You feel dizzy")
		endif
		if $var3414 == 4
		$result = FlyToEctype(-1,479,96,63)
			BC("screen","player",-1,"You feel dizzy")
		endif
		if $var3414 == 5
		$result = FlyToEctype(-1,479,89,41)
			BC("screen","player",-1,"You feel dizzy")
		endif
		if $var3414 == 6
			BC("screen","player",-1,"Scenario Mode!!!")
		endif
		

	}