	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/9/20
	//		Author����ʩ
	//		TaskName��Item-44096.s
	//		TaskID����������ҩˮ
	//****************************************
	
	function OnUseItem(){
		
		$info = SubPlayerInfo ( -1 , "item" , 44096 , 1 )
		if $info != 0
			return
		endif
		AddStatus( -1 , 7645 , 1 )
		
	}