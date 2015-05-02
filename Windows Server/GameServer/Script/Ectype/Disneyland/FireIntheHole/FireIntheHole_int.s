	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/05
	//		Author:???
	//		TaskName:Disneyland
	//		TaskID:mapid = 569
	//
	//****************************************

	function OnCreate(){
			
}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 569 )
		SetEctypeTimer( 0 , 2, "EctypeTimer0" )
		SetEctypeTimer( 1 , 3 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 12 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 12 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 10 , "EctypeTimer4" )	
		SetEctypeTimer( 5 , 7 , "EctypeTimer5" )	
//		SetEctypeTimer( 9 , 1 , "EctypeTimer9" )
			

}

	function EctypeTimer0(){
		
		$mapID = GetEctypeID( -1 , 569 )
		//?BUFF??
		$monster_Buff = 11982
		
//		AddMonsterByFloat($monster_Buff,1,$mapID,152,152,0,0,1)
	  
	  
}






	function EctypeTimer1(){

		$mapID = GetEctypeID( -1 , 569 )
		
		$turn = GetEctypeVar(-1,2)
		
		//?1?
		if $turn == 0
//			call OnSummon1
//			call OnSummon2
//			call OnSummon3
			call OnSummon4
			call OnSummon5
//			call OnSummon6
//			call OnSummon7
//			call OnSummon8
//			call OnSummon9
//			call OnSummon10
//			call OnSummon11
//			call OnSummon12
		
			StartEctypeTimer(-1,2)
			SetEctypeVar(-1,2,1)
			
		endif

}
	
	
	function EctypeTimer2(){

		$mapID = GetEctypeID( -1 , 569 )	
		$turn = GetEctypeVar(-1,2)
				
		//?2?
		if $turn == 1
			call OnSummon1
//			call OnSummon2
//			call OnSummon3
			call OnSummon4
			call OnSummon5
//			call OnSummon6
//			call OnSummon7
//			call OnSummon8
//			call OnSummon9
//			call OnSummon10
//			call OnSummon11
//			call OnSummon12
		
			StartEctypeTimer(-1,5)
			BC("screen","map",$mapID,"Who has destroyed our reviving plan? Send the Pharaoh Squires to eliminate them!")
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
			
		endif			

	  


}

	function EctypeTimer3(){
	  
	  $turn = GetEctypeVar(-1,2)
	  $mapID = GetEctypeID( -1 , 569 )
	  
		//?3?
		if $turn == 3
//			call OnSummon1
			call OnSummon2
//			call OnSummon3
//			call OnSummon4
			call OnSummon5
//			call OnSummon6
//			call OnSummon7
//			call OnSummon8
			call OnSummon9
//			call OnSummon10
//			call OnSummon11
			call OnSummon12

			StartEctypeTimer(-1,3)
			
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
			
		endif		
		
		//?4?
		if $turn == 4
//			call OnSummon1
			call OnSummon2
//			call OnSummon3
			call OnSummon4
			call OnSummon5
			call OnSummon6
//			call OnSummon7
//			call OnSummon8
			call OnSummon9
//			call OnSummon10
//			call OnSummon11
			call OnSummon12

			StartEctypeTimer(-1,5)
			BC("screen","map",$mapID,"Who has destroyed our reviving plan? Send the Pharaoh Squires to eliminate them!")
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
			
		endif		

		// ?5?
		if $turn == 6
			$time = 0
			while $time < 6
				$kind = RandomNumber(1,12)
				if $kind == 1
					call OnSummon1
				endif
				if $kind == 2
					call OnSummon2
				endif
				if $kind == 3
					call OnSummon3
				endif
				if $kind == 4
					call OnSummon4
				endif
				if $kind == 5
					call OnSummon5
				endif
				if $kind == 6
					call OnSummon6
				endif
				if $kind == 7
					call OnSummon7
				endif
				if $kind == 8
					call OnSummon8
				endif
				if $kind == 9
					call OnSummon9
				endif
				if $kind == 10
					call OnSummon10
				endif
				if $kind == 11
					call OnSummon11
				endif
				if $kind == 12
					call OnSummon12
				endif	
				$time = $time + 1
			endwhile							
				
			StartEctypeTimer(-1,3)
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
				
		endif
		
		//?6?
		if $turn == 7
			$time = 0
			while $time < 6
				$kind = RandomNumber(1,12)
				if $kind == 1
					call OnSummon1
				endif
				if $kind == 2
					call OnSummon2
				endif
				if $kind == 3
					call OnSummon3
				endif
				if $kind == 4
					call OnSummon4
				endif
				if $kind == 5
					call OnSummon5
				endif
				if $kind == 6
					call OnSummon6
				endif
				if $kind == 7
					call OnSummon7
				endif
				if $kind == 8
					call OnSummon8
				endif
				if $kind == 9
					call OnSummon9
				endif
				if $kind == 10
					call OnSummon10
				endif
				if $kind == 11
					call OnSummon11
				endif
				if $kind == 12
					call OnSummon12
				endif	
				$time = $time + 1
			endwhile							
				
			StartEctypeTimer(-1,5)
			BC("screen","map",$mapID,"Who has destroyed our reviving plan? Send the Pharaoh Squires to eliminate them!")
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
				
		endif		
		
		// ?7?
		if $turn == 9
			$time = 0
			while $time < 8
				$kind = RandomNumber(1,12)
				if $kind == 1
					call OnSummon1
				endif
				if $kind == 2
					call OnSummon2
				endif
				if $kind == 3
					call OnSummon3
				endif
				if $kind == 4
					call OnSummon4
				endif
				if $kind == 5
					call OnSummon5
				endif
				if $kind == 6
					call OnSummon6
				endif
				if $kind == 7
					call OnSummon7
				endif
				if $kind == 8
					call OnSummon8
				endif
				if $kind == 9
					call OnSummon9
				endif
				if $kind == 10
					call OnSummon10
				endif
				if $kind == 11
					call OnSummon11
				endif
				if $kind == 12
					call OnSummon12
				endif	
				$time = $time + 1
			endwhile							
				
			StartEctypeTimer(-1,3)
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
				
		endif
		
		//?8?
		if $turn == 10
			$time = 0
			while $time < 8
				$kind = RandomNumber(1,12)
				if $kind == 1
					call OnSummon1
				endif
				if $kind == 2
					call OnSummon2
				endif
				if $kind == 3
					call OnSummon3
				endif
				if $kind == 4
					call OnSummon4
				endif
				if $kind == 5
					call OnSummon5
				endif
				if $kind == 6
					call OnSummon6
				endif
				if $kind == 7
					call OnSummon7
				endif
				if $kind == 8
					call OnSummon8
				endif
				if $kind == 9
					call OnSummon9
				endif
				if $kind == 10
					call OnSummon10
				endif
				if $kind == 11
					call OnSummon11
				endif
				if $kind == 12
					call OnSummon12
				endif	
				$time = $time + 1
			endwhile							
				
			StartEctypeTimer(-1,5)
			BC("screen","map",$mapID,"Who has destroyed our reviving plan? Send the Pharaoh Squires to eliminate them!")
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
				
		endif			
				  	  

			
		  
		//?9? ?10?
		if $turn >= 12
			if $turn <= 13
				$time = 0
				while $time < 10
					$kind = RandomNumber(1,12)
					if $kind == 1
						call OnSummon1
					endif
					if $kind == 2
						call OnSummon2
					endif
					if $kind == 3
						call OnSummon3
					endif
					if $kind == 4
						call OnSummon4
					endif
					if $kind == 5
						call OnSummon5
					endif
					if $kind == 6
						call OnSummon6
					endif
					if $kind == 7
						call OnSummon7
					endif
					if $kind == 8
						call OnSummon8
					endif
					if $kind == 9
						call OnSummon9
					endif
					if $kind == 10
						call OnSummon10
					endif
					if $kind == 11
						call OnSummon11
					endif
					if $kind == 12
						call OnSummon12
					endif	
					$time = $time + 1
				endwhile							
					
				StartEctypeTimer(-1,3)
				
				$turn = $turn + 1
				SetEctypeVar(-1,2,$turn)
				
			endif
		endif

		//?11?
		if $turn == 14
			BC("screen","map",$mapID,"The last batch of Sarcophagus appears!")
			$time = 0
			while $time < 12
				$kind = RandomNumber(1,12)
				if $kind == 1
					call OnSummon1
				endif
				if $kind == 2
					call OnSummon2
				endif
				if $kind == 3
					call OnSummon3
				endif
				if $kind == 4
					call OnSummon4
				endif
				if $kind == 5
					call OnSummon5
				endif
				if $kind == 6
					call OnSummon6
				endif
				if $kind == 7
					call OnSummon7
				endif
				if $kind == 8
					call OnSummon8
				endif
				if $kind == 9
					call OnSummon9
				endif
				if $kind == 10
					call OnSummon10
				endif
				if $kind == 11
					call OnSummon11
				endif
				if $kind == 12
					call OnSummon12
				endif	
				$time = $time + 1
			endwhile							
				

			StartEctypeTimer(-1,4)
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)
			
		endif				
		

}

	function EctypeTimer4(){	
		
		$mapID = GetEctypeID( -1 , 569 )	
		
		BC("screen","map",$mapID,"The Bang-Up Time instance is over now.")	
		BC("chat","map",$mapID,"The Bang-Up Time instance is over now.")	
		
}

	function EctypeTimer5(){

		$mapID = GetEctypeID(-1,569)
		$turn = GetEctypeVar(-1,2)
		
		$level = GetEctypeVar(-1,11)
		$Fieldlevel = GetEctypeVar(-1,12)
		$monsterID = 11998
		$monsterstatusID = 237
		$monsterfieldID = 237
		$monsterCount = 1

		
		BC("screen","map",$mapID,"Pharaoh Squires come!")
		
		//0-10
		if $turn == 2
			BC("chat","map",$mapID,"00abcde")
			if $Fieldlevel > 0
				$time = 0
				while $time < 1
					BC("chat","map",$mapID,"Current times",$time,".")
					$mapX = RandomNumber(14400,16200)
					$mapY = RandomNumber(14300,16200)
					$mapX /= 256
					$mapY /= 256
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,1)
				
					$time = $time + 1
				endwhile
			else
				$time = 0
				while $time < 1
					$mapX = RandomNumber(14400,16200)
					$mapY = RandomNumber(14300,16200)
					$mapX /= 256
					$mapY /= 256
					AddLevelMonster($monsterID,$monsterstatusID,$level,$monsterCount,$mapID,$mapX,$mapY,1)
					BC("screen","player",-1,$monsterID,$monsterstatusID,$level,$monsterCount,$mapID,$mapX,$mapY)
					$time = $time + 1
				endwhile
			endif
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)	
		endif	
		
		//11-20
		if $turn == 5
			if $Fieldlevel > 0
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			else
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelMonster($monsterID,$monsterstatusID,$level,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			endif
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)	
		endif	
		
		//21-30
		if $turn == 8
			if $Fieldlevel > 0
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			else
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelMonster($monsterID,$monsterstatusID,$level,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			endif
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)	
		endif		
		
		//?31-50
		if $turn == 11
			if $Fieldlevel > 0
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			else
				$time = 0
				while $time < 10
					$mapX = RandomNumber(144,162)
					$mapY = RandomNumber(143,162)
					AddLevelMonster($monsterID,$monsterstatusID,$level,$monsterCount,$mapID,$mapX,$mapY,1)
					$time = $time + 1
				endwhile
			endif
			
			$turn = $turn + 1
			SetEctypeVar(-1,2,$turn)	
		endif									
			
			
		


}

	function EctypeTimer6(){

}

	function EctypeTimer9(){
	 
}


		function OnSummon1(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(146,153)
		$mapY = RandomNumber(135,145)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
	
		BC("screen","map",$mapID,"N/A??1????")
			

}		

		function OnSummon2(){

		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(154,161)
		$mapY = RandomNumber(135,145)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??2????")			
			

}			
	
	
		function OnSummon3(){

		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(136,145)
		$mapY = RandomNumber(146,153)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??3????")		
			
			

}		

		function OnSummon4(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(146,153)
		$mapY = RandomNumber(146,153)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??4????")		
			

}		

		function OnSummon5(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(154,161)
		$mapY = RandomNumber(146,153)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??5????")						
			

}		

		function OnSummon6(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(162,171)
		$mapY = RandomNumber(146,153)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??6????")				
			

}		

		function OnSummon7(){

		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(136,145)
		$mapY = RandomNumber(154,160)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??7????")		
			

}		

		function OnSummon8(){


		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(146,153)
		$mapY = RandomNumber(154,160)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??8????")					

}		

		function OnSummon9(){

		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(154,161)
		$mapY = RandomNumber(154,160)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??9????")						
			
			

}		

		function OnSummon10(){

		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(162,171)
		$mapY = RandomNumber(154,160)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??10????")		
			

}		

		function OnSummon11(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(154,161)
		$mapY = RandomNumber(161,170)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??11????")	


}		

		function OnSummon12(){
			
		$mapID = GetEctypeID( -1 , 569 )	
		$monsterID = 11983
		$monsterLv2ID = 11984
		$monsterLv3ID = 11985
		$monsterCount = 1
		$mapX = RandomNumber(151,161)
		$mapY = RandomNumber(161,170)
		
		$turn = GetEctypeVar(-1,2)
		if $turn <= 4
			AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
		endif
		if $turn > 4
			if $turn <= 8
				$luck = RandomNumber(1,100)
				if $luck <= 80
					AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				else
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)
				endif
			endif
		endif
		if $turn > 9
			$luck = RandomNumber(1,100)
			if $luck <= 30
				AddMonsterByFloat($monsterID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
			endif
			if $luck > 40
				if $luck <= 80
					AddMonsterByFloat($monsterLv2ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif
			if $luck > 80
				if $luck <= 100
					AddMonsterByFloat($monsterLv3ID,$monsterCount,$mapID,$mapX,$mapY,0,0,4)	
				endif
			endif	
		endif		
		BC("screen","map",$mapID,"N/A??12????")	


}			

	


