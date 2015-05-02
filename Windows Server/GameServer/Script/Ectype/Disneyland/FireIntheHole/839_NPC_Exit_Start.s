	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		Author:???
	//		TaskName:?????NPC
	//		TaskID:839_NPC_Help_Start.s
	//
	//****************************************
	
	function OnRequest(){
	
		$help = GetEctypeVar(-1,0)
		
		$start = GetEctypeVar(-1,1)
		
		$turn = GetEctypeVar(-1,2)

		if $turn < 10
			DisableNpcOption(0)
		endif
		
		if $start == 1
			DisableNpcOption(1)
		endif


}
	
//	function OnOption0(){
//
//		$mapID = GetEctypeID(-1, 569)
//		$monsterID = 11990
//		
//		$help = GetEctypeVar(-1,0)
//		if $help == 1
//			return
//		endif
//		
//		AddMonsterByFloat($monsterID,1,$mapID,152,152,0,0,1)
//		
//		SetEctypeVar(-1,0,1)
//		
//	
//
//	
//		
//}

	function OnOption0(){

	FlyToMap(-1, 475, 77, 50)
		
	

	
		
}
	
	function OnOption1(){

		$mapID = GetEctypeID(-1, 569)
		
		$start = GetEctypeVar(-1,1)
		if $start == 1
			return
		endif
		
		$bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $bag_count < 1
			BC("dialogbox","player",-1,"You don't have enough space in your bag. Cannot acquire the item.")
			return
		endif
		
		$monsterID = 11981
		
		//?????
		AddPlayerInfo(-1,"item",6901,5)
		
		//???????
		DeleteMonster(-1,11990)
		DeleteMonster(-1,11991)
		DeleteMonster(-1,11992)
		DeleteMonster(-1,11993)
		
		DeleteNPC(839,-1)
		PlayEffect(0,"common\zhuiluozhendong\tx_common_zhuiluozhendong.ini")
				
		AddMonsterByFloat($monsterID,1,$mapID,152,152,0,0,1)
		
		StartEctypeTimer(-1,1)
			
		SetEctypeVar(-1,1,1)
		
		BC("screen","map",$mapID,"Bang-Up Time instance starts now!")
	

		
}