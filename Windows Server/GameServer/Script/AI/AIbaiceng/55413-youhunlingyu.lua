	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:������
	--		Class:	.Lua
	--		AIName:55413-youhunlingyu.lua
	--		Remark:��ӢС���Ļ�����
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	AI:AddSkill(2426, 1)
	AI:UseSkill(2426, 1)
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end