	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:������
	--		Class:	.Lua
	--		AIName:zhaobaihu.lua
	--		Remark:�а׻�
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		AI:SummonMonster(24107, 4)
		AI:Exit()
	
end