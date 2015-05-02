	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-8
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************

	function OnDead(){

		$ectype_id = GetPlayerInfo(-1,"mapid")
		$playerid = GetPlayerID()
		#name = GetPlayerInfo($playerid,"name")
		
		BC("screen","map",$ectype_id,"The hero ",#name," opened a Cardinal Treasure that contained 2 Oracle Crystals!")
		BC("chat","map",$ectype_id,"The hero ",#name," opened a Cardinal Treasure that contained 2 Oracle Crystals!")

		DropMonsterItems($playerid,90204)
		
		
	}