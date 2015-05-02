	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/05
	//		Author:??
	//		TaskName:Battle-259-Init.s
	//		TaskID:??????????
	//
	//****************************************
	//????
		
	function OnCreate(){
											
	}
	
	function InitTimer(){
		
		//????ID????????ID
		$ectype_ID = GetCurEctypeID()
		SetEctypeTimer(0, 20, "EctypeTime0")
  	  	StartEctypeTimer($ectype_ID , 0 )
 
	}
				
	function EctypeTime0(){
		
	//????ID????????ID
	$ectype_ID = GetCurEctypeID()
	//?????5?????	
	
		BC( "screen" , "map" , $ectype_ID , "The Champion's Arena is open. Odin and Loki's power have adjusted all participants' strength to even levels." )
		BC( "dialogbox" , "map" , $ectype_ID , "The Champion's Arena is open. Odin and Loki's power have adjusted all participants' strength to even levels." )

	}
	
