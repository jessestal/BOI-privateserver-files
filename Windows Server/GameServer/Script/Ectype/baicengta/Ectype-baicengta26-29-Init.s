	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/01
	//		Author：朱建臣
	//		TaskName：Ectype-baicengta26-29-Init.s
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
		
		//设置小怪和头领数量
		SetEctypeVar(-1,5,45)
		SetEctypeVar(-1,6,6)		
		$ectype_ID = GetCurEctypeID()
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, 154, 151, 180000, 0 )
		
		//随机去掉一个怪点
		$decrease = RandomNumber( 1, 4 )
		
		//随机刷小怪		
		$a = RandomNumber( 0, 4 )
		$smid = 55241 + $a
		$sstr = 121 + $a
		
		if $decrease != 1
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 66, 62, 4 )
		endif                                                          
		if $decrease != 2                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 64, 53, 4 )
		endif                                                          
		if $decrease != 3                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 53, 62, 4 )
		endif                                                          
		if $decrease != 4                                              
			AddLevelMonster( $smid, $sstr, 120, 15, $ectype_ID, 59, 66, 4 )
		endif
		
			
		//随即刷大怪
		$b = RandomNumber( 0, 4 )
		$bmid = 55271 + $b
		$bstr = 126 + $b
		
		if $decrease != 1
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 67, 64, 4 )
		endif                                                         
		if $decrease != 2                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 66, 53, 4 )
		endif                                                         
		if $decrease != 3                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 51, 63, 4 )
		endif                                                         
		if $decrease != 4                                             
			AddLevelMonster( $bmid, $bstr, 120, 2, $ectype_ID, 61, 68, 4 )
		endif
			
			//刷黄金猪
			$c = RandomNumber( 0, 333 )
			if $c == 0
				AddMonsterByFloat( 55322, 1, $ectype_ID, 129, 135, 0 )
			endif
	}