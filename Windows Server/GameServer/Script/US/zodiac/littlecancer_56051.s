	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/11/18
	//		Author£ºÂ¬öÎ
	//		TaskName£ºlittlecancer_56054.s
	//		TaskID£º¹¥»÷Ð¡ó¦Ð·
	//
	//****************************************



		function OnDead(){
						$eid = GetEctypeID(-1,292)
						$mapx = GetPlayerInfo( -1, "mapx")
						$mapy = GetPlayerInfo( -1, "mapy")
						$n = GetEctypeVar($eid ,110)

						$result = AddMonster(56056, 1, $eid, $mapx, $mapy, 3)
					}
