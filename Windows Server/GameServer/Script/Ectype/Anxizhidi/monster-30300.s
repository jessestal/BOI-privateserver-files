	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:??????
	//		TaskID:??
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		
		$key = 2
		$count = GetEctypeVar($ectype_id,$key)
		$count = $count - 1
		SetEctypeVar($ectype_id,$key,$count)
		
//BC("screen","map",$ectype_id,"GUID:03792000000",$count)
		
		
	}