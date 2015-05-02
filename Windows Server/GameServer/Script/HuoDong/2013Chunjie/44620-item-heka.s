//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/01/5
	//		Author:???
	//		TaskName:??????
	//		TaskID:44620-item-heka.s
	//
	//****************************************


function OnUseItem(){
	//??????
	$Now_Minute =  GetSystemTime( "minute")
	//??
	$Now_Hour =  GetSystemTime( "hour" )
	//??
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
	   BC( "screen", "player", -1, "Please open this card after Feb 18. There'll be surprises!" )
     BC( "chat", "player", -1, "Please open this card after Feb 18. There'll be surprises!" )
     return
  endif
  	if $Now_Yday < 49 
	   BC( "screen", "player", -1, "Please open this card after Feb 18. There'll be surprises!" )
     BC( "chat", "player", -1, "Please open this card after Feb 18. There'll be surprises!" )
     return
  endif
      
  //??????,
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must reach LV60 before you can open this card!" )
     BC( "chat", "player", -1, "You must reach LV60 before you can open this card!" )
     return
  endif
  
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "Insufficient bag space. After clear some space you can open the Luxurious Spring Festival Card." )
     BC( "chat", "player", -1, "Insufficient bag space. After clear some space you can open the Luxurious Spring Festival Card.")
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44620, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif
//
//  //????????????,???????0~1?3381
// 
//  SetPlayerVar(-1, 3381, 11)
//
  //---------?????????------------
  
  //???? ?????30?		63771	????		21207	????	30	44621	44645	???? 44646	?????


  AddPlayerInfo(-1, "item", 63771, 1 )    
  AddPlayerInfo(-1, "item", 21207, 1 ) 
  AddPlayerInfo(-1, "item", 44621, 30 ) 
  AddPlayerInfo(-1, "item", 44645, 1 ) 
  AddPlayerInfo(-1, "item", 44646, 1 ) 

//  $sex = GetPlayerInfo( -1, "sex" )
//		if $sex == 0
//			AddPlayerInfo( -1, "item", 37033, 1 )
//		endif
//		
//		if $sex == 1
//			AddPlayerInfo( -1, "item", 37034, 1 )
//		endif
//		 //??
//  $lv = GetPlayerInfo( -1, "level")
//   call exp()
//    $pro1 = 125
//		$pro2 = 1
//		$playerID = GetPlayerID()
//		if $playerID < 0
//			return
//		endif
//	  $addexp = $expori / 1000
//	  $addexp = $addexp * $pro1
//	  $addexp *= $pro2
//	  if $addexp > 200000000
//	  	$addexp = 200000000
//	  endif
//	  $addexp = $addexp * 2
//	  AddPlayerInfo(-1,"exp",$addexp)
//	  if $fieldlevel > 0
//	  	$addexp = $fexpori / 1000
//	  	$addexp = $addexp * $pro1
//	  	$addexp *= $pro2
//	    $addexp = $addexp * 2
//	  	AddFieldExp(-1,$addexp)
//	  endif
  
//  //????,??????Buff
 PlayEffect(-1, "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" )
//  AddStatus(-1, 7583, 1 )
// PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
//
  
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
