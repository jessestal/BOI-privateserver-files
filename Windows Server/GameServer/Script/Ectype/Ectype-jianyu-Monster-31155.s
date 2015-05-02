   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/28
	//		Author: ???
	//		TaskName:Ectype-jianyu-Monster-31155.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
		
		//??????+1,??30?????,????
		$ecstate = GetEctypeVar( -1, 110 )
		if $ecstate < 130
			$ecstate = $ecstate + 1
		endif
		SetEctypeVar( -1 , 110 , $ecstate )
		$ectype_ID = GetEctypeID( -1 , 235 )
		$count = $ecstate - 100
		if $ecstate <= 130
			BC( "screen" , "map" , $ectype_ID , "Escaped prisoners have been caught:" , $count , " / 30" )
		endif
		
		//??30????,??????boss 1??
		//???100
		if $ecstate == 130
			//?????boss??
			SetEctypeVar( -1 , 110 , 200 )
			BC( "screen" , "map" , $ectype_ID , "All the escaped prisoners have been taken care of. Seek out any injured jailers. " )
			BC( "chat" , "map" , $ectype_ID , "All the escaped prisoners have been taken care of. Seek out any injured jailers. " )
		endif
	}