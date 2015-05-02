	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:??????
	//		TaskID:???
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
	
		$key = 3
		$count = GetEctypeVar($ectype_id,$key)
		$count = $count + 1
		SetEctypeVar($ectype_id,$key,$count)
		
//BC("screen","map",$ectype_id,"GUID:03795000000",$count)

		$mapX = GetPlayerInfo( -1, "mapposx" )
		$mapY = GetPlayerInfo( -1, "mapposy" )
		$key = 11
		SetEctypeVar($ectype_id,$key,$mapX)
		$key = 12
		SetEctypeVar($ectype_id,$key,$mapY)
		
	}