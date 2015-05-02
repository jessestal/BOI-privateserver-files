	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55508-zibao.lua
	--		Remark:5层自爆
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--释放技能自爆+召唤
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos(55505, x, y)
		AI:SummonMonsterByPos(55502, x+1, y+1)
		AI:SummonMonsterByPos(55502, x+1, y)
		AI:SummonMonsterByPos(55502, x+1, y-1)
		AI:SummonMonsterByPos(55502, x, y+1)
		AI:SummonMonsterByPos(55502, x, y-1)
		AI:SummonMonsterByPos(55502, x-1, y+1)
		AI:SummonMonsterByPos(55502, x-1, y)
		AI:SummonMonsterByPos(55502, x-1, y-1)
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetTargetDistance()
	b = AI:GetArray(0)
	
	if (a <= 3) and (b == 0) then
		AI:SetAIState( 7 )
		AI:SetArray(0,1)
		AI:AddSkill(2227, 1)
		AI:UseSkill(2227, 1)
		AI:SetTimer(0,500,1)
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
	if R <= 2 then
		AI:SummonMonsterByPos(55515, n, m)
	end
	
	map = AI:GetMapID()
	
	x = AI:GetEctypeVarShort(map, 1)
	y = AI:GetEctypeVarShort(map, 2)
	x = x + 9
	AI:SetEctypeVarShort(map, 1, x)
	x1 = AI:GetEctypeVarShort(map, 5)
	x2 = AI:GetEctypeVarShort(map, 6)
	
		if x >= x1 then
			AI:SetEctypeVarShort(map, 3, 1)
			AI:SetEctypeVarShort(map, 4, 1)
		end
	
end