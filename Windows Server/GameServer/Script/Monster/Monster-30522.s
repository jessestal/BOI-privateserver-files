	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/03/22
	//		Author：朱建臣
	//		TaskName：Monster-30522.s
	//		TaskID：
	//
	//****************************************
	
	//副本变量1：记录30521的死亡数量
	//副本变量2：记录30522的死亡数量

	
		function OnDead(){
			
			
			$ectype_ID = GetEctypeID(-1,539)
			$a = GetEctypeVar($ectype_ID,2)
			$a = $a + 1
			SetEctypeVar($ectype_ID,2,$a)
		
			if $a == 8
				DeleteMonster($ectype_ID,30528)
				DeleteMonster($ectype_ID,30529)
				AddMonsterByFloat( 30529,1,$ectype_ID,165,181,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,164,193,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,165,197,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,170,199,0)
				AddMonsterByFloat( 30523,2,$ectype_ID,160,199,1)
				AddMonsterByFloat( 30523,1,$ectype_ID,151,196,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,149,200,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,145,196,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,163,184,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,165,176,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,156,178,0)
				AddMonsterByFloat( 30523,2,$ectype_ID,163,184,1)
				AddMonsterByFloat( 30523,1,$ectype_ID,151,185,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,144,187,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,154,187,0)
				AddMonsterByFloat( 30523,1,$ectype_ID,163,168,0)
			endif
			
		}
			