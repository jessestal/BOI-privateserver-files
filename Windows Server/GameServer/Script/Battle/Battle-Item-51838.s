	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/3/24
	//		Author������
	//		TaskName��Battle-Item-51838.s
	//		TaskID����������
	//****************************************
	
	function OnUseItem(){
		
			$result = SubPlayerInfo( -1, "item", 51838 , 1 )
			if	$result != 0
				return
			endif
				AddPlayerInfo( -1, "item" , 20856, 1 )	
				AddPlayerInfo( -1 , "givepoint" , 5000 )
				AddPlayerInfo( -1, "money" , 300000 )

	}