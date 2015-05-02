//	----------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2012/6/28
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	Monster-12071.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

	function OnDead(){
		
		$task = IsTaskAccept(-1,386)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		
		if $task == 0
			$n = RandomNumber(0,100)
			if $n < 20
				PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
				AddMonsterByFloat(30608,1,$map,$x,$y,0,-1)
			endif
		endif
		

	
	}