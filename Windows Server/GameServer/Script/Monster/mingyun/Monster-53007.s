	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/7/25
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-53007.s
	//		TaskID£∫ √¸‘ÀµƒÓø∞Ì-’Ÿπ÷
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,559)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$ceng = GetEctypeVar($ectype_ID,1)
		if $ceng == 4
			AddMonsterByFloat(53008,1,$ectype_ID,$x,$y,0)
			AddMonsterByFloat(53009,1,$ectype_ID,226,88,0)
			AddMonsterByFloat(53009,1,$ectype_ID,217,78,0)
			AddMonsterByFloat(53009,1,$ectype_ID,215,89,0)
		endif
		
		if $ceng == 8
			AddMonsterByFloat(53010,1,$ectype_ID,$x,$y,0)
			AddMonsterByFloat(53011,1,$ectype_ID,224,135,0)
			AddMonsterByFloat(53011,1,$ectype_ID,215,135,0)
			AddMonsterByFloat(53011,1,$ectype_ID,214,127,0)
			AddMonsterByFloat(53011,1,$ectype_ID,220,123,0)
			AddMonsterByFloat(53011,1,$ectype_ID,227,126,0)
		endif
		
		if $ceng == 12
			AddMonsterByFloat(53012,1,$ectype_ID,$x,$y,0)
			AddMonsterByFloat(53013,1,$ectype_ID,225,168,0)
			AddMonsterByFloat(53013,1,$ectype_ID,227,174,0)
			AddMonsterByFloat(53013,1,$ectype_ID,224,180,0)
			AddMonsterByFloat(53013,1,$ectype_ID,219,181,0)
			AddMonsterByFloat(53013,1,$ectype_ID,211,179,0)
			AddMonsterByFloat(53013,1,$ectype_ID,215,173,0)
			AddMonsterByFloat(53013,1,$ectype_ID,220,168,0)
			AddMonsterByFloat(53013,1,$ectype_ID,218,173,0)
		endif
		
	}