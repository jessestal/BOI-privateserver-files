	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:90??
	//		TaskID:.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		$ectype_ID = GetCurEctypeID()
		AddMonsterByFloat( 55371, 1,$ectype_ID, 190, 156, 0 )
		BC( "chat", "player", -1, "You remove the seal, and a powerful evil force begins billowing out.")
		BC( "screen", "player", -1, "You remove the seal, and a powerful evil force begins billowing out.")
		DeleteNPC(1635 , $ectype_ID)
		return
	}