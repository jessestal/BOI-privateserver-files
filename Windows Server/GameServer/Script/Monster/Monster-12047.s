	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/31
	//		Author:???
	//		TaskName:Monster-12047.s
	//		TaskID:
	//
	//****************************************
	
	//????4020:????
	//????3333:???????12047?????
	
		function OnDead(){
			
			$number = GetPlayerVar(-1, 3333 )
			$time = GetSystemTime("yday")
			$day = GetPlayerVar(-1, 4020 )
			
		  
			//??????
		  if $day != $time
		     SetPlayerVar(-1, 3333, 1)
		     $number = GetPlayerVar(-1, 3333 )
		     SetPlayerVar(-1, 4020, $time)
		  else
		     $number = $number + 1
		     SetPlayerVar(-1, 3333, $number)
		  endif
		  
		  //??????5?
		    if $number >= 6
	     		BC("screen", "player", -1, "You can only collect 5 Nightlight Stones per day.")
	     		return
	  		endif	  

  		
  		//??2??????+??????
  		
  		$flevel = GetFieldLevel(-1)
  		$a = $flevel * $flevel
  		$b = $flevel * 6
  		$e = $b / 10
  		$c = $a + $e
  		$d = $c + 1000
  		$fexp = $d * 2
  		AddFieldExp(-1 , $fexp )
  		AddPlayerInfo(-1 , "item", 12840, 1)
  		$number = GetPlayerVar(-1, 3333 )
			BC("screen", "player", -1, "You have collected ", $number ," Nightlight Stones today.")
  
			
			
		}
			