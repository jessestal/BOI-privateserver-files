	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/08/04
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：轩辕陵479蚩尤线路传送NPC陵墓出口
	//		TaskID：DXLM2-CSNPC-Chukou-588.s
	//
	//****************************************
	
	On Request(){
		
	$n = GetEctypeVar(-1, 35)
	if $n != 2
		DisableNpcOption(0)
	endif

}

	On Option0(){
	FlyToMap(-1, 119, 100, 50, 1)

}