	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:������
	--		Class:	.Lua
	--		AIName:55412-huolongtuxi.lua
	--		Remark:��ӢС�ӻ�����Ϣ
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	AI:AddSkill(2425, 1)
	AI:UseSkill(2425, 1)
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end