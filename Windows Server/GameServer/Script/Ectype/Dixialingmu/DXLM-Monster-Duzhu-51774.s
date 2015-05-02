	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/07/31
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：轩辕陵关闭机关591的怪物寡妇毒蛛
	//		TaskID：DXLM-Monster-Duzhu-51774.s
	//
	//****************************************

	function OnDead(){
	
	$count = GetEctypeVar(-1, 97)
	$count = $count + 1
	SetEctypeVar(97, $count )
	
}