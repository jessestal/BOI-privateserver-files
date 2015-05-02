	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/03/22
	//		Author：朱建臣
	//		TaskName：Monster-30523.s
	//		TaskID：
	//
	//****************************************
	
	//副本变量1：记录30521的死亡数量
	//副本变量3：记录30523的死亡数量
	
		function OnDead(){
			
			$ectype_ID = GetEctypeID(-1,539)
			$a = GetEctypeVar($ectype_ID,3)
			$a = $a + 1
			
			SetEctypeVar($ectype_ID,3,$a)
			if $a == 15
				DeleteMonster($ectype_ID,30529)
			endif
			
		}
			