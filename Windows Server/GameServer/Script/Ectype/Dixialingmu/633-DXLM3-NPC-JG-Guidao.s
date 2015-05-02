	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479?????633
	//		TaskID:DXLM3-NPC-JG-Guidao-633.s
	//
	//****************************************

	function OnRequest(){


	
	}	
	
	function OnOption0(){

		//???? ??id 479, ?? 48 ?? 49 ?? 50
		//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832
		//???? 51836 ???? 51837	 ???? 51838	???? 51839


		$ectype_id = GetEctypeID(-1, 479)
		$npc_1 = 633
		$mst_1 = 51830
		$npc_2 = 634
		$mst_2 = 51831
		$mst_jun = 51836
		$is_open = GetEctypeVar(-1, 48)
		
		if $is_open != 0		
			BC("dialogbox", "player", -1, "The Tao is protected by a mysterious force. It can't be destroyed yet.")
			return
		else

  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 262, 70, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 264, 72, 0)  
  
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 263, 63, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 263, 79, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 270, 77, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 270, 67, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 256, 77, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 256, 67, 0)
  	
  		SetEctypeVar(-1, 48, 1)
  		BC("screen", "map", $ectype_id, "Security parameters activate in response to intrusion!")
  		PlayEffect(0 ,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
  	endif
	

}