	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-init-DE.s
	//		TaskID:???
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,226 )
		DeleteNPC( 1935, $ectype_ID )
	}
	
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 3, "EctypeTime1" )
	    
	}
	
	//?????
	function EctypeTime1(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 226 )
		$ectype_type = GetEctypeVar( -1, 7 )
		if $ectype_type == 0
			//????
			AddMonster( 51481, 25, $ectype_ID, 57, 69 , 10 )
			AddMonster( 51481, 15, $ectype_ID, 74, 65 , 7 )
			BC("screen", "map", $ectype_ID, "Who dares enter my chamber?!  Guards, kill them!")
		else
			//????
			AddMonster( 51201, 25, $ectype_ID, 57, 69 , 10 )
			AddMonster( 51201, 15, $ectype_ID, 74, 65 , 7 )
			BC("screen", "map", $ectype_ID, "Who dares enter my chamber?!  Guards, kill them!")
		endif
		
	}
	