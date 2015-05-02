	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/01
	//		Author：朱建臣
	//		TaskName：Ectype-baicengta5-Init.s
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
		$result = SetEctypeTimer( 1 , 3 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		//设置小怪数量
		SetEctypeVar(-1,5,420)
		SetEctypeVar(-1,6,0)
		
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//召唤隐身怪
		AddMonsterByFloat( 55513, 1, $ectype_ID, 73, 71, 0, 0, 45 )
		AddMonsterByFloat( 55500, 1, $ectype_ID, 73, 67, 0, 0, 160 )
		AddSingleVehicle(55518,$ectype_ID, 73, 72, 0, -1, 0, 0 )
	}
		