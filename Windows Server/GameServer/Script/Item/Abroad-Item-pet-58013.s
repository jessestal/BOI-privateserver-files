	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/13
	//		Author:???
	//		TaskName:Abroad-Item-pet-58103.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$Maxcount = GetPetMaxCount( -1 )
		$count = GetPetCount( -1 )
		if $count < $Maxcount
			$info = SubPlayerInfo ( -1 , "item" , 58013 , 1 )
			if  $info != 0
				return
			endif
			AddPet( -1 , 1003 , 1 , 1 )
		else
			BC( "screen", "player", -1 , "You have met the upper limit of caring Pets. Unable to acquire more Pets." )
		endif

	}