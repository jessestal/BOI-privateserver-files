	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/12
	//		Author:??
	//		TaskName:HD-emoliesha-M.s
	//		TaskID:????BOSS????
	//
	//****************************************
	//??????
	function OnDead(){
		
		BC( "screen", "map", 111, "Ashura King Tanno: Damed Array., enough is enough. I will wait for your arrival in Temple of the Damned!" )
		BC( "screen", "map", 2, "Ashura King Tanno: Damed Array., enough is enough. I will wait for your arrival in Temple of the Damned!" )
		//?????
		AddStatusToMap(111 ,11662 ,1)
		AddStatusToMap(2 ,11662 ,1)
	}