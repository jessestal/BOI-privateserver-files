	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/01
	//		Author：朱建臣
	//		TaskName：Ectype-baicengta51-54-Init.s
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
	
	function OnCreate(){
		
		
		
	}
	function InitTimer(){
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		
	}
			
	function EctypeTime1(){
		
		//随机去掉一个怪点
		$decrease = RandomNumber( 1, 4 )
		
		//设置小怪和头领数量
		SetEctypeVar(-1,5,60)
		if $decrease == 1
			SetEctypeVar(-1,6,10)
		endif
		if $decrease == 2
			SetEctypeVar(-1,6,11)
		endif
		if $decrease == 3
			SetEctypeVar(-1,6,10)
		endif
		if $decrease == 4
			SetEctypeVar(-1,6,11)
		endif		
		$ectype_ID = GetCurEctypeID()
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 154, 154, 180000, 0 )
		
		//随机刷小怪		
		$a = RandomNumber( 0, 4 )
		$smid = 55246 + $a
		$sstr = 151 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 54, 55, 4  )
		endif                                                           
		if $decrease != 2                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 65, 55, 4  )
		endif                                                           
		if $decrease != 3                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 54, 66, 4  )
		endif                                                           
		if $decrease != 4                                               
			AddLevelMonster( $smid, $sstr, 120, 20, $ectype_ID, 65, 66, 4  )
		endif
		
			
		//随即刷大怪
		$b = RandomNumber( 0, 4 )
		$bmid = 55276 + $b
		$bstr = 156 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 4, $ectype_ID, 53, 54, 4 )
		endif                                                         
		if $decrease != 2                                             
			AddLevelMonster( $bmid, $bstr, 120, 3, $ectype_ID, 66, 54, 4 )
		endif                                                         
		if $decrease != 3                                             
			AddLevelMonster( $bmid, $bstr, 120, 4, $ectype_ID, 53, 67, 4 )
		endif                                                         
		if $decrease != 4                                             
			AddLevelMonster( $bmid, $bstr, 120, 3, $ectype_ID, 66, 67, 4 )
		endif
			
			//刷黄金猪
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55325, 1, $ectype_ID, 122, 125, 0 )
			endif
	}
	