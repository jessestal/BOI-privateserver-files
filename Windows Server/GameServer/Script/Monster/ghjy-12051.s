	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/17
	//		Author:???
	//		TaskName:?????
	//		TaskID:ghjy-12051.s
	//
	//****************************************
	
	function OnDead(){	

      $dropitemD = 90207
      $teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )
			$farm_number = GetPlayerVar( -1 , 3421 )
      $grow_number = GetPlayerVar( -1 , 3423 )

      if $teamplayer1_id != -1
         $farm_number1 = GetPlayerVar( $teamplayer1_id , 3421 )
         $grow_number1 = GetPlayerVar( $teamplayer1_id , 3423 )
	      if $farm_number == $farm_number1
	        if $grow_number == $grow_number1
	          DropMonsterItems ($teamplayer1_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer1_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer1_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
	      
      if $teamplayer2_id != -1
         $farm_number2 = GetPlayerVar( $teamplayer2_id , 3421 )
         $grow_number2 = GetPlayerVar( $teamplayer2_id , 3423 )
	      if $farm_number == $farm_number2
	        if $grow_number == $grow_number2
	          DropMonsterItems ($teamplayer2_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer2_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer2_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
	    
	    if $teamplayer3_id != -1
         $farm_number3 = GetPlayerVar( $teamplayer3_id , 3421 )
         $grow_number3 = GetPlayerVar( $teamplayer3_id , 3423 )
	      if $farm_number == $farm_number3
	        if $grow_number == $grow_number3
	          DropMonsterItems ($teamplayer3_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer3_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer3_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
	    
	    if $teamplayer4_id != -1
         $farm_number4 = GetPlayerVar( $teamplayer4_id , 3421 )
         $grow_number4 = GetPlayerVar( $teamplayer4_id , 3423 )
	      if $farm_number == $farm_number4
	        if $grow_number == $grow_number4
	          DropMonsterItems ($teamplayer4_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer4_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer4_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
	    
	    if $teamplayer5_id != -1
         $farm_number5 = GetPlayerVar( $teamplayer5_id , 3421 )
         $grow_number5 = GetPlayerVar( $teamplayer5_id , 3423 )
	      if $farm_number == $farm_number5
	        if $grow_number == $grow_number5
	          DropMonsterItems ($teamplayer5_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer5_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer5_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
      
      if $teamplayer6_id != -1
         $farm_number6 = GetPlayerVar( $teamplayer6_id , 3421 )
         $grow_number6 = GetPlayerVar( $teamplayer6_id , 3423 )
	      if $farm_number == $farm_number6
	        if $grow_number == $grow_number6
	          DropMonsterItems ($teamplayer6_id,$dropitemD)
	        else
	          BC( "screen" , "player" , $teamplayer6_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	        endif
	      else
	         BC( "screen" , "player" , $teamplayer6_id , "Sorry, this isn't the Guild Beast that you adopted!" )
	      endif
	    endif
      
	}