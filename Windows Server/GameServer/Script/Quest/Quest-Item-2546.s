	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/05/14
	//		Author£ºÁõÏþè´
	//		TaskName£ºQuest-Item-2546.s
	//		TaskID£ºÉÍ½ðÈÎÎñ
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		$level = GetPlayerInfo( -1, "level" )
		$Exp = $level * $level
		$Exp = $Exp * 10
		AddPlayerInfo( -1, "exp", $Exp )
		
	}