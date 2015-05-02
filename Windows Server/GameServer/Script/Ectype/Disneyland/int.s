	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/05
	//		Author:???
	//		TaskName:Disneyland
	//		TaskID:mapid = 568
	//
	//****************************************

	function OnCreate(){
			
}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 568 )
		SetEctypeTimer( 0 , 5, "EctypeTimer0" )
		SetEctypeTimer( 1 , 1 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 1 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 1 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 1 , "EctypeTimer4" )	
		SetEctypeTimer( 5 , 1 , "EctypeTimer5" )	
		SetEctypeTimer( 9 , 1 , "EctypeTimer9" )
			

}

	function EctypeTimer0(){
	  
	  $ectype_id = GetEctypeID( -1 , 568 )

	  //?????? 0 ??0 ??? ???????
	  
	  $pro = GetEctypeVar($ectype_id,0)
	  $end = GetEctypeVar($ectype_id,$pro)
	  $turn = GetEctypeVar($ectype_id,10)
	  $number = GetEctypeVar($ectype_id,12)
	  $finish = GetEctypeVar(-1,13)
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  
	  if $finish > 0
	  	return
	  endif
	  
	  if $number < 10
			if $pro == 0
				$pro = $pro + 1
				SetEctypeVar($ectype_id,0,$pro)
				StartEctypeTimer($ectype_id,$pro)
			else
				if $end == 1
					return
				else
					StartEctypeTimer($ectype_id,$pro)
				endif
			endif
		else
			StartEctypeTimer($ectype_id,9)
		endif
		
		DeleteMonster($ectype_id,$monsterID_evil)
		DeleteMonster($ectype_id,$monsterID_good)
	  
	  BC("screen","player",-1,"N/A0????????")
	  
}






	function EctypeTimer1(){

		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		
		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	

		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)


}
	
	
	function EctypeTimer2(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,163,1,0 ,0 )	
		
		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	
		
		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)
	  


}

	function EctypeTimer3(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,158,1,0 ,0 )	
		
		AddMonsterByFloat($monsterID_good,1,$ectype_id,102,162,1,0 ,0 )					
		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	
		
		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)


}

	function EctypeTimer4(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,158,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,106,160,1,0 ,0 )	
		
//		AddMonsterByFloat($monsterID_good,1,$ectype_id,102,162,1,0 ,0 )					
//		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	
		
		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)


}

	function EctypeTimer5(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,158,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,106,160,1,0 ,0 )	
		
		AddMonsterByFloat($monsterID_good,1,$ectype_id,102,162,1,0 ,0 )					
		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	
		
		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)


}

	function EctypeTimer5(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_evil = 53361
	  $monsterID_good = 53362
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile

		AddMonsterByFloat($monsterID_evil,1,$ectype_id,97,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,163,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,100,158,1,0 ,0 )	
		AddMonsterByFloat($monsterID_evil,1,$ectype_id,106,160,1,0 ,0 )	
		
		AddMonsterByFloat($monsterID_good,1,$ectype_id,102,162,1,0 ,0 )					
		AddMonsterByFloat($monsterID_good,1,$ectype_id,108,162,1,0 ,0 )	
		
		//??????		
		$turn = GetEctypeVar($ectype_id,10)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,10,$turn)
		
		//??????
		$pro = GetEctypeVar($ectype_id,0)
		SetEctypeVar($ectype_id,$pro,1)
		$pro = $pro + 1
		SetEctypeVar($ectype_id,0,$pro)


}

	function EctypeTimer9(){
	  
		$ectype_id = GetEctypeID( -1 , 568 )
	  //??????
	  //??? 52419
	  $monsterID_jack = 53363
	  $time1 = 0
//		while $time1 < 2
//			$time1 = $time1 + 1
//			$mapX = RandomNumber(70,80)
//			$mapY = 155		
//			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//		endwhile
		
		$finish = GetEctypeVar(-1,13)
		if $finish > 0
			return
		else
			AddMonsterByFloat($monsterID_jack,1,$ectype_id,102,162,1,0 ,0 )	
			SetEctypeVar($ectype_id,13,1)
		endif
}


	


