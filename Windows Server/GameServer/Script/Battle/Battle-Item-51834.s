	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/3/24
	//		Author£ºÌÆÀè
	//		TaskName£ºBattle-Item-51834.s
	//		TaskID£ºÈü¼¾½±Àø
	//****************************************
	
	function OnUseItem(){
		
			$result = SubPlayerInfo( -1, "item", 51834 , 1 )
			if	$result != 0
				return
			endif	
				AddPlayerInfo( -1, "item" , 20853, 1 )
				AddPlayerInfo( -1 , "givepoint" , 5000 )
				AddPlayerInfo( -1, "money" , 1000000 )

	}