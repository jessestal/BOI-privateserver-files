	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/11/11
	//		Author：张文宇
	//		TaskName：Ectype-baicengta-GrandTeam-Init.s
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
	// 冠军小队的特性有几个：11
	// 冠军小队的特性依次是哪些：12-32
	// 狂暴时间：33（秒）
	// 队伍怪物数量：34
	// 幸存者死亡个数：35
	// 盖亚守护是否激活：36
	// 盖亚计数：37
	// 生命链接记录总伤害数：110
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		StartEctypeTimer ($ectype_ID,1)
		
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		$SpNum = 0
		$Spmin = 0
		$Spmax = 0
		$MonNum = 0
		$kuangbaotime = 0
		$Xo = 0
		$Yo = 0
		$Xi = 0
		$Yi = 0
		$Ri = 0
		$Monid = $ectype_ID - 15101
		$Monid = $Monid / 200
		$Monid = $Monid + 55531
		//10层以下
		if $ectype_ID > 15100
			if $ectype_ID <= 16100
				//设置特性数量
				$SpNum = 1
				//特性抽取范围
				$Spmin = 11
				$Spmax = 20
				//设置怪物数量
				$MonNum = 3
				//设置狂暴时间
				$kuangbaotime = 150
				//NPC起始XY
				$Xo = 72
				$Yo = 70
				//小队怪物id
				$Monid = $Monid - 0
				//怪物起始XY
				$Xi = 72
				$Yi = 70
				$Ri = 1
			endif
		endif
		//20层以下
		if $ectype_ID > 16100
			if $ectype_ID <= 17100
				//设置特性数量
				$SpNum = 1
				//特性抽取范围
				$Spmin = 11
				$Spmax = 20
				//设置怪物数量
				$MonNum = 3
				//设置狂暴时间
				$kuangbaotime = 150
				//NPC起始XY
				$Xo = 152
				$Yo = 193
				//小队怪物id
				$Monid = $Monid - 1
				//怪物起始XY
				$Xi = 152
				$Yi = 193
				$Ri = 1
			endif
		endif
		//30层以下
		if $ectype_ID > 17100
			if $ectype_ID <= 18100
				//设置特性数量
				$SpNum = 2
				//特性抽取范围
				$Spmin = 10
				$Spmax = 28
				//设置怪物数量
				$MonNum = 3
				//设置狂暴时间
				$kuangbaotime = 150
				//NPC起始XY
				$Xo = 154
				$Yo = 151
				//小队怪物id
				$Monid = $Monid - 2
				//怪物起始XY
				$Xi = 154
				$Yi = 151
				$Ri = 1
			endif
		endif
		//40层以下
		if $ectype_ID > 18100
			if $ectype_ID <= 19100
				//设置特性数量
				$SpNum = 3
				//特性抽取范围
				$Spmin = 10
				$Spmax = 29
				//设置怪物数量
				$MonNum = 3
				//设置狂暴时间
				$kuangbaotime = 150
				//NPC起始XY
				$Xo = 69
				$Yo = 70
				//小队怪物id
				$Monid = $Monid - 3
				//怪物起始XY
				$Xi = 69
				$Yi = 70
				$Ri = 1
			endif
		endif
		//50层以下
		if $ectype_ID > 19100
			if $ectype_ID <= 20100
				//设置特性数量
				$SpNum = 2
				//特性抽取范围
				$Spmin = 10
				$Spmax = 29
				//设置怪物数量
				$MonNum = 4
				//设置狂暴时间
				$kuangbaotime = 150
				//NPC起始XY
				$Xo = 152
				$Yo = 151
				//小队怪物id
				$Monid = $Monid - 4
				//怪物起始XY
				$Xi = 152
				$Yi = 151
				$Ri = 1
			endif
		endif
		//60层以下
		if $ectype_ID > 20100
			if $ectype_ID <= 21100
				//设置特性数量
				$SpNum = 3
				//特性抽取范围
				$Spmin = 10
				$Spmax = 30
				//设置怪物数量
				$MonNum = 4
				//设置狂暴时间
				$kuangbaotime = 200
				//NPC起始XY
				$Xo = 154
				$Yo = 154
				//小队怪物id
				$Monid = $Monid - 5
				//怪物起始XY
				$Xi = 154
				$Yi = 154
				$Ri = 1
			endif
		endif
		//70层以下
		if $ectype_ID > 21100
			if $ectype_ID <= 22100
				//设置特性数量
				$SpNum = 4
				//特性抽取范围
				$Spmin = 10
				$Spmax = 30
				//设置怪物数量
				$MonNum = 4
				//设置狂暴时间
				$kuangbaotime = 250
				//NPC起始XY
				$Xo = 147
				$Yo = 136
				//小队怪物id
				$Monid = $Monid - 6
				//怪物起始XY
				$Xi = 174
				$Yi = 136
				$Ri = 1
			endif
		endif
		//80层以下
		if $ectype_ID > 22100
			if $ectype_ID <= 23100
				//设置特性数量
				$SpNum = 5
				//特性抽取范围
				$Spmin = 10
				$Spmax = 31
				//设置怪物数量
				$MonNum = 4
				//设置狂暴时间
				$kuangbaotime = 300
				//NPC起始XY
				$Xo = 147
				$Yo = 136
				//小队怪物id
				$Monid = $Monid - 7
				//怪物起始XY
				$Xi = 174
				$Yi = 136
				$Ri = 1
			endif
		endif
		//90层以下
		if $ectype_ID > 23100
			if $ectype_ID <= 24100
				//设置特性数量
				$SpNum = 4
				//特性抽取范围
				$Spmin = 10
				$Spmax = 31
				//设置怪物数量
				$MonNum = 5
				//设置狂暴时间
				$kuangbaotime = 300
				//NPC起始XY
				$Xo = 255
				$Yo = 155
				//小队怪物id
				$Monid = $Monid - 8
				//怪物起始XY
				$Xi = 197
				$Yi = 155
				$Ri = 1
			endif
		endif
		//100层以下
		if $ectype_ID > 24100
			if $ectype_ID <= 25100
				//设置特性数量
				$SpNum = 5
				//特性抽取范围
				$Spmin = 10
				$Spmax = 31
				//设置怪物数量
				$MonNum = 5
				//设置狂暴时间
				$kuangbaotime = 300
				//NPC起始XY
				$Xo =	249
				$Yo = 156
				//小队怪物id
				$Monid = $Monid - 9
				//怪物起始XY
				$Xi = 197
				$Yi = 155
				$Ri = 1
			endif
		endif
		
		$league = 0
		SetEctypeVar($ectype_ID,11,$SpNum)
		$special = 0
		$i = 0
		while $i < $SpNum
			$w = 0
			while $w <= $i
				if $w == 0
					$special = RandomNumber( $Spmin , $Spmax )
				endif
				$SpID = 12 + $w
				$SpList = GetEctypeVar($ectype_ID,$SpID)
				if $special == $SpList
					$w = 0
				else
					$w = $w + 1
				endif
			endwhile
			$SpSID = 12 + $i
			SetEctypeVar($ectype_ID,$SpSID,$special)
			if $special == 20
				$league = 1
			endif
			$i = $i + 1
		endwhile
		
		//召唤NPC
		AddNpcByPos( 2467, $ectype_ID, $Xo, $Yo, 180000, 0 )
		
		if $league == 1
			$MonNum = $MonNum + 1
		endif
		AddMonsterByFloat( $Monid, $MonNum, $ectype_ID, $Xi, $Yi, $Ri)
		
		SetEctypeVar($ectype_ID,33,120)
		SetEctypeVar($ectype_ID,34,$MonNum)
		
		//设置小怪和头领数量
		SetEctypeVar(-1,5,0)
		SetEctypeVar(-1,6,$MonNum)
		
	}