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

		$key = 5
		$count = GetEctypeVar($ectype_id,$key)
		$count = $count + 1
		SetEctypeVar($ectype_id,$key,$count)

		if $count == 4
			DeleteMonster($ectype_id,30282)
			BC("screen","map",$ectype_id,"All of the flames have been extinguished.")
		endif

//BC("screen","map",$ectype_id,"GUID:03785000001",$count)


	}