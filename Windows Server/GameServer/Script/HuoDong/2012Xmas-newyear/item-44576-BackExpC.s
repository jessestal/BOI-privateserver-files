 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2012  
 //  Author：胡斌涛  
 //  TaskName： 钻石玩家回归经验糖果 
 //****************************  
	function OnUseItem(){ 
		
		$getitem = GetPlayerInfo(-1,"item",44576)
		if $getitem < 1
			return
		endif
		$res = SubPlayerInfo(-1,"item",44576,$getitem)
		if $res == 0 
			$addexp = $getitem * 1000
			$addFexp = $getitem * 10
			AddPlayerInfo(-1,"exp",$addexp)
			AddFieldExp(-1,$addFexp)
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
	
	