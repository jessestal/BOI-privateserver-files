	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:55414-xianji.lua
	--		Remark:精英小队献祭
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	AI:AddSkill(2428, 1)
	AI:UseSkill(2428, 1)
	AI:Exit()
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end