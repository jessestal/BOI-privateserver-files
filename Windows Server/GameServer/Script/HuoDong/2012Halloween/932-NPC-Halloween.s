	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-10-16
	//		Author:???
	//		TaskName:?????NPC-????
	//		TaskID:NPC932.s
	//
	//****************************************

//????????
function OnRequest(){
	
	}

	function OnOption0(){
	
	//????????
	$min = GetSystemTime( "minute" )
		$hour = GetSystemTime( "hour" )
		$date = GetSystemTime( "yday" )
		$time = $hour * 100
		$time = $time + $min
		
		
		$Line = GetServerLineID()
		 if $date != 305
	    if $date != 306
	      BC( "dialogbox", "player", -1, "The Halloween Parade doesn't start yet!" )
	      return
	     endif
	    
	 endif
		if $Line != 7
			BC( "dialogbox", "player", -1, "Parade Event will be start on Realm 7 soon!" )
			return
		endif
		
		if $time < 2030
			BC( "dialogbox", "player", -1, "The Parade will start at 20:30 on Oct 31 and Nov 1 on Realm 7. Please wait!" )
			return
		endif
		
		if $time > 2045
			BC( "dialogbox", "player", -1, "The Parade is over. You cannot obtain the Parade Status now." )
			return
		endif
	
		//??????
		if $date == 305
	    $TaskVar = GetPlayerVar( -1, 259 )
	    if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already received the Parade Status. Enjoy yourself!" )
				return
			endif
			
		endif
		if $date == 306
	    $TaskVar = GetPlayerVar( -1, 260 )
	    if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already received the Parade Status. Enjoy yourself!" )
				return
			endif
			
		endif
			
		//????
				$n = RandomNumber(1,100)
				if $n < 40
					AddStatus(-1 , 11663 , 1)
				else
					if $n < 70
						AddStatus(-1 , 11664 , 1)
					else
						if $n < 90
							AddStatus(-1 , 11665 , 1)
						else
							AddStatus(-1 , 11666 , 1)
						endif
					endif
				endif
		if $date == 305
		  SetPlayerVar( -1, 259, 1 )
		  
		  endif
		if $date == 306
		  SetPlayerVar( -1, 260, 1 )
		 
		  endif
		  
	
		BC( "screen", "player", -1, "You've already received the Parade Makeup Status. Enjoy yourself!" )
		
	}
	//????????
	function OnOption1(){

	
	//????????
	$min = GetSystemTime( "minute" )
		$hour = GetSystemTime( "hour" )
		$date = GetSystemTime( "yday" )
		$time = $hour * 100
		$time = $time + $min
		
		
		$Line = GetServerLineID()
		 if $date != 305
	    if $date != 306
	      BC( "dialogbox", "player", -1, "The Halloween Parade doesn't start yet!" )
	      return
	     endif
	    
	 endif
		if $Line != 7
			BC( "dialogbox", "player", -1, "The Parade Event and rewards receiving are only available on Realm 7." )
			return
		endif
		
		if $time < 2030
			BC( "dialogbox", "player", -1, "The Parade will start at 20:30 on Oct 31 and Nov 1 on Realm 7. Please wait!" )
			return
		else
			if $time < 2040
			BC( "dialogbox", "player", -1, "The Halloween Parade is not over yet. Please come to take the rewards after the event is over!" )
			return
		  endif
		endif
		//????????
		if $date == 305
	    $TaskVar = GetPlayerVar( -1, 259 )
	    $TaskVar1 = GetPlayerVar( -1, 264 )
	    if $TaskVar < 1
				BC( "dialogbox", "player", -1, "You haven't obtained the Parade Status. Sorry, you can't receive any rewards." )
				return
			endif
			if $TaskVar1 < 1
				BC( "dialogbox", "player", -1, "You haven't driven away those troublemakers. Sorry, you can't receive any rewards." )
				return
			endif
			
		endif
		if $date == 306
	    $TaskVar = GetPlayerVar( -1, 260 )
	    $TaskVar1 = GetPlayerVar( -1, 265 )
	    if $TaskVar < 1
				BC( "dialogbox", "player", -1, "You haven't obtained the Parade Status. Sorry, you can't receive any rewards." )
				return
			endif
			if $TaskVar1 < 1
				BC( "dialogbox", "player", -1, "You haven't driven away those troublemakers. Sorry, you can't receive any rewards." )
				return
			endif
			
		endif
		
			
	//??????
		if $date == 305
	    $TaskVar = GetPlayerVar( -1, 258 )
	    if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already received your rewards today. Please come back tomorrow!" )
				return
			endif
			
		endif
		if $date == 306
	    $TaskVar = GetPlayerVar( -1, 261 )
	    if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already received the Parade rewards. Thanks for joining us!" )
				return
			endif
			
		endif	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You bag is full. How could you receive my gifts?" )
			return
		endif
		
		//??????????
				
		AddPlayerInfo( -1, "item", 44500, 1 )
		
		if $date == 305
		  SetPlayerVar( -1, 258, 1 )
		  BC( "screen", "player", -1, "You have received a Halloween Parade Gift Pack. Welcome back to join us tomorrow!" )
		  return
		  endif
		if $date == 306
		  SetPlayerVar( -1, 261, 1 )
		  BC( "screen", "player", -1, "You have received a Halloween Parade Gift Pack. Thanks for joining us!" )
		  return
		  endif
		
	}