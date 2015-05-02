	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????51826
	//		TaskID:DXLM3-Monster-CJ-Suijing-51826.s
	//
	//****************************************
	
	function OnDead(){
		
		//???? ??id 479, ?????? 44, ????-?? 51826, ???? 51827, NPC???? 633, MST???? 51830 ,???? 51836	
		//???? 51837	 ???? 51838		???? ? 51839 ? 51840 ? 51841


		$ectype_id = GetEctypeID(-1, 479)
		$count = GetEctypeVar(-1, 44)
		$jing_xuan = 51826
		$jing = 51827
		$npc_gui = 633
		$mst_gui = 51830
		$mst_sun = 51839
		$mst_moon = 51840
		$mst_star = 51841
		DeleteMonster($ectype_id, $jing)		

		//??
		$count = $count + 1
		SetEctypeVar(-1, 44, $count)
		
		//?????????, ??1?264, ??2?268,260


		$lot1 = RandomNumber(1, 4)
		$lot2 = RandomNumber(1, 4)
		if $count == 1
			if $lot1 == 1
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51826, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
  		endif
  		
			if $lot1 == 2
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
  		endif
  		
 			if $lot1 == 3
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
  		endif
  		
  		if $lot1 == 4
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 259, 79, 0)
  		endif

      AddMonsterByFloat(51827, 1, $ectype_id, 266, 63, 0)
      AddMonsterByFloat(51827, 1, $ectype_id, 266, 79, 0)
      AddMonsterByFloat(51827, 1, $ectype_id, 271, 74, 0)
      AddMonsterByFloat(51827, 1, $ectype_id, 271, 67, 0)
  		
		  AddMonsterByFloat($mst_sun, 1, $ectype_id, 255, 66, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 255, 75, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 259, 62, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 259, 80, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 266, 62, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 266, 78, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 271, 68, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 271, 73, 0)

			AddMonsterByFloat($mst_sun, 1, $ectype_id, 262, 70, 0)
			AddMonsterByFloat($mst_sun, 1, $ectype_id, 264, 72, 0)    	
				
  		BC("chat","player",-1,"The security array has shifted in response. Search for the correct Security Node.")
			BC("screen", "map", $ectype_id, "The security array has shifted in response. Search for the correct Security Node.")
  	endif
  	
  	if $count == 2
  		if $lot2 == 1
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 266, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 67, 0)
  		endif
  		
  		if $lot2 == 2
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 63, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 266, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 67, 0)
  		endif
  	
  		if $lot2 == 3
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 79, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 271, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 67, 0)
  		endif
  		
  		if $lot2 == 4
      	AddMonsterByFloat(51827, 1, $ectype_id, 263, 71, 0)
      	
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 63, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 266, 79, 0)
      	AddMonsterByFloat(51827, 1, $ectype_id, 271, 74, 0)
      	AddMonsterByFloat(51826, 1, $ectype_id, 271, 67, 0)
  		endif
  		
		  AddMonsterByFloat($mst_moon, 1, $ectype_id, 255, 66, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 255, 75, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 259, 62, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 259, 80, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 266, 62, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 266, 78, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 271, 68, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 271, 73, 0)

			AddMonsterByFloat($mst_moon, 1, $ectype_id, 262, 70, 0)
			AddMonsterByFloat($mst_moon, 1, $ectype_id, 264, 72, 0)  

  		BC("chat","player",-1,"The security array has shifted in response. Search for the correct Security Node.")
			BC("screen", "map", $ectype_id, "The security array has shifted in response. Search for the correct Security Node.") 
  	endif	  	
	  			
		if $count == 3
			AddNPC($npc_gui, $ectype_id)

    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 263, 62, 0)
    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 263, 80, 0)
    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 256, 66, 0)
    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 256, 76, 0)
    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 270, 66, 0)
    	AddMonsterByFloat($mst_gui, 1, $ectype_id, 270, 76, 0)
    	
		  AddMonsterByFloat($mst_star, 1, $ectype_id, 255, 66, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 255, 75, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 259, 62, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 259, 80, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 266, 62, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 266, 78, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 271, 68, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 271, 73, 0)

			AddMonsterByFloat($mst_star, 1, $ectype_id, 262, 70, 0)
			AddMonsterByFloat($mst_star, 1, $ectype_id, 264, 72, 0)  

    	BC("chat","player",-1,"The second defense of the Imperial Seal has activated. You must destroy the Tao of Cunning, the Tao of Might, and the Tao of Sovereignty to remove the seal.")
			BC("screen", "map", $ectype_id, "The second defense of the Imperial Seal has activated. You must destroy the Tao of Cunning, the Tao of Might, and the Tao of Sovereignty to remove the seal.")
    endif


			


}