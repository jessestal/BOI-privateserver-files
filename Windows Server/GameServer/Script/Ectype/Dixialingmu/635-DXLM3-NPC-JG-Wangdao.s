	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479?????635
	//		TaskID:DXLM3-NPC-JG-Wangdao-635.s
	//
	//****************************************

	function OnRequest(){


	
	}	
	
	function OnOption0(){

		//???? ??id 479, ?? 48 ?? 49 ?? 50
		//NPC???? 633, MST???? 51830 ,NPC???? 634 ,MST???? 51831 , NPC???? 635 ,MST???? 61832 ,NPC???? 636
		//???? 51833,	???? 51834 , ???? 51835	
		//???? 51836 ???? 51837	 ???? 51838	???? 51839


		$ectype_id = GetEctypeID(-1, 479)
		$npc_1 = 635
		$mst_1 = 51832
		$mst_jun = 51838
		$is_open = GetEctypeVar(-1, 50)
		
		if $is_open != 0		
			BC("dialogbox", "player", -1, "The Tao is protected by a mysterious force. It can't be destroyed yet.")
			return
		else

  
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 262, 70, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 264, 72, 0)  
  
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 264, 63, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 264, 79, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 255, 71, 0)
  		AddMonsterByFloat($mst_jun, 1, $ectype_id, 271, 71, 0)

  		SetEctypeVar(-1, 50, 1)
  		BC("screen", "map", $ectype_id, "Security parameters activate in response to intrusion!")
  		PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire4.ini")
  	endif

}