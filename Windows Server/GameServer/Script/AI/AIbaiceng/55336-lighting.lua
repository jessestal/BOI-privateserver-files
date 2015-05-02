	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:������
	--		Class:	.Lua
	--		AIName:55336-lighting.lua
	--		Remark:����
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--����
		AI:UseSkill(2293, 1)
	end
	
	if nIndex == 1 then
		--��ʧ
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	
	if a == 0 then
		AI:AddSkill(2293, 1)
		AI:UseSkill(2293, 1)
		AI:SetTimer(0,500,3)
		AI:SetTimer(1,1500,1)
		AI:SetArray(0 ,1)
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end