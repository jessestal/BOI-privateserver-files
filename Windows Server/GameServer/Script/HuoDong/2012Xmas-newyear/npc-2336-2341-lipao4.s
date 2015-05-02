 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
function OnRequest(){ 
		
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
		$date = GetSystemTime( "yday" )
		if $year != 2013
			DisableNpcOption(0)
	    DisableNpcOption(1)
		endif
		if $date < 1
			DisableNpcOption(0)
	    DisableNpcOption(1)
		endif
		if $date > 6
			DisableNpcOption(0)
	    DisableNpcOption(1)
		endif

} 
function OnOption0(){ 
	//????-????
		
//		$level = GetPlayerInfo(-1,"level")
//		if $level < 45
//			BC("screen","player",-1,"GUID:04859000000")
//			return
//		endif
		
		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
		$date = GetSystemTime( "yday" )
		if $year != 2013
			return
		endif
		if $date < 1
			return
		endif
		if $date > 6
			return
		endif

		$result = IsTaskAccept( -1 , 1879 )
		if $result == 0
			BC( "dialogbox", "player", -1, "You've already acquired this quest {#ffff002a=Preparing Fireworks#}. Please come back after you complete it." )
			return
		endif
		
		$lv = GetPlayerInfo( -1, "level")
		$buffday = GetPlayerVar( -1, 3573 )


		//????
		if $buffday == $date
			BC( "dialogbox", "player", -1, "You have already obtained this. Please come again tomorrow.")
			return
		endif
		if $lv < 60
			BC( "dialogbox", "player", -1, "You haven't reached LV60.")
			return
		endif
		
//		$rand = RandomNumber ( 0, 99 )
//		if $rand < 30
//			$info = AddPlayerInfo( -1, "givepoint", 100)
//			BC( "messagebox", "player", -1, "GUID:04859000004" )
//		endif
		
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Acquire a quest: Preparing Fireworks" )
		SetPlayerVar(-1, 3573, $date )
//		AddStatus( -1, 7629, 2 )
		AcceptTask( -1 , 1879 )
//		SetPlayerActLog(-1,14,0)
		
//		AddPlayerInfo( -1 , "item" , 44245 , 1 )
		
		
} 
function OnOption1(){ 
	//???? 44564	??????

		$year = GetSystemTime( "year" )
		$month = GetSystemTime( "month" )
		$day = GetSystemTime( "mday" )
		$date = GetSystemTime( "yday" )
		if $year != 2013
			return
		endif
		if $date < 1
			return
		endif
		if $date > 6
			return
		endif
		$lv = GetPlayerInfo( -1, "level")
		$buffday = GetPlayerVar( -1, 3574 )
    $usetoday = GetPlayerVar( -1, 3575 )

		//???????
		if $buffday == $date
		  if $usetoday == 2
		  	BC( "dialogbox", "player", -1, "You've already watched this twice. Please come back tomorrow.")
		  	return
		  endif
		endif
		if $lv < 60
			BC( "dialogbox", "player", -1, "You haven't reached LV60.")
			return
		endif
		$item = GetPlayerInfo( -1 , "item" , 44564  )								
    call exp()
    $pro1 = 125
		$pro2 = 1
		if $item < 1
		   BC( "dialogbox", "player", -1, "You don't have Fireworks in your bag. Acquire the quest Preparing Fireworks to get the item.")
			return
		endif
		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
		$del_count = SubPlayerInfo( -1, "item", 44564, 1 )
			if $del_count == 0
         $teamD_count = 0
	     	 $Cid = 0
	     	 while $Cid < 6
	     		 $teamplayer_id = GetTeamMemberID($playerID,$Cid)
	     		 if $teamplayer_id > 0
	     		   $lenD = GetPlayerDistance($playerID,$teamplayer_id )
	     		    if $lenD < 9999
	     				$teamD_count = $teamD_count + 1
	     		    endif
	     		 endif
	     		 $Cid = $Cid + 1
	     	 endwhile
          if $teamD_count == 1
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			AddFieldExp(-1,$addexp)
	     		endif
	     		if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )

	        
	     	 endif
	     	 if $teamD_count == 2
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		$addexp = $addexp / 10
	     		$addexp = $addexp * 11
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			$addexp = $addexp / 10
	     		  $addexp = $addexp * 11
	     			AddFieldExp(-1,$addexp)
	     		endif
	     		if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )
		    
	         
	     	 endif
	     	 if $teamD_count == 3
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		$addexp = $addexp / 10
	     		$addexp = $addexp * 12
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			$addexp = $addexp / 10
	     		  $addexp = $addexp * 12
	     			AddFieldExp(-1,$addexp)
	     		endif
	     		if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )
		      
	         
	     	 endif
	     	 if $teamD_count == 4
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		$addexp = $addexp / 10
	     		$addexp = $addexp * 13
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			$addexp = $addexp / 10
	     		  $addexp = $addexp * 13
	     			AddFieldExp(-1,$addexp)
	     		endif
	     	if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )
		      
	         
	     	 endif
	     	 if $teamD_count == 5
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		$addexp = $addexp / 10
	     		$addexp = $addexp * 14
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			$addexp = $addexp / 10
	     		  $addexp = $addexp * 14
	     			AddFieldExp(-1,$addexp)
	     		endif
	     		if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )
		     
	     	 endif
	     	 if $teamD_count == 6
	     		$addexp = $expori / 1000
	     		$addexp = $addexp * $pro1
	     		$addexp *= $pro2
	     		if $addexp > 200000000
	     			$addexp = 200000000
	     		endif
	     		$addexp = $addexp / 10
	     		$addexp = $addexp * 15
	     		AddPlayerInfo(-1,"exp",$addexp)
	     		if $fieldlevel > 0
	     			$addexp = $fexpori / 1000
	     			$addexp = $addexp * $pro1
	     			$addexp *= $pro2
	     			$addexp = $addexp / 10
	     		  $addexp = $addexp * 15
	     			AddFieldExp(-1,$addexp)
	     		endif
	     	if $buffday != $date
	     		   SetPlayerVar(-1,3574,$date)
	     		   $usetoday = 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		else
	     		   $usetoday = $usetoday + 1
	     		   SetPlayerVar(-1,3575,$usetoday)
	     		   
	     		endif
	     		BC("screen","player",-1,"You set a Fancy New Year's Salute!")
	     		PlayEffect( -1 , "common\story\lightpillar4\fire\tx_lightpillar4_fire.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" , 1 )
		      PlayEffect( -1 , "common\Yanhua\tx_ptyanhua\tx_ptyanhua_03.ini" , 1 )
		      NPCAction(-1 , 2339 , attack , 0 )
		      
	        
	     	 endif

      endif 
		
} 
function exp(){
		$level = GetPlayerInfo(-1,"level")
		$fieldlevel = GetFieldLevel(-1)
//(X*X	+	X*40	-100	)	*1800
//(X*X	+	X*65				)	*1690	*(Xmod80)
//(X*X	+	X*200				)	*325	*(Xmod90)
//(X*X	+	X*12				)	*2700	*(Xmod100)
//(X*X	-	X*80	+3000	)	*2700	*(Xmod111)
		$levelvv = $level * $level
		$Xmod80 = $level / 80
		$Xmod90 = $level / 90
		$Xmod100 = $level / 100
		$Xmod111 = $level / 111
		$expX1 = $level * 40
		$expX2 = $level * 65
		$expX3 = $level * 200
		$expX4 = $level * 12
		$expX5 = $level * 80
		$expn1 = $levelvv + $expX1
		$expn2 = $levelvv + $expX2
		$expn3 = $levelvv + $expX3
		$expn4 = $levelvv + $expX4
		$expn5 = $levelvv - $expX5
		$expn1 -= 100
		$expn5 += 3000
		$expn1 *= 1800
		$expn2 *= 1690
		$expn3 *= 325
		$expn4 *= 2700
		$expn5 *= 2700
		$expn2 *= $Xmod80
		$expn3 *= $Xmod90
		$expn4 *= $Xmod100
		$expn5 *= $Xmod111
		$expori = $expn1
		$expori += $expn2
		$expori += $expn3
		$expori += $expn4
		$expori += $expn5
//		BC("chat","player",-1,"expori=",$expori)
		
//X^2*935+X*38000+1600000
		$fieldlevelvv = $fieldlevel * $fieldlevel
		$fexpn1 = $fieldlevelvv * 935
		$fexpn2 = $fieldlevel * 38000
		$fexpori = $fexpn1 + $fexpn2
		$fexpori += 1600000
//		BC("chat","player",-1,"fexpori=",$fexpori)
		
}
