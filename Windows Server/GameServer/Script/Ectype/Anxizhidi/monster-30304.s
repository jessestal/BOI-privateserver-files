	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:??????
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 531)
		$playerid = GetPlayerID()
		SetEctypeVar($ectype_id,6,3)
//		BC("screen","map",$ectype_id,"GUID:03796000000")
	
	}