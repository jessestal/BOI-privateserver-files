	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55506-cike.lua
	--		Remark:5层刺客
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--加速技能CD
		AI:SetArray(0,0)
	end
	
	if nIndex == 1 then
		--刺杀技能CD
		AI:SetArray(1,0)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetTargetDistance()
	b = AI:GetArray(0)
	c = AI:GetArray(1)
	
	if (a <= 7) and (b == 0) then
		AI:AddSkill(2224, 1)
		AI:UseSkill(2224, 1)
		AI:SetArray(0,1)
		AI:SetTimer(0,20000,1)
	end
	
	if (a <= 3) and (c == 0) then
		AI:AddSkill(2225, 1)
		AI:UseSkill(2225, 1)
		AI:SetArray(1,1)
		AI:SetTimer(1,30000,1)
	end
	
	mapid = AI:GetMapID()
	Dead1 = AI:GetEctypeVarShort(mapid,3)
	Dead2 = AI:GetEctypeVarShort(mapid,4)
	if Dead1 == 1 and Dead2 ==1 then
		AI:Exit()
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	R = AI:GetRand(99)
	n = AI:GetPosX()
	m = AI:GetPosY()
	if R <= 1 then
		AI:SummonMonsterByPos(55515, n, m)
	end
	
	map = AI:GetMapID()
	
	x = AI:GetEctypeVarShort(map, 1)
	y = AI:GetEctypeVarShort(map, 2)
	x = x + 1
	AI:SetEctypeVarShort(map, 1, x)
	x1 = AI:GetEctypeVarShort(map, 5)
	x2 = AI:GetEctypeVarShort(map, 6)
	
		if x >= x1 then
			AI:SetEctypeVarShort(map, 3, 1)
			AI:SetEctypeVarShort(map, 4, 1)
		end
end