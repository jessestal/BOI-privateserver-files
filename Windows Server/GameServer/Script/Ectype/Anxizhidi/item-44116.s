		//****************************************
		//
		//		Copyright:PERFECT WORLD
		//		Modified:2011-12
		//		Author:???
		//		TaskName:????
		//		TaskID:???
		//
		//****************************************

	function OnUseItem(){
//44116?116,282????
//44117?209,,282????
//15061	15100

		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo($playerid,"mapid")
		$mposx = GetPlayerInfo($playerid,"mapposx")
		$mposy = GetPlayerInfo($playerid,"mapposy")
		$dstx = 116
		$dsty = 282
		$dstxa = $dstx - 6
		$dstya = $dsty - 6
		$dstxb = $dstx + 6
		$dstyb = $dsty + 6
		if $ectype_id >= 15061
			if $ectype_id <= 15100
				if $mposx > $dstxa
					if $mposx < $dstxb
						if $mposy > $dstya
							if $mposy < $dstyb
								$monsterid = 30307
								$key = 0
								$count = GetEctypeVar($ectype_id,$key)
								if $count == 1
									BC("screen","player",-1,"The gate has already been sealed!")
									return
								else
									DeleteMonster($ectype_id,$monsterid)
									BC("screen","player",-1,"The west gate has been sealed!")
									PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
									$count = $count + 1
									SetEctypeVar($ectype_id,$key,$count)
								endif
								$key = 1
								$count2 = GetEctypeVar($ectype_id,$key)
								$count = $count + $count2
								$key = 10
								$mode = GetEctypeVar($ectype_id,$key)
								if $count == 2
//									if $mode == 0
										AddMonsterByFloat(30279,1,$ectype_id,163,275,1)
										BC("screen","player",-1,"The enemy leader has appeared! Stop him, quickly!")
//									else
//										BC("screen","player",-1,"GUID:03780000003")
//									endif
								endif
								return
							endif
						endif
					endif
				endif
			endif
		endif
		BC("screen","player",-1,"There is no effect.")

	}

