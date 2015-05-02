	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/3/24
	//		Author£ºÌÆÀè
	//		TaskName£ºBattle-Item-51837.s
	//		TaskID£ºÈü¼¾½±Àø
	//****************************************
	
	function OnUseItem(){
		
			$result = SubPlayerInfo( -1, "item", 51837 , 1 )
			if	$result != 0
				return
			endif	
				AddPlayerInfo( -1, "item" , 20855, 1 )
				AddPlayerInfo( -1 , "givepoint" , 5000 )
				AddPlayerInfo( -1, "money" , 500000 )

	}