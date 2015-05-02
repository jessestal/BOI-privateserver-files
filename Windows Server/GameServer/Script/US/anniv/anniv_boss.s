// ????? ?? BOSS???

	function OnDead(){

		$mapx = GetPlayerInfo( -1, "mapx")
		$mapy = GetPlayerInfo( -1, "mapy")
		#name = GetPlayerInfo(-1,"name")

		$n1 = RandomNumber(1, 3)

		if $n1 == 1
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the wicked demon king and not only saved Atlantis, they also received a LV5 Gem Chest. All hail the hero!" )
				DropMonsterItems(-1,56125)
		endif

		if $n1 == 2
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the wicked demon king and not only saved Atlantis, they also received a LV6 Gem Chest. All hail the hero!" )
				DropMonsterItems(-1,56126)
		endif

		if $n1 == 3
				BC( "scrollbar", "server", -1, "The hero ",#name," defeated the wicked demon king and not only saved Atlantis, they also received Hephaestus' Hammer +10. All hail the hero!" )
				DropMonsterItems(-1,56127)
		endif

		AddMapPlayerInfo (86, "exp", 100000)
		AddMapPlayerInfo (2, "exp", 100000)
		AddMonster(56119, 17, 86, $mapx, $mapy, 10)
		AddMonster(56120, 16, 86, $mapx, $mapy, 10)
		AddMonster(56121, 16, 86, $mapx, $mapy, 10)
		AddMonster(56122, 1, 86, $mapx, $mapy, 10)
		SetGlobalVar(600,1)
		PlayEffect(-1,"common\Yanhua\tx_xuanli1\tx_xuanli1.ini")
}
