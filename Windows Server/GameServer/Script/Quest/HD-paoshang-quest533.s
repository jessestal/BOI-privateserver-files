	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/12/26
	//		Author：祁晶
	//		TaskName：HD-paoshang-quest533.s
	//		TaskID：跑商任务完成
	//
	//****************************************
	
	
		function OnTaskDone(){

		//计算货物价格
		//获得系统各种时间
		//分钟
		$Now_Minute =  GetSystemTime( "minute")
		//小时
		$Now_Hour =  GetSystemTime( "hour" )
		//几号
		$Now_Mday =  GetSystemTime( "mday" )	
		//几月
		$Now_Month =  GetSystemTime( "month" )
		//星期几.0-6
		$Now_Week =  GetSystemTime( "week" )
		//当年的第几天.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		//获得线路编号
		$Line = GetServerLineID()
		
		//每10分钟会变化一次
		$temp_value = $Now_Minute / 3
		
		
		$a = $Now_Hour + $Now_Month
		$b = $Now_Mday + $Now_Week
		
		//随便加个随机数
		$c = 13 * $temp_value
		
		$d = $a * $b
		$e = $b * $c
		$f = $d + $e
		
		$random_number = $f % 5
		//玩家任务可以获得的金钱数值
		
		if $random_number == 0
			$money = 10656
		endif
		if $random_number == 1
			$money = 10952
		endif
		if $random_number == 2
			$money = 11248
		endif
		if $random_number == 3
			$money = 11544
		endif
		if $random_number == 4
			$money = 11840
		endif

		AddPlayerInfo(-1 , "money" ,$money)
		
	}