	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/06/25
	//		Author£∫¿Ó“Ì∑…
	//		TaskName£∫≤ ∫ÁŒ£ª˙
	//		TaskID£∫HD-caihongshuijing1.s
	//
	//****************************************

	function OnRequest(){
		$Accept = IsTaskAccept( -1 , 1863 )
		if $Accept != 0
			DisableNpcOption(0)
			return
		endif
	}

	function OnOption0(){
		$Accept = IsTaskAccept( -1 , 1863 )
		if $Accept == 0
			$caihongshuijing = AddPlayerInfo( -1 , "item" , 44276 , 1)
			$yingcang = DeleteNPC(812 , -1)
			return
		endif
	}
