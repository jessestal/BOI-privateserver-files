	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:’≈Œƒ”Ó
	--		Class:.Lua
	--		AIName:55516-guangyaobaofa.lua
	--		Remark:30≤„≈–∂œ1
	----------------------------------------------------
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	a = AI:GetEctypeVarShort(mapid, 97)
	b = AI:GetEctypeVarShort(mapid, 98)
	c = AI:GetEctypeVarShort(mapid, 99)
	d = AI:GetArray(0)
	
	if d == 0 then
	
		if a == 1 and b == 3 and c == 3 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,91)
			y = AI:GetEctypeVarShort(mapid,92)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 3 and b == 1 and c == 3 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,93)
			y = AI:GetEctypeVarShort(mapid,94)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 3 and b == 3 and c == 1 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,95)
			y = AI:GetEctypeVarShort(mapid,96)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 1 and b == 1 and c == 3 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,91)
			y = AI:GetEctypeVarShort(mapid,92)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 3 and b == 1 and c == 1 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,95)
			y = AI:GetEctypeVarShort(mapid,96)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 1 and b == 3 and c == 1 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,95)
			y = AI:GetEctypeVarShort(mapid,96)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 1 and b == 1 and c == 1 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,95)
			y = AI:GetEctypeVarShort(mapid,96)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
	
		if a == 3 and b == 3 and c == 3 then
			mapid = AI:GetMapID()
			x = AI:GetEctypeVarShort(mapid,95)
			y = AI:GetEctypeVarShort(mapid,96)
			AI:SummonMonsterByPos(55517 ,x ,y)
			AI:SetArray(0,1)
			AI:Exit()
		end
		
	end
	
end