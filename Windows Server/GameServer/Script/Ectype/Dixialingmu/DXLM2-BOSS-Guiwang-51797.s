	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479BOSS????
	//		TaskID:DXLM2-BOSS-Guiwang-51797.s
	//
	//****************************************
	
	function OnDead(){
	
	$ectype_id = GetEctypeID(-1, 479) 
	OpenMask(7,$ectype_id)
	SetEctypeVar(-1, 30, 2)
	BC( "screen", "map", $ectype_id, "Chiyu's helper, Undead Oni, died in battle. Hurry up and contact the Deity Warrior Taithon in Tranquil and Everluck to open the gate in the front.")
	BC( "chat", "map", $ectype_id, "Chiyu's helper, Undead Oni, died in battle. Hurry up and contact the Deity Warrior Taithon in Tranquil and Everluck to open the gate in the front.")
	
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 57, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 59, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 61, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 63, 1)
	AddMonsterByFloat(51791, 1, $ectype_id, 110, 65, 1)
	
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 67, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 69, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 71, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 73, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 75, 1)
	
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 77, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 79, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 81, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 83, 1)
	AddMonsterByFloat(51791, 2, $ectype_id, 110, 85, 1)

	
}