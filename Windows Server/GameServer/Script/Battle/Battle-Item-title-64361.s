 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/11
	//		Author:???
	//		TaskName:Battle-Item-title-64361.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$title = HaveTitle( -1 , 50 )
		if $title == 0
			BC( "screen", "player", -1, "You have got the title already!" )	
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64361 , 1 )
		if  $info != 0
			return
		endif
		
		AddTitle( -1 , 50 )
	
	}