	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:?????NPC??
	//		TaskID:DXLM-NPC-Xiaoxiao-582.s
	//
	//****************************************

	function OnRequest(){
	
		$ectype_id = GetEctypeID(-1, 478)
		$is = GetEctypeVar(-1, 93)
		if $is != 0
			DisableNpcOption(0)
			BC( "screen", "map", $ectype_id, "Just kill the spiders here, the seal will automatically absorb their power. Use the seal to enter the ethereal once it is activated.") 
		endif
			
		}	
	
	function OnOption0(){

		$ectype_id = GetEctypeID(-1, 478)
		$is = GetEctypeVar(-1, 93)
		if $is != 0
			return
		endif
		
		//??NPC????591
		$revaluet = AddNPC(591 , $ectype_id)	
		BC( "screen", "map", $ectype_id, "Just kill the spiders here, the seal will automatically absorb their power. Use the seal to enter the ethereal once it is activated.")
	
		//????? 6*2 + 8 + 10 ?30? ?25?????
		AddMonster(	51774, 2, $ectype_id, 76, 68, 1)
		AddMonster(	51774, 2, $ectype_id, 74, 67, 1)
		AddMonster(	51774, 2, $ectype_id, 78, 67, 1)
		AddMonster(	51774, 2, $ectype_id, 75, 66, 1)
		AddMonster(	51774, 2, $ectype_id, 77, 69, 1)
		AddMonster(	51774, 2, $ectype_id, 76, 64, 1)
		
		AddMonsterByFloat(	51774, 1, $ectype_id, 200, 158, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 200, 164, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 194, 156, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 194, 152, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 188, 158, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 188, 160, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 188, 162, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 188, 164, 0)
		
		AddMonsterByFloat(	51774, 1, $ectype_id, 185, 194, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 186, 195, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 188, 197, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 190, 198, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 196, 198, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 197, 194, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 194, 200, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 204, 194, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 202, 192, 0)
		AddMonsterByFloat(	51774, 1, $ectype_id, 202, 193, 0)

			SetEctypeVar(-1, 93, 1)
			
	}				
