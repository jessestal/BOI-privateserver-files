	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:’≈Œƒ”Ó
	--		Class:	.Lua
	--		AIName:zhaozhuque.lua
	--		Remark:’–÷Ï»∏
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		AI:SummonMonster(24105, 4)
		AI:Exit()
	
end