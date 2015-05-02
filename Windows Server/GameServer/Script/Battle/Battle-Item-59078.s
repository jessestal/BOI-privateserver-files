	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/24
	//		Author：司文博
	//		TaskName：Battle-Item-59078.s
	//		TaskID：排列战场A
	//
	//****************************************
	
	function OnUseItem(){
	
		
		$mapid = GetPlayerInfo( -1, "mapid" )
		$posx = GetPlayerInfo( -1, "mapposx" )
		$posy = GetPlayerInfo( -1, "mapposy" )
		
		AddNpcByPos(2059 ,$mapid,$posx,$posy,300,0)
		
	}