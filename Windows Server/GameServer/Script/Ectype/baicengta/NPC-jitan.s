	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:100??
	//		TaskID:.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		$ectype_ID = GetCurEctypeID()
		AddMonsterByFloat( 55381, 1,$ectype_ID, 183, 156, 0 )
		BC( "chat", "player", -1, "A searing heat lashes at your skin as the entire area grows hotter and hotter.")
		BC( "screen", "player", -1, "A searing heat lashes at your skin as the entire area grows hotter and hotter.")
		DeleteNPC(1636 , $ectype_ID)
		return
	}