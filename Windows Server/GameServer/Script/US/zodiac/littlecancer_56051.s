	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/18
	//		Author��¬��
	//		TaskName��littlecancer_56054.s
	//		TaskID������С�з
	//
	//****************************************



		function OnDead(){
						$eid = GetEctypeID(-1,292)
						$mapx = GetPlayerInfo( -1, "mapx")
						$mapy = GetPlayerInfo( -1, "mapy")
						$n = GetEctypeVar($eid ,110)

						$result = AddMonster(56056, 1, $eid, $mapx, $mapy, 3)
					}
