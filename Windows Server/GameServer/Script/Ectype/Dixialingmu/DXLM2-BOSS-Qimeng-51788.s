	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/07/31
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：轩辕陵BOSS绮梦
	//		TaskID：DXLM2-BOSS-Qimeng-51788.s
	//
	//****************************************

	function OnDead(){
		
	//获取副本难度，根据难度奖励经验和物品，刷出怪物,增加NPC
	$dif = GetEctypeVar(-1, 99 )
	
	AddNPC( -1, 689)
	AddNPC( -1, 584)

	//单人模式下奖励经验，物品和怪物
	if $dif == 1
	//奖励玩家经验	
//	AddPlayerInfo(-1, )
	
	//判断任务栏物品数

	//给予玩家道具 天灵石（单人）
//	AddPlayerInfo(-1, "item",  , 1)

	
	//刷出怪物，红黄蓝绿幽灵各9个
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)		
	AddMonsterByFloat( 51779, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51780, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51781, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)
	AddMonsterByFloat( 51782, 3, -1, 82, 232, 3)

		
	endif
	
	//多人模式下奖励经验，物品，刷出怪物
	
	
	if $dif == 2
	//奖励玩家经验	
	
	//给予玩家道具 天灵石（多人）
	//判断任务栏物品数
	
	//刷出怪物，红黄蓝绿幽灵各15个
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51781, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51780, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51782, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
	AddMonsterByFloat( 51779, 5, -1, 82, 232, 5)
		
	}