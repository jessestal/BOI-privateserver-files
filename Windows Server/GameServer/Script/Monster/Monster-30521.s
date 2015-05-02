	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/03/22
	//		Author：朱建臣
	//		TaskName：Monster-30521.s
	//		TaskID：
	//
	//****************************************
	
	//副本变量1：记录30521的死亡数量

	
		function OnDead(){
			
			$ectype_ID = GetEctypeID(-1,539)
			$a = GetEctypeVar($ectype_ID,1)
			$a = $a + 1
			SetEctypeVar($ectype_ID,1,$a)
			
			if $a == 10
				DeleteMonster($ectype_ID,30526)
				DeleteMonster($ectype_ID,30528)
				AddMonsterByFloat( 30528,1,$ectype_ID,152,213,0)
				AddMonsterByFloat( 30522,1,$ectype_ID,158,210,0)
				AddMonsterByFloat( 30522,1,$ectype_ID,150,220,0)
				AddMonsterByFloat( 30522,2,$ectype_ID,153,226,1)
				AddMonsterByFloat( 30522,1,$ectype_ID,157,220,0)
				AddMonsterByFloat( 30522,1,$ectype_ID,160,232,0)
				AddMonsterByFloat( 30522,1,$ectype_ID,153,232,1)
				AddMonsterByFloat( 30522,1,$ectype_ID,163,207,0)
				AddMonsterByFloat( 30522,1,$ectype_ID,170,206,0)
			endif
			
		}
			
			