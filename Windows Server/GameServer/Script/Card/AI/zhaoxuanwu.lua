	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:������
	--		Class:	.Lua
	--		AIName:zhaoxuanwu.lua
	--		Remark:������
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		AI:SummonMonster(24108, 4)
		AI:Exit()
	
end