    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/17
	//		Author:???
	//		TaskName:44482-GiftofNationalDay.s
	//		TaskID:2012??????
	//
	//****************************************


function OnUseItem(){
		//????10?,??????????
		//??10??,????,???? 4???? 59840  ?? 88  ??  21195
	
		$time = GetPlayerVar(-1,3309)	  
	  $mapid = GetPlayerInfo(-1,"mapid")
	  $posx = GetPlayerInfo(-1,"mapposx")		  
		$posy = GetPlayerInfo(-1,"mapposy") 
		$Now_Year = GetSystemTime( "year" )
		$Now_Month = GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Line = GetServerLineID()		
		$level = GetPlayerInfo(-1,"level")
		$field = GetFieldLevel(-1)
		$time = GetPlayerVar(-1,3309)		
		#name = GetPlayerInfo(-1,"name")
		
		if $Now_Year != 2012
	  	BC( "screen", "player", -1, "N/A??????2012???????" )
	  	BC( "chat", "player", -1, "N/A??????2012???????" )
	  	return
	  endif			
		if $Now_Month != 10
	  	BC( "screen", "player", -1, "N/A???????2012?10?8??20:30-21:00?7?????????" )
	  	BC( "chat", "player", -1, "N/A???????2012?10?8??20:30-21:00?7?????????" )
	  	return
	  endif	  
		if $Now_Mday != 8
	  	BC( "screen", "player", -1, "N/A???????2012?10?8?????" )
	  	BC( "chat", "player", -1, "N/A???????2012?10?8?????" )
	  	return
	  endif	 	
		if $Now_Hour < 20
	  	BC( "screen", "player", -1, "N/A?????????20:30-21:00?7?????????" )
	  	BC( "chat", "player", -1, "N/A?????????20:30-21:00?7?????????" )
	  	return
	  endif	 	
		if $Now_Hour >= 21
	  	BC( "screen", "player", -1, "N/A???,???????????" )
	  	BC( "chat", "player", -1, "N/A???,???????????" )
	  	return
	  endif		
		if $Now_Hour == 20
			if $Now_Minute < 30
		  	BC( "screen", "player", -1, "N/A??????????7??????????,???????" )
		  	BC( "chat", "player", -1, "N/A??????????7??????????,???????" )
		  	return
		  endif
	  endif		        
				
	  if $mapid != 475
	  	BC( "screen", "player", -1, "N/A??????????????" )
	  	BC( "chat", "player", -1, "N/A??????????????" )
	  	return
	  endif

		if $Line != 7
			BC( "screen", "player", -1, "N/A???????7???" )
	  	BC( "chat", "player", -1, "N/A???????7???" )		
	  	return
	 	endif
	  
	  if $posx > 180
	  	BC( "screen", "player", -1, "N/A?????????????????" )
	  	BC( "chat", "player", -1, "N/A?????????????????" )
	  	return
	  endif  
	  if $posx < 120
	  	BC( "screen", "player", -1, "N/A?????????????????" )
	  	BC( "chat", "player", -1, "N/A?????????????????" )
	  	return
	  endif   
	  
	  if $posy > 230
	  	BC( "screen", "player", -1, "N/A?????????????????" )
	  	BC( "chat", "player", -1, "N/A?????????????????" )
	  	return
	  endif  
	  if $posy < 180
	  	BC( "screen", "player", -1, "N/A?????????????????" )
	  	BC( "chat", "player", -1, "N/A?????????????????" )
	  	return
	  endif  
	  
	  
		//????????
		//1????		
		$a = $level * $level 
		$b = $level * 4
		$b = $b / 100
		$c = 76 / 100
		$b = $b - $c
		$b = $b * 30
		$exp = $a * $b		

		//2 ???		
		if $field > 0
			$x = $field * $field
			$y = $field * 6
			$y = $y / 10
			$y = $x + $y
			$y = $y + 1000
			$fieldexp = $y * 10
		endif
		
		//?10??????????,????
		if $time == 9		
		
		  //???????
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  if $bag_count < 1
		     BC( "chat", "player", -1, "You need at least 1 empty slot in your bag before you can use this item!" )
		     return
		  endif
		
		  //???????
		  $del_count = SubPlayerInfo( -1, "item", 44482, 1 )
		  //??????????
		  if $del_count != 0
		     return
		  endif
		
		  //??????
		  AddPlayerInfo(-1,"item",59840,1)
		  AddPlayerInfo(-1,"item",21195,1)
		  AddTitle(-1,88)
		endif
		
		//??????
		$time = $time + 1
		SetPlayerVar(-1,3309,$time)  		
		
		//????
		AddPlayerInfo(-1,"exp",$exp)
		if $field > 0
			AddFieldExp(-1,$fieldexp)
		endif
		
		//??????
		$n = 1
		while $n <= 15 
			$m1 = $posx - 15
			$m2 = $posx + 15
			$n1 = $posy - 15
			$n2 = $posy + 15
			$x1 = RandomNumber($m1,$m2)
			$y1 = RandomNumber($n1,$n2)
			//???????
			if $x1 > 138
				if $x1 <= 149
					if $y1 > 186
						if $y1 <= 200
							$x1 = RandomNumber(136,141)
							$y1 = RandomNumber(186,189)
						endif
					endif
				endif
			endif
			if $x1 > 149
				if $x1 <= 160
					if $y1 > 186
						if $y1 <= 200
							$x1 = RandomNumber(157,161)
							$y1 = RandomNumber(186,189)
						endif
					endif
				endif
			endif		
			if $x1 > 138
				if $x1 <= 149
					if $y1 > 200
						if $y1 <= 209
							$x1 = RandomNumber(136,141)
							$y1 = RandomNumber(206,211)
						endif
					endif
				endif
			endif
			if $x1 > 149
				if $x1 <= 163
					if $y1 > 200
						if $y1 <= 211
							$x1 = RandomNumber(159,163)
							$y1 = RandomNumber(209,215)
						endif
					endif
				endif
			endif								
			AddMonsterByFloat(32296,1,$mapid,$x1,$y1,0,0,1)
			$n = $n + 1
		endwhile

		//????
		$a = 10 - $time
		if $a != 0
			BC("screen","player",-1,"N/A????????",$a,"times today.")
		endif
  
		//????		
		PlayEffect(-1, "common\yanhua\tx_chunjie\tx_yanhua_chunjie_02.ini" )
		PlayEffect(-1, "common\yanhua\tx_xuanli1\tx_xuanli1.ini" )
		PlayEffect(-1, "common\yanhua\tx_xuanli2\tx_xuanli2.ini" )
		BC("screen","server",-1,"The hero",#name,"N/A????????????,?????,?????,????????????")
		BC("chat","server",-1,"The hero",#name,"N/A????????????,?????,?????,????????????")
		BC("screen","servergroup",-1,"The hero",#name,"N/A???????,?????,?????,??????????????7????????????????")
		BC("screen","map",-1,"The hero",#name,"N/A???????,??????????????")

}