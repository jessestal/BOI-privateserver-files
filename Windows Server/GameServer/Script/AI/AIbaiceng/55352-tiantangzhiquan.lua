	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55352-tiantangzhiquan.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??????
		zheng = AI:GetRand(20)
		if zheng == 0 then
			SpawnA(nAI)
		end
	end
	
	if nIndex == 1 then
		--??
		AI:Say("The Heavenly Circle is vanishing. We must restore it!")
		AI:SetEctypeVarShort(mapid,93,6)
		AI:Exit()
	end
	
	if nIndex == 2 then
		--??
		AI:Say("The Heavenly Circle is vanishing. We must restore it!")
		AI:SetEctypeVarShort(mapid,93,6)
		AI:Exit()
	end
	
	if nIndex == 3 then
		--??
		AI:Say("The Heavenly Circle is vanishing. We must restore it!")
		AI:SetEctypeVarShort(mapid,93,6)
		AI:Exit()
	end
	
	if nIndex == 4 then
		--??
		AI:Say("The Heavenly Circle is vanishing. We must restore it!")
		AI:SetEctypeVarShort(mapid,93,6)
		AI:Exit()
	end
	
	if nIndex == 5 then
		--??
		AI:Say("The Heavenly Circle is vanishing. We must restore it!")
		AI:SetEctypeVarShort(mapid,93,6)
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	start = AI:GetEctypeVarShort(mapid,93)
	
	if a == 0 and start == 0 then
		AI:Say("Restore the Heavenly Circle!")
		AI:PlayAction("skill\\Knight\\wudi\\keep\\tx_knight_wudi_keep.ini",1,1)
		SpawnA(nAI)
		AI:SetTimer(0,3000,65535)
		AI:SetArray(0 ,1)
	end
	
	if a == 1 and start == 1 then
		AI:SetTimer(1,150000,1)
		AI:SetArray(0 ,2)
	end
	
	if a == 2 and start == 2 then
		AI:SetTimer(2,120000,1)
		AI:SetArray(0 ,3)
	end
	
	if a == 3 and start == 3 then
		AI:SetTimer(3,90000,1)
		AI:SetArray(0 ,4)
	end
	
	if a == 4 and start == 4 then
		AI:SetTimer(4,60000,1)
		AI:SetArray(0 ,5)
	end
	
	if a == 5 and start == 5 then
		AI:SetTimer(5,30000,1)
		AI:SetArray(0 ,6)
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	start = AI:GetEctypeVarShort(mapid,93)
	AI:SetEctypeVarShort(mapid,93,start+1)
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:SetArray(0, 0)
	
end
	
function SpawnA(nAI)
	local AI = GetMonsterAI(nAI)
	
	local plus = AI:GetRand(1)
	local randt = AI:GetRand(5)
	local b = 0
	local weizhi = AI:GetRand(23)
	local round = 628/24*weizhi
	mapid = AI:GetMapID()
	
	if plus == 0 then
		while b<6 do
			local r = randt + b
			local p = r % 6
			local n = AI:GetEctypeVarShort(mapid,99-p)
			if n <6 then
				AI:SummonMonsterByPos(55353+p, math.sin(round/100)*12+174, math.cos(round/100)*12+136)
				AI:PlayAction("common\\story\\lightpillar\\fire\\tx_lightpillar_fire.ini",1,1)
				return
			end
			b = b+1
		end
	else
		while b<6 do
			local r = randt + b
			local p = r % 6
			local n = AI:GetEctypeVarShort(mapid,94+p)
			if n <6 then
				AI:SummonMonsterByPos(55358-p, math.sin(round/100)*12+174, math.cos(round/100)*12+136)
				AI:PlayAction("common\\story\\lightpillar\\fire\\tx_lightpillar_fire.ini",1,1)
				return
			end
			b = b+1
		end
	end
		
end