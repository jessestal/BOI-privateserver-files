   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/25
	//		Author:???
	//		TaskName:Ectype-RYMC-Monster-51158.s
	//		TaskID:??????
	//****************************************
	
	function OnDead(){
		
		$Ectype = GetEctypeID( -1, 223 )
		AddStatusToMap( $Ectype, 10748, 1 )
		BC( "screen", "map", $Ectype, "Warriors obtain Elven Blessing." )
		
	}
		