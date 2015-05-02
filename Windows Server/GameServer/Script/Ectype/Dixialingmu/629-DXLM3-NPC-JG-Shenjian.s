	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????629
	//		TaskID:DXLM3-NPC-JG-Shenjian-629.s
	//
	//****************************************

	function OnRequest(){

		//???? ????43-0?1?2?3??

  	//???????????
//  	$is = GetEctypeVar(-1, 43)
//  	if $is	>= 3
//  		DisableNpcOption(0)
//  	endif
	
	}	
	
	function OnOption0(){

		//???? ??id 479,??????var 43-0?1?2?3?, ????44048 ?????632 ??631
		$ectype_id = GetEctypeID(-1, 479)
		$n = GetEctypeVar(-1, 43)
		$null = GetPlayerInfo(-1, "nullitem", 0)
		
		if $null < 1
			BC("chat","player",-1,"Your bag is full. Cannot obtain the Pangaea Sword")
			return
		endif

		$revaluet = AddPlayerInfo(-1, "item", 44048, 1)
		BC("chat","player",-1,"You have obtained the legendary Pangaea Sword. You can now subdue the Chaos Tyrant.")

		//??????
		if $n >= 3
			return
		endif

		BC( "screen", "map", $ectype_id, "The ether trembles as the Pangaea Sword is awakened.")
		//????
		$n = $n + 1
		SetEctypeVar(-1, 43, $n)
		
//		AddNPC(631, $ectype_id)
		AddNPC(632, $ectype_id)
		
		

}