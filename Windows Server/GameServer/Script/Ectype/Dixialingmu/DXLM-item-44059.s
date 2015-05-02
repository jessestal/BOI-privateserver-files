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
		
		$res = SubPlayerInfo(-1,"item",44059,1)
		if $res != 0
			return
		endif
		
		$isadd = GetPlayerVar(-1,170)
		if $isadd == 1
			BC("dialogbox","player",-1,"You've already obtained this Relic. Can only gain a small amount of EXP.")
			$exp = $lv * $lv
			$exp = $exp * $lv
			AddPlayerInfo(-1,"exp",$exp)
			return
		endif
		
		$isaddt = AddTrump( -1, 11025, 1 )
		if $isaddt == 0
			BC("screen","player",-1,"Gained the Wrath of the Earth")
			SetPlayerVar(-1,170,1)
		else
			BC("screen","player",-1,"Failed to add a Magic Artifact!")
			SetPlayerVar(-1,170,1)
		endif
			
			
		
	}