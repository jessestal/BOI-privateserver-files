	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:уендсН
	--		Class:	.Lua
	--		AIName:zhaobaihu.lua
	--		Remark:уп╟в╩╒
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		AI:SummonMonster(24107, 4)
		AI:Exit()
	
end