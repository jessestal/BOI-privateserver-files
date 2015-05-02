 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ???????????? 
 //****************************  
	function OnUseItem(){ 
		
		call exp()
//0.375
//0.125
//3427
//3428
//		BC("chat","player",-1,"expori=",$expori)
//		BC("chat","player",-1,"fexpori=",$fexpori)
		$sysmday = GetSystemTime("mday")
		$playervarid = 3428
		$pro1 = 375
		$pro2 = 1
		$playervar = GetPlayerVar(-1,$playervarid)
		#nameitem = "Returning Veteran High-end Silver EXP Orb"
		if $playervar == $sysmday
			BC("screen","player",-1,"You've already had one",#nameitem,"today.")
			return
		endif
		$itemid = GetItemID()
		$res = SubPlayerInfo(-1,"item",$itemid,1)
		if $res == 0 
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
			SetPlayerVar(-1,$playervarid,$sysmday)
			BC("screen","player",-1,"You had one",#nameitem,"!")
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
	