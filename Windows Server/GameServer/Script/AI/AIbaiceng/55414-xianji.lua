	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:������
	--		Class:	.Lua
	--		AIName:55414-xianji.lua
	--		Remark:��ӢС���׼�
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