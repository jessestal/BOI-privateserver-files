	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/11/18
	//		Author£ºÂ¬öÎ
	//		TaskName£ºlittlecancer_56054.s
	//		TaskID£º»Ö¸´Ð¡ó¦Ð·
	//
	//****************************************



		function OnDead(){
						$eid = GetEctypeID(-1,292)
						$mapx = GetPlayerInfo( -1, "mapx")
						$mapy = GetPlayerInfo( -1, "mapy")						
												

						$n = GetEctypeVar($eid ,110)
						$n2 = $n + 1
						SetEctypeVar($eid ,110,$n2)
						PlayEffect(-1,"common\Yanhua\tx_xuanli1\tx_xuanli1.ini")
						if $n2 == 10 
								$result = AddMonsterByFloat(56057, 1, $eid, 168, 172, 0)	
								$add = AddNPC( 9008, -1 )
						endif
					}