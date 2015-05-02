 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.1.9  
 //  Author:???  
 //  TaskName: ??? 
 //****************************  
 //0	??1??????????
//1	?????????????
//2	???????????????
//3	??????

	function OnRequest(){
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
		if $Now_Year != 2013 
	  DisableNpcOption(0)
	  DisableNpcOption(1)
	  DisableNpcOption(2)
	  DisableNpcOption(3)
    
  endif
  if $Now_Yday < 36 
	  DisableNpcOption(0)
	  DisableNpcOption(1)
	  DisableNpcOption(2)
	  DisableNpcOption(3)
   
  endif
	if $Now_Yday <= 49 
	   DisableNpcOption(3)
  endif
  if $Now_Yday > 49 
	  DisableNpcOption(0)
	  DisableNpcOption(1)
	  DisableNpcOption(2)
  endif
   $playervar1 = GetPlayerVar(-1,3450) 
		 if $playervar1 > 0
		  DisableNpcOption(3)
     endif
  
	}
	
	
	function OnOption0(){
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Yday > 49 
     BC( "dialogbox", "player", -1, "It's time to take your rewards!" )
     return
  endif
      $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "Come back again after you reach LV60!" )
     BC( "chat", "player", -1, "Come back again after you reach LV60!" )
     return
  endif
	  	//???? 3842 ,44633????,44634????
    $playervar = GetPlayerVar(-1,3842)  
    if $playervar >= 300
    BC( "dialogbox", "player", -1, "You've already made 300 wishes at the Wishing Tree. You can't do it again." )
    return
    endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44633)	
		$Info1 = GetPlayerInfo( -1, "item", 44634)
			if $Info < 1
			  if $Info1 < 1
			   	BC( "dialogbox", "player", -1, "You don't have the Mystical Springwater in your bag." )
				return
			endif
			endif
     if $Info > 0
        $del_count = SubPlayerInfo( -1, "item", 44633, 1 )
			   BC( "dialogbox", "player", -1, "You watered the Wishing Tree with a Mystical Springwater." )
			else
			$del_count = SubPlayerInfo( -1, "item", 44634, 1 )
			 BC( "dialogbox", "player", -1, "You watered the Wishing Tree with a Mystical Springwater to make a wish." )
			endif

     //??????????,????????
  if $del_count != 0
     return
  endif
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3842, $playervar )
		SetPlayerActLog(-1,58,$playervar)
		
	//??????????(??^2*200)
	
	$lv = GetPlayerInfo( -1 , "level" )
	$lv1 = $lv * $lv
	$addexp = $lv1 * 200
	
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 2

		//????
			if $addexp > 200000000
	         	AddPlayerInfo( -1 , "exp" , 200000000 )
	         	else
	         	AddPlayerInfo( -1 , "exp" , $addexp )
	         	endif
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		
		
	}
	function OnOption1(){
					//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Yday > 49 
     BC( "dialogbox", "player", -1, "It's time to take your rewards!" )
     return
  endif
    $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "Come back again after you reach LV60!" )
     BC( "chat", "player", -1, "Come back again after you reach LV60!" )
     return
  endif
	  	//???? 3842 ,44633????,44634????
    $playervar = GetPlayerVar(-1,3842)  
   if $playervar >= 300
    BC( "dialogbox", "player", -1, "You've already made 300 wishes at the Wishing Tree. You can't do it again." )
    return
    endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44633)	
		$Info1 = GetPlayerInfo( -1, "item", 44634)
			if $Info < 1
			  if $Info1 < 1
			   	BC( "dialogbox", "player", -1, "You don't have the Mystical Springwater in your bag." )
				return
		  	endif
			endif
			$Info3 = $playervar + $Info
			$Info3 = $Info3 + $Info1
			$Info4 = 300 - $playervar
			
			if $Info3 > 300
			  if $Info >= $Info4
			    $del_count = SubPlayerInfo( -1, "item", 44633, $Info4 )

			  else
			    if $Info == 0
			      $del_count = SubPlayerInfo( -1, "item", 44634, $Info4 )
			    endif
			  $Info5 = $Info4 - $Info
			  $del_count = SubPlayerInfo( -1, "item", 44633, $Info )
			  $del_count1 = SubPlayerInfo( -1, "item", 44634, $Info5 )
 
        endif
			  BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$Info4,"Mystical Springwaters to make a wish." )
			  $playervar = $playervar + $Info4
			  SetPlayerVar(-1, 3842, $playervar )
			  SetPlayerActLog(-1,58,$playervar)
			   //??????????(??^2*200)
	         
	         $lv = GetPlayerInfo( -1 , "level" )
	         $lv1 = $lv * $lv
	         $addexp = $lv1 * 200
	         
	         $fieldlevel = GetFieldLevel(-1)
	         $godexp = $fieldlevel * $fieldlevel
	         $b = $fieldlevel * 6
	         $b = $b / 10
	         $godexp = $godexp + $b
	         $godexp = $godexp + 1000
	         $godexp = $godexp * 2
           $addexp = $addexp * $Info4
           $godexp = $godexp * $Info4
	         	//????
	         		if $addexp > 200000000
	         	AddPlayerInfo( -1 , "exp" , 200000000 )
	         	else
	         	AddPlayerInfo( -1 , "exp" , $addexp )
	         	endif
	         	if $fieldlevel > 0
	         		AddFieldExp( -1 , $godexp )
	         	endif
        
			  else
			    if $Info > 0
            $del_count = SubPlayerInfo( -1, "item", 44633, $Info )
			   	endif			
			    if $Info1 > 0
			    $del_count1 = SubPlayerInfo( -1, "item", 44634, $Info1 )
			    endif
			    
           //??????????,????????
           if $del_count != 0
              return
           endif
           if $del_count1 != 0
              return
           endif
			    $Info2 = $Info + $Info1
			    BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$Info2,"Mystical Springwaters to make a wish." )
          $playervar = $playervar + $Info        
          $playervar = $playervar + $Info1       
          SetPlayerVar(-1, 3842, $playervar ) 
          SetPlayerActLog(-1,58,$playervar)   
          //??????????(??^2*200)
	         
	         $lv = GetPlayerInfo( -1 , "level" )
	         $lv1 = $lv * $lv
	         $addexp = $lv1 * 200
	         
	         $fieldlevel = GetFieldLevel(-1)
	         $godexp = $fieldlevel * $fieldlevel
	         $b = $fieldlevel * 6
	         $b = $b / 10
	         $godexp = $godexp + $b
	         $godexp = $godexp + 1000
	         $godexp = $godexp * 2
           $addexp = $addexp * $Info2
           $godexp = $godexp * $Info2
	         	//????
	         	if $addexp > 200000000
	         	AddPlayerInfo( -1 , "exp" , 200000000 )
	         	else
	         	AddPlayerInfo( -1 , "exp" , $addexp )
	         	endif
	         	if $fieldlevel > 0
	         		AddFieldExp( -1 , $godexp )
	         	endif
        
			  endif
  

		
		
		
		
	}
	function OnOption2(){

	  	//???? 3842 ,44633????,44634????
    $playervar = GetPlayerVar(-1,3842) 
    #award1 = "LV3 Gem x1"
    #award2 = "LV3 Gem x2"
    #award3 = "LV3 Gem x3"
    #award4 = "LV3 Gem x4"
    #award5 = "LV4 Gem x1"
    #award6 = "LV4 Gem x2"
    #award7 = "LV4 Gem x3"
    #award8 = "LV4 Gem x4"
    #award9 = "LV5 Gem x1"
    #award10 = "LV5 Gem x2"
    #award11 = "LV5 Gem x3"
    #award12 = "LV5 Gem x4"
    
    $level1 = 1
    $level2 = 5
    $level3 = 10
    $level4 = 15
    $level5 = 20
    $level6 = 30
    $level7 = 45
    $level8 = 60
    $level9 = 75
    $level10 = 150
    $level11 = 225
    $level12 = 300
    

    if $playervar < $level1
		BC( "dialogbox", "player", -1, "You haven't watered the Wishing Tree yet!" )
		return
		endif
		 if $playervar >= $level1
		   if $playervar < $level2
		     $left = $level2 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award1,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award2,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level2
		   if $playervar < $level3
		   $left = $level3 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award2,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award3,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level3
		   if $playervar < $level4
		     $left = $level4 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award3,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award4,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level4
		   if $playervar < $level5
		     $left = $level5 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award4,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award5,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level5
		   if $playervar < $level6
		     $left = $level6 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award5,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award6,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level6
		   if $playervar < $level7
		     $left = $level7 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award6,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award7,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level7
		   if $playervar < $level8
		     $left = $level8 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award7,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award8,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level8
		   if $playervar < $level9
		     $left = $level9 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award8,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award9,"!" )
		     return
		   endif
		 endif
		  if $playervar >= $level9
		   if $playervar < $level10
		     $left = $level10 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award9,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award10,"!" )
		     return
		   endif
		 endif
		 if $playervar >= $level10
		   if $playervar < $level11
		     $left = $level11 - $playervar 
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award10,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award11,"!" )
		     return
		   endif
		 endif
		 
		 if $playervar >= $level11
		   if $playervar < $level12
		   $left = $level12 - $playervar
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award11,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award12,"!" )
		     return
		   endif
		 endif
//		 if $playervar >= $level12
//		   if $playervar < $level13
//		     $left = $level13 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award12,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award13,"!" )
//		     return
//		   endif
//		 endif
//		 if $playervar >= $level13
//		   if $playervar < $level14
//		     $left = $level14 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award13,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award14,"!" )
//		     return
//		   endif
//		 endif
//		 if $playervar >= $level14
//		   if $playervar < $level15
//		   $left = $level15 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award14,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award15,"!" )
//		     return
//		   endif
//		 endif
//		 if $playervar >= $level15
//		   if $playervar < $level16
//		     $left = $level16 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award15,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award16,"!" )
//		     return
//		   endif
//		 endif
//		 if $playervar >= $level16
//		   if $playervar < $level17
//		   $left = $level17 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award16,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award17,"!" )
//		     return
//		   endif
//		 endif
//		 if $playervar >= $level17
//		   if $playervar < $level18
//		     $left = $level18 - $playervar
//		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award17,"!\nYou need to water the Wishing Tree with",$left,"Mystical Springwaters\nto receive the gifts.",#award18,"!" )
//		     return
//		   endif
//		 endif
		  if $playervar == $level12
		  
		     BC( "dialogbox", "player", -1, "You've watered the Wishing Tree with",$playervar,"Mystical Springwaters!\nAfter Feb 19, you can receive gifts -",#award12,"!\nYou can't make wishes any more!" )
		     return
		 endif
		 if $playervar > $level12
		     BC( "dialogbox", "player", -1, "Data error. Please contact the customer service." )
		     return
		 endif
		
			
		
	}
	function OnOption3(){
	//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  BC( "dialogbox", "player", -1, "Please come back again to take your gift when the gifts on the Wishing Tree mature." )
     return
  endif
  	if $Now_Yday <= 49 
	   BC( "dialogbox", "player", -1, "Please come back again on Feb 19 to take your gift when the gifts on the Wishing Tree mature." )
     return
  endif
   //??????,
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must reach LV60 before you can receive this gift." )
     BC( "chat", "player", -1, "You must reach LV60 before you can receive this gift." )
     return
  endif
  //???? 3450
  		 $playervar1 = GetPlayerVar(-1,3450) 
		 if $playervar1 > 0
		  BC( "dialogbox", "player", -1, "You've made a wish already." )
      return
     endif
		 //????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		//????
    $nullitem = GetPlayerInfo( -1 ,"nullitem",1 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your materials bag is full!" )
			return
		endif
	  //???? ????
//3????		59839
//4????		59840
//5????		59841

    $playervar = GetPlayerVar(-1,3842) 
    $awardid1 = 59839
    $awardid2 = 59840
    $awardid3 = 59841
    $level1 = 1
    $level2 = 5
    $level3 = 10
    $level4 = 15
    $level5 = 20
    $level6 = 30
    $level7 = 45
    $level8 = 60
    $level9 = 75
    $level10 = 150
    $level11 = 225
    $level12 = 300


    if $playervar < $level1
		BC( "dialogbox", "player", -1, "Sorry, you haven't watered the Wishing Tree." )
		return
		endif
		 PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
		 if $playervar >= $level1
		   if $playervar < $level2
		     BC( "screen", "player", -1, "Congratulation, you obtained a LV3 Gem Coin!" )
		     $left = $playervar - $level1
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid1, 1 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level2
		   if $playervar < $level3
		     BC( "screen", "player", -1, "Congratulation, you obtained 2 LV3 Gem Coins!" )
		     $left = $playervar - $level2
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid1, 2 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level3
		   if $playervar < $level4
		     BC( "screen", "player", -1, "Congratulation, you obtained 3 LV3 Gem Coins!" )
		     $left = $playervar - $level3
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid1, 3 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level4
		   if $playervar < $level5
         BC( "screen", "player", -1, "Congratulation, you obtained 4 LV3 Gem Coins!" )
         $left = $playervar - $level4
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid1, 4 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level5
		   if $playervar < $level6
		     BC( "screen", "player", -1, "Congratulation, you obtained 1 LV4 Gem Coin!" )
		     $left = $playervar - $level5
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid2, 1 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level6
		   if $playervar < $level7
         BC( "screen", "player", -1, "Congratulation, you obtained 2 LV4 Gem Coins!" )
         $left = $playervar - $level6
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid2, 2 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level7
		   if $playervar < $level8
		    BC( "screen", "player", -1, "Congratulation, you obtained 3 LV4 Gem Coins!" )
		    $left = $playervar - $level7
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid2, 3 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level8
		   if $playervar < $level9
		     BC( "screen", "player", -1, "Congratulation, you obtained 4 LV4 Gem Coins!" )
		     $left = $playervar - $level8
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid2, 4 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		  if $playervar >= $level9
		   if $playervar < $level10
		     #name = GetPlayerInfo( -1, "name" )
		     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"obtained a LV5 Gem Coin from the Wishing Tree!")
		     $left = $playervar - $level9
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid3, 1 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		 if $playervar >= $level10
		   if $playervar < $level11
		      #name = GetPlayerInfo( -1, "name" )
		     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"obtained 2 LV5 Gem Coins from the Wishing Tree!")
		     $left = $playervar - $level10
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid3, 2 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
		 
		 if $playervar >= $level11
		   if $playervar < $level12
		      #name = GetPlayerInfo( -1, "name" )
		     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"obtained 3 LV5 Gem Coins from the Wishing Tree!")
		     $left = $playervar - $level11
		     if $left > 0
		     AddPlayerInfo(-1,"item",9,$left)
		     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
		     endif
		     AddPlayerInfo( -1, "item", $awardid3, 3 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		   endif
		 endif
	//	 if $playervar >= $level12
	//	   if $playervar < $level13
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"obtained 4 LV5 Gem Coins from the Wishing Tree!")
	//	     $left = $playervar - $level12
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3, 4 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
	//	 if $playervar >= $level13
	//	   if $playervar < $level14
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"GUID:04863000150")
	//	     $left = $playervar - $level13
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3, 5 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
	//	 if $playervar >= $level14
	//	   if $playervar < $level15
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"GUID:04863000154")
	//	     $left = $playervar - $level14
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3, 6 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
	//	 if $playervar >= $level15
	//	   if $playervar < $level16
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"GUID:04863000158")
	//	     $left = $playervar - $level15
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3, 7 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
	//	 if $playervar >= $level16
	//	   if $playervar < $level17
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"GUID:04863000162")
	//	     $left = $playervar - $level16
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3,8 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
	//	 if $playervar >= $level17
	//	   if $playervar < $level18
	//	      #name = GetPlayerInfo( -1, "name" )
	//	     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"GUID:04863000166")
	//	     $left = $playervar - $level17
	//	     if $left > 0
	//	     AddPlayerInfo(-1,"item",9,$left)
	//	     BC( "screen", "player", -1, "Congratulation, you obtained",$left,"Major Fortify Crystals!" )
	//	     endif
	//	     AddPlayerInfo( -1, "item", $awardid3, 9 )
	//	     SetPlayerVar(-1, 3450 ,1)
	//	     return
	//	   endif
	//	 endif
		  if $playervar == $level12
		      #name = GetPlayerInfo( -1, "name" )
		     BC( "screen", "servergroup", -1, "Congratulations! Player ",#name,"obtained 4 LV5 Gem Coins from the Wishing Tree!")
		     AddPlayerInfo( -1, "item", $awardid3, 4 )
		     SetPlayerVar(-1, 3450 ,1)
		     return
		 endif
		 if $playervar > $level12
		     BC( "dialogbox", "player", -1, "Data error. Please contact the customer service." )
		     return
		 endif
		
			
		
	}
	
	