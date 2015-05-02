//***************大南瓜采集掉落脚本*************************

	function OnDead(){
		
		DropMonsterItems(-1, 90212 )
		$playerid = GetPlayerID()
		$point1 = GetPlayerVar($playerid,264)
		$point2 = GetPlayerVar($playerid,265)
		$date = GetSystemTime( "yday" )
		
		
		if $date == 305
	  
	    if $point1 == 0
	   
			  SetPlayerVar($playerid,264,1)	
		   return
		  endif
		endif
			
		if $date == 306 
	   if $point2 == 0
			SetPlayerVar($playerid,265,1)	
		  return
		  endif
			
		endif
	}