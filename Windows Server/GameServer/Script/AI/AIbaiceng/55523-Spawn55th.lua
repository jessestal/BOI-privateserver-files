	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/22
	--		Author:张文宇
	--		Class:	55thSpawn.Lua
	--		AIName:.lua
	--		Remark:55层刷新怪物
	----------------------------------------------------

	--假定地图坐标为48-95
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--波数计算，每20秒一波记录在99号副本变量里
		local mapid = AI:GetMapID()
		local a = AI:GetEctypeVarShort(mapid, 99)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if nIndex == 1 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55502, x+48, y+48)
	end
	
	if nIndex == 2 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55503, x+48, y+48)
	end
	
	if nIndex == 3 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55504, x+48, y+48)
	end
	
	if nIndex == 4 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55505, x+48, y+48)
	end
	
	if nIndex == 5 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55506, x+48, y+48)
	end
	
	if nIndex == 6 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55507, x+48, y+48)
	end
	
	if nIndex == 7 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55508, x+48, y+48)
	end
	
	if nIndex == 8 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55509, x+48, y+48)
	end
	
	if nIndex == 9 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55510, x+48, y+48)
	end
	
	if nIndex == 10 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55511, x+48, y+48)
	end
	
	if nIndex == 11 then
		local x == AI:GetRand(47)
		local y == AI:GetRand(47)
		AI:SummonMonsterByPos(55512, x+48, y+48)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	local mapid = AI:GetMapID()
	local a = AI:GetEctypeVarShort(mapid, 99)
	
	if a == 0 then
		AI:SetEctypeVarShort(mapid, 99, 1)
		AI:SetTimer(0,20000,65535)
	end
	
	if a == 1 then
		AI:SetTimer(1,200,20)
		AI:SetTimer(2,200,6)
		AI:SetTimer(4,200,4)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 2 then
		AI:SetTimer(1,200,17)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 3 then
		AI:SetTimer(1,200,27)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 4 then
		AI:SetTimer(1,200,25)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,1)
		AI:SetTimer(8,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 5 then
		AI:SetTimer(1,200,25)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,1)
		AI:SetTimer(9,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 6 then
		AI:SetTimer(1,200,24)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 7 then
		AI:SetTimer(1,200,34)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,1)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 8 then
		AI:SetTimer(1,200,33)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 9 then
		AI:SetTimer(1,200,32)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,1)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 10 then
		AI:SetTimer(1,200,31)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,2)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 11 then
		AI:SetTimer(1,200,31)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,2)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 12 then
		AI:SetTimer(1,200,31)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,3)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,1)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,2)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 13 then
		AI:SetTimer(1,200,39)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,2)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,2)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,2)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 14 then
		AI:SetTimer(1,200,37)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,3)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,3)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,2)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 15 then
		AI:SetTimer(1,200,36)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,3)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,3)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,3)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 16 then
		AI:SetTimer(1,200,36)
		AI:SetTimer(2,200,5)
		AI:SetTimer(3,200,3)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,2)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,3)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,3)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
		
	if a == 17 then
		AI:SetTimer(1,200,43)
		AI:SetTimer(2,200,3)
		AI:SetTimer(3,200,4)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,3)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,4)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,4)
		AI:SetTimer(10,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
			
	if a == 18 then
		AI:SetTimer(1,200,40)
		AI:SetTimer(2,200,3)
		AI:SetTimer(3,200,7)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,3)
		AI:SetTimer(6,200,2)
		AI:SetTimer(7,200,4)
		AI:SetTimer(8,200,1)
		AI:SetTimer(9,200,4)
		AI:SetTimer(10,200,1)
		AI:SetTimer(11,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
			
	if a == 19 then
		AI:SetTimer(1,200,43)
		AI:SetTimer(3,200,10)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,3)
		AI:SetTimer(6,200,3)
		AI:SetTimer(7,200,4)
		AI:SetTimer(8,200,1)
		AI:SetTimer(10,200,1)
		AI:SetTimer(11,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
			
	if a == 20 then
		AI:SetTimer(1,200,41)
		AI:SetTimer(3,200,20)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,4)
		AI:SetTimer(6,200,4)
		AI:SetTimer(7,200,4)
		AI:SetTimer(8,200,1)
		AI:SetTimer(10,200,1)
		AI:SetTimer(11,200,1)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
			
	if a == 21 then
		AI:SetTimer(1,200,39)
		AI:SetTimer(3,200,20)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,4)
		AI:SetTimer(6,200,4)
		AI:SetTimer(7,200,5)
		AI:SetTimer(8,200,1)
		AI:SetTimer(10,200,1)
		AI:SetTimer(11,200,2)
		AI:ScreenText(“艾尔萨斯的守护者发动了第” .. a .. “波攻击！”, 2)
	end
	
	if a == 22 then
		AI:SetTimer(1,200,37)
		AI:SetTimer(3,200,20)
		AI:SetTimer(4,200,4)
		AI:SetTimer(5,200,4)
		AI:SetTimer(6,200,4)
		AI:SetTimer(7,200,6)
		AI:SetTimer(8,200,1)
		AI:SetTimer(10,200,1)
		AI:SetTimer(11,200,3)
		AI:ScreenText(“艾尔萨斯的守护者发动了最后的攻击！”, 2)
	end
		
	if a == 23 then
		AI:Exit()
	end
	
end

--在20波出现的时候召唤光柱