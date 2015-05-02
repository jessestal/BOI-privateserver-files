 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:Battle-Item-Title-63795.s
	//		TaskID:?? ????
	//****************************************
	
	function OnUseItem(){
	
		$title = HaveTitle( -1 , 84 )
		if $title == 0
			BC( "screen", "player", -1, "You have got the title already!" )	
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 63795 , 1 )
		if  $info != 0
			return
		endif
		
		AddTitle( -1 , 84 )
	
	}