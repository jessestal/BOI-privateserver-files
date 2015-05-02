	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/05/08
	//		Author£ºÁõÏþè´
	//		TaskName£ºAV-Quest-Titel.s
	//		TaskID£º¸øÓè³ÆºÅ
	//
	//****************************************
	
	function OnTaskDone(){
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 1000
			if $prestige < 5000
				$Title = HaveTitle( -1, 41 )
				if $Title != 0
					AddTitle( -1, 41 )
				endif
			endif	
		endif
		if $prestige >= 5000
			if $prestige < 12000
				$Title = HaveTitle( -1, 42 )
				if $Title != 0
					AddTitle( -1, 42 )
				endif
			endif	
		endif
		if $prestige >= 12000
				$Title = HaveTitle( -1, 43 )
				if $Title != 0
					AddTitle( -1, 43 )
				endif
		endif
	}