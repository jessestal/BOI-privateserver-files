	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/02/20
	//		Author：张文宇
	//		TaskName：Ectype-baicengta65-Init.s
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
		SetEctypeVar(-1,5,840)
		SetEctypeVar(-1,6,0)
		
	}
	
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		AddMonsterByFloat( 55525, 1, $ectype_ID, 147, 136, 0, 0, 45 )
		AddMonsterByFloat( 55500, 1, $ectype_ID, 147, 136, 0, 0, 160 )
		AddSingleVehicle(55518,$ectype_ID, 151, 136, 0, -1, 0, 0 )
	}