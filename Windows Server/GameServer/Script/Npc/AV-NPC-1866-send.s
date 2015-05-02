	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/04/23
	//		Author：刘晓璐
	//		TaskName：AV-NPC-1866-send.s
	//		TaskID：相位传送门（13）
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		FlyToMap( -1, 160, 47, 86 )
		$ServerVar = GetServerVar( 91 )
		$ServerVar = $ServerVar + 1
		SetServerVar( 91, $ServerVar )
		
		$ServerVar1 = GetServerVar( 91 )
		if $ServerVar1 == 10
			DeleteNPC( 1866 )
			SetServerVar( 91, 0 )
			SetServerVar( 90, 0 )
			AddMonster( 32139, 20, 160, 33, 85, 3 )
			SetServerVar( 93, 1 )
			return
		endif
	}