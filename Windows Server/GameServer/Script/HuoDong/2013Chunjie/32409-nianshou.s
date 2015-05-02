 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.1.9  
 //  Author:???  
 //  TaskName: ?? 
 //****************************
 //????	90257,??	90258,????	90259,????(??)	90260
  

function OnDead(){ 


//--------------????------------------------------
//--??? 90243?????
	$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
    $dropitemD1 = 90258
    $dropitemD2 = 90259
    $dropitemD3 = 90260
		$dropitemDbase = 90257
		$severid = 369
		//$droped = 0
		//$droped2 = 0
		
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
		 $var = GetServerVar($severid)
		 $var = $var + 1
		 SetServerVar($severid,$var)
		 SetPlayerActLog($playerID,59,$var)


		  $maskD = 60 / $teamD_count
		  $maskD2 = $maskD
		  $randbuff = RandomNumber( 0 , 59 )
//	  	BC("chat","server",-1,"teamD_count = ",$teamD_count)
		  $Cid = 0
		  while $Cid < 6
//	  		BC("chat","server",-1,"Cid = ",$Cid)
		  	$teamplayer_id = GetTeamMemberID($playerID,$Cid)
		  	if $teamplayer_id > 0
		  		$lenD = GetPlayerDistance($playerID,$teamplayer_id )
		  		if $lenD < 9999
  	  			if $randbuff < $maskD2
  	  			   if $var == 1000
 		  			     #name = GetPlayerInfo( $teamplayer_id, "name" )
 		  			    	BC( "screen", "servergroup", -1, "Player:",#name,"obtained the Flame Kirin Pet Egg in the Festival Beast Event. Congratulations!" )
 		  			    	BC( "chat", "servergroup", -1, "Player:",#name,"obtained the Flame Kirin Pet Egg in the Festival Beast Event. Congratulations!" )
  	  			    	DropMonsterItems($teamplayer_id,$dropitemD1)
  	  			    	$maskD2 = -999
  	  			    	else
  	  			    	  if $var == 1500
  	  			    	    #name = GetPlayerInfo( $teamplayer_id, "name" )
 		  			    	    BC( "screen", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast Fate Card (Silver) in the Festival Beast Event. Congratulations!" )
 		  			    	    BC( "chat", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast Fate Card (Silver) in the Festival Beast Event. Congratulations!" )
  	  			    	    DropMonsterItems($teamplayer_id,$dropitemD3)
  	  			    	    $maskD2 = -999 
  	  			    	   else
  	  			    	    if $var == 2000  
  	  			    	       #name = GetPlayerInfo( $teamplayer_id, "name" )
 		  			    	       BC( "screen", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast in the Festival Beast Event. Congratulations!" )
 		  			    	       BC( "chat", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast in the Festival Beast Event. Congratulations!" )
  	  			    	       DropMonsterItems($teamplayer_id,$dropitemD2)
  	  			    	       $maskD2 = -999
  	  			    	    else
  	  			    	     if  $var == 3000    
  	  			    	         #name = GetPlayerInfo( $teamplayer_id, "name" )
 		  			    	          BC( "screen", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast Fate Card (Silver) in the Festival Beast Event. Congratulations!" )
 		  			    	          BC( "chat", "servergroup", -1, "Player:",#name,"obtained the New Year's Beast Fate Card (Silver) in the Festival Beast Event. Congratulations!" )
  	  			    	          DropMonsterItems($teamplayer_id,$dropitemD3)
  	  			    	          $maskD2 = -999  
  	  			    	     else       
  	  			    	      DropMonsterItems($teamplayer_id,$dropitemDbase)
  	  			    	      $maskD2 = -999
  	  			    	     endif
  	  			    	    endif
  	  			    	   endif
  	  			    endif   
  	  			    
  	  			else
  	  				DropMonsterItems($teamplayer_id,$dropitemDbase)
  	  				$maskD2 = $maskD2 + $maskD
  	  			endif
  	  		endif
		  	endif
		  	$Cid = $Cid + 1
		  endwhile	
		 
//----------------------????--------------------	
	}