	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/02/20
	//		Author：张文宇
	//		TaskName：Ectype-baicengta81-89-Init.s
	//		TaskID：
	//
	//****************************************
	
	// 记录层数的玩家变量：3327
	// 记录杀小怪数量的副本变量：1
	// 记录杀大怪数量的副本变量：2
	// 判断小怪是否全部死亡的变量：3(杀完为1，否则为0)
	// 判断大怪是否全部死亡的变量：4(杀完为1，否则为0)
	// 记录小怪数量的变量：5
	// 记录头领数量的变量：6
	// 小怪随机的种类：7
	// 头领随机的种类：8
	// 刷怪的波数：9
	// 检测计时器的次数：10
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		
		SetEctypeTimer( 1 , 10 , "EctypeTime1" )
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 255, 155, 180000, 0 )
		
		//刷黄金猪
		$c = RandomNumber( 0, 333 )
		if $c == 0
			AddMonsterByFloat( 55328, 1, $ectype_ID, 202, 130, 0 )
		endif
		
		$a = RandomNumber( 0, 5 )
		$b = RandomNumber( 0, 5 )
		//设置小怪,头领数量和随机种类
		SetEctypeVar($ectype_ID,5,72)
		SetEctypeVar($ectype_ID,6,27)
		SetEctypeVar($ectype_ID,7,$a)
		SetEctypeVar($ectype_ID,8,$b)
		
		call Spawn()
		
	}
	
	function Spawn(){
		
		$ectype_ID = GetCurEctypeID()
		$a = GetEctypeVar($ectype_ID,7)
		$b = GetEctypeVar($ectype_ID,8)
		$d = GetEctypeVar($ectype_ID,9)
		
		$aa = $a + 55251
		$ab = $a + 185
		if $a == 5
			$ab = 242
		endif
		$ba = $b + 55281
		$bb = $b + 190
		if $b == 5
			$bb = 243
		endif
		
		//刷小怪
		AddLevelFieldMonster($aa,$ab,120,85,40,8,$ectype_ID,74,61,11)
		//刷头领
		AddLevelFieldMonster($ba,$bb,120,85,40,3,$ectype_ID,74,61,11)
		
		$dd = $d + 1
		SetEctypeVar($ectype_ID,9,$dd)
		
		if $d < 8
			StartEctypeTimer ($ectype_ID,1)
		endif
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		$a0 = GetEctypeVar($ectype_ID,1)
		$b0 = GetEctypeVar($ectype_ID,2)
		$boshu = GetEctypeVar($ectype_ID,9)
		$cishu = GetEctypeVar($ectype_ID,10)
		$c = $a0 + $b0
		$zongshu = $boshu * 11
		
		if $c >= $zongshu 
			call Spawn()
			SetEctypeVar($ectype_ID,10,0)
		else
			if $cishu >= 8
				call Spawn()
				SetEctypeVar($ectype_ID,10,0)
			else
				$cishu = $cishu + 1
				SetEctypeVar($ectype_ID,10,$cishu)
				StartEctypeTimer ($ectype_ID,1)
			endif
		endif
		
	}