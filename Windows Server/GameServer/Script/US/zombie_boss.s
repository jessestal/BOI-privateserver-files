// ?? ?? hotday

	function OnDead(){

		$mapx = GetPlayerInfo( -1, "mapx")
		$mapy = GetPlayerInfo( -1, "mapy")
		#name = GetPlayerInfo(-1,"name")

		$n1 = RandomNumber(1, 3)

		if $n1 == 1
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the Zombie King and saved the Sun Tree, and got a LV5 Gem Chest. Congratulations." )
				DropMonsterItems(-1,56125)
		endif

		if $n1 == 2
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the Zombie King and saved the Sun Tree, and got a LV6 Gem Chest. Congratulations." )
				DropMonsterItems(-1,56126)
		endif

		if $n1 == 3
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the Zombie King and saved the Sun Tree, and got a Hephaestus' Hammer +10. Congratulations." )
				DropMonsterItems(-1,56127)
		endif

		AddMapPlayerInfo (2, "exp", 100000)
		AddMonster(56119, 17, 2, $mapx, $mapy, 20)
		AddMonster(56120, 16, 2, $mapx, $mapy, 20)
		AddMonster(56121, 16, 2, $mapx, $mapy, 20)
		AddMonster(56122, 1, 2, $mapx, $mapy, 20)
		SetGlobalVar(216,1)
//		PlayEffect(-1,"common\Yanhua\tx_xuanli1\tx_xuanli1.ini")
		AddStatusToMap(2,7315,1)
		DeleteMonster(2, 56129)
		DeleteMonster(2, 56130)
}
