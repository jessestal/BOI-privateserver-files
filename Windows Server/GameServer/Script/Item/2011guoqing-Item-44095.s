	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/20
	//		Author:??
	//		TaskName:Item-44095.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		
		$info = SubPlayerInfo ( -1 , "item" , 44095 , 1 )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "exp" , 500000 )
		BC( "screen", "player" , -1 , "You used a Festival Blessing Card, and earned a lot of EXP." )
		
	}
