	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55510-yanwu.lua
	--		Remark:5层隐身怪（黑洞的技能）
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--黑洞技能CD
		AI:SetArray(0,1)
	end
	
	if nIndex == 1 then
		--倒计时自杀
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetTargetDistance()
	b = AI:GetArray(0)
	c = AI:GetArray(1)
	
	if (a <= 2) and (b == 1) then
		AI:AddSkill(2226, 1)
		AI:UseSkill(2226, 1)
		AI:SetArray(0,0)
		AI:SetTimer(0,1500,1)
	end
	
	if c == 0 then
		AI:SetTimer(1,50000,1)
		AI:SetTimer(0,1000,1)
		AI:SetArray(1,1)
	end
	
	mapid = AI:GetMapID()
	Dead1 = AI:GetEctypeVarShort(mapid,3)
	Dead2 = AI:GetEctypeVarShort(mapid,4)
	if Dead1 == 1 and Dead2 ==1 then
		AI:Exit()
	end
	
end