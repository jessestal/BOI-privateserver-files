	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???1?623JGNPC????
	//		TaskID:DXLM1-JGNPC-Men-623.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
	
		//????,??id 479,???? 44051, ??????? 37-0?1?
		$ectype_id = GetEctypeID(-1, 479)
		$is_item_ex = GetPlayerInfo(-1, "item", 44051)
		$is_open = GetEctypeVar(-1, 37)
		$choice = GetEctypeVar($ectype_id,0)
		
		if $choice != 4
			BC("chat", "player", -1, "Those who have not attained sufficient understanding cannot open the gate!")
			BC("dialogbox", "player", -1, "Those who have not attained sufficient understanding cannot open the gate!")
			return
		endif
		
		if $is_item_ex == 0
			BC("chat", "player", -1, "Those who have not attained sufficient understanding cannot open the gate!")
			BC("screen", "player", -1, "You cannot open Nirvana's Gateway without Nirvana's Mirror.")
			return
		endif
		
		$revaluet = SubPlayerInfo(-1, "item", 44051, 1)
		if $revaluet != 0
			BC("screen", "player", -1, "You cannot open Nirvana's Gateway without Nirvana's Mirror.")
			return
		endif
		
		//??
		$is_door = OpenMask(11, $ectype_id)
		if $is_door != 0
			return
		endif		
		//????37, ?? ????NPC 622
		SetEctypeVar(-1, 37, 1)
		BC("screen", "map", $ectype_id, "Nirvana Gateway is open. You can enter the Prayer Altar now.")
		AddNPC(622, $ectype_id)
		AddMonsterByFloat(51796, 1, $ectype_id, 288, 232,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 288, 237,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 290, 231,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 290, 238,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 289, 232,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 289, 237,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 291, 231,0)
		AddMonsterByFloat(51796, 1, $ectype_id, 291, 238,0)
		//??NPC
		DeleteNPC(623, $ectype_id)
		
	}