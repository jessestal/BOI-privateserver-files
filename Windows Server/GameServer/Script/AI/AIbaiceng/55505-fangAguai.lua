	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:’≈Œƒ”Ó
	--		Class:.Lua
	--		AIName:55505-fangAguai.lua
	--		Remark:5≤„∑¿÷πaoeµƒπ÷
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
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