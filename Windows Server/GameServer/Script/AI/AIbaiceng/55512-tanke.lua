	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55512-tanke.lua
	--		Remark:5层坦克
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--释放技能
		AI:AddSkill(2231, 1)
		AI:UseSkill(2231, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:AddSkill(2231, 1)
		AI:UseSkill(2231, 1)
		AI:SetArray(0,1)
		AI:SetTimer(0,6000,65535)
		AI:PlayAction("Common\\guangquan3\\tx_guangquan3_3.ini", 1, 1)
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
	if R <= 9 then
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