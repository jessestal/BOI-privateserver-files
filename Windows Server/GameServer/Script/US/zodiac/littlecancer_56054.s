	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/18
	//		Author��¬��
	//		TaskName��littlecancer_56054.s
	//		TaskID���ָ�С�з
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