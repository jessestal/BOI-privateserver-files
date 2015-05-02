	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:201108
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
		$lv = GetPlayerInfo(-1,"level")
		if $lv < 100
			return
		endif
		
		$isadd = GetPlayerVar(-1,170)
		if $isadd == 0
			$item2 = GetPlayerInfo( -1, "item", 59895)
			$item3 = GetPlayerInfo( -1, "item", 59896)
			$item4 = GetPlayerInfo( -1, "item", 59897)
			if $item2 > 0
				if $item3 > 0
					if $item4 > 0
						BC("screen","player",-1,"You've collected 3 treasures of Chiyu. You can exchange them for a Relic.")
						return
					endif
				endif
			endif
			BC("screen","player",-1,"You haven't exchanged for Relics.")
		else
			$res = SubPlayerInfo(-1,"item",59897,1)
			if $res == 0
				$exp = $lv * $lv
				$exp = $exp * $lv
				$exp = $exp / 5
				$exp = $exp * 2
				AddPlayerInfo(-1,"exp",$exp)
				BC("screen","player",-1,"You are rewarded with huge amount of EXP.")
			endif
		endif
			
		
	}