	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55334-lightingAI.lua
	--		Remark:????
	----------------------------------------------------
	
	--????99:????
	--????98:????
	--????97,96:Boss??
	--????95:???Buff??
	--????94:??????
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??????
		mapid = AI:GetMapID()
		kuangbaolv = AI:GetEctypeVarShort(mapid,99)
		AI:SetEctypeVarShort(mapid,99,kuangbaolv+1)
	end
	
	if nIndex == 1 then
		--???
		mapid = AI:GetMapID()
		isalive = AI:GetEctypeVarShort(mapid,98)
		if isalive == 2 then
			fuhuo = AI:GetRand(1)
			if fuhuo == 0 then
				Bufflv = AI:GetEctypeVarShort(mapid,95)
				if Bufflv == 0 or Bufflv == 3 then
					AI:SummonMonster(55331,1)
					AI:SetEctypeVarShort(mapid,98,3)
				elseif Bufflv == 1 then
					AI:SummonMonster(55332,1)
					AI:SetEctypeVarShort(mapid,98,3)
				elseif Bufflv == 2 then
					AI:SummonMonster(55333,1)
					AI:SetEctypeVarShort(mapid,98,3)
				end
			else
				AI:SummonMonster(55337,1)
				AI:SummonMonster(55338,1)
				AI:SummonMonster(55339,1)
			end
		elseif isalive == 1 then
			AI:SetEctypeVarShort(mapid,98,2)
			AI:SummonMonster(55337,1)
			AI:SummonMonster(55338,1)
			AI:SummonMonster(55339,1)
		end
		shandian = AI:GetRand(5)
		if shandian == 0 then
			AI:SetTimer(2,5000,1)
		elseif shandian == 1 then
			AI:SetTimer(3,5000,1)
		elseif shandian == 2 then
			AI:SetTimer(4,5000,1)
		elseif shandian == 3 then
			AI:SetTimer(5,5000,1)
		elseif shandian == 4 then
			AI:SetTimer(6,5000,1)
		elseif shandian == 5 then
			AI:SetTimer(7,5000,1)
		end
	end
	
	if nIndex == 2 then
		--??????
		mapid = AI:GetMapID()
		AI:ScreenText("The Wrath of the Sky spreads!", 2)
		AI:SetTimer(9,9500,1)
		AI:SetEctypeVarShort(mapid,94,1)
		isalive = AI:GetEctypeVarShort(mapid,98)
		if isalive == 0 then
			x = AI:GetEctypeVarShort(mapid,96)
			y = AI:GetEctypeVarShort(mapid,97)
			AI:SummonMonsterByPos(55335, x+2, y+2)
			AI:SummonMonsterByPos(55335, x+2, y)
			AI:SummonMonsterByPos(55335, x+2, y-2)
			AI:SummonMonsterByPos(55335, x, y+2)
			AI:SummonMonsterByPos(55335, x, y)
			AI:SummonMonsterByPos(55335, x, y-2)
			AI:SummonMonsterByPos(55335, x-2, y+2)
			AI:SummonMonsterByPos(55335, x-2, y)
			AI:SummonMonsterByPos(55335, x-2, y-2)
		else
			AI:SetTimer(8,200,18)
		end
	end
	
	if nIndex == 3 then
		--????(?)??
		AI:ScreenText("The Wrath of the Sky roars!", 2)
		AI:SetTimer(10,1000,9)
	end
	
	if nIndex == 4 then
		--????(?)??
		isalive = AI:GetEctypeVarShort(mapid,98)
		if isalive == 0 then
			AI:ScreenText("The Wrath of the Sky befalls!", 2)
			local x = AI:GetEctypeVarShort(mapid,96)
			local y = AI:GetEctypeVarShort(mapid,97)
			AI:SetArray(3,x)
			AI:SetArray(4,y)
			AI:SetTimer(12,1000,6)
		end
	end
	
	if nIndex == 5 then
		--??????
		isalive = AI:GetEctypeVarShort(mapid,98)
		if isalive ~= 0 then
			AI:ScreenText("The Wrath of the Sky devours!", 2)
			SavedPid = AI:GetArray(14)
			local x = AI:GetPlayerX(SavedPid)
			local y = AI:GetPlayerY(SavedPid)
			AI:SetArray(6,x)
			AI:SetArray(7,y)
			local plus = AI:GetRand(628)
			AI:SetArray(8,plus)
			AI:SetTimer(13,1000,5)
		end
	end
	
	if nIndex == 6 then
		--??????
		AI:ScreenText("The Wrath of the Sky sweeps!", 2)
		AI:SetTimer(14,1000,9)
	end
	
	if nIndex == 7 then
		--??????
		AI:ScreenText("The Wrath of the Sky splits!", 2)
		local plus = AI:GetRand(628)
		AI:SetArray(12,plus)
		AI:SetTimer(15,1000,12)
	end
	
	if nIndex == 8 then
		--??????
		I = AI:GetRand(1)
		if I == 0 then
			r = AI:GetRand(628)
			l = AI:GetRand(12)
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+174, math.cos(r/100)*l+136)
		else
			r = AI:GetRand(628)
			l = AI:GetRand(6)
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+194, math.cos(r/100)*l+135)
		end
	end
	
	if nIndex == 9 then
		--??????
		AI:SetEctypeVarShort(mapid,94,0)
	end
	
	if nIndex == 10 then
		--????(?)
		local b = AI:GetArray(1)
		local c = 0
		while c < (b+1)*2 do
			local r = 628/(b+1)/2*c
			local l = b * 2
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+174, math.cos(r/100)*l+136)
			c = c+1
		end
		if b == 8 then
			AI:SetArray(1,0)
		else
			AI:SetArray(1,b+1)
		end
	end
	
	if nIndex == 12 then
		--????(?)??
		local x = AI:GetArray(3)
		local y = AI:GetArray(4)
		local b = AI:GetArray(5)
		local c = 0
		while c < (b+1)*2 do
			local r = 628/(b+1)/2*c
			local l = b * 2
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+x, math.cos(r/100)*l+y)
			c = c+1
		end
		if b == 5 then
			AI:SetArray(5,0)
		else
			AI:SetArray(5,b+1)
		end
	end
	
	if nIndex == 13 then
		--??????
		local x = AI:GetArray(6)
		local y = AI:GetArray(7)
		local plus = AI:GetArray(8)
		local b = AI:GetArray(9)
		local c = 0
		while c < (7-b)*2 do
			local r = 550/(7-b)/2*c + plus
			local l = (6 - b) * 2
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+x, math.cos(r/100)*l+y)
			c = c+1
		end
		if b == 4 then
			AI:SetArray(9,0)
		else
			AI:SetArray(9,b+1)
		end
	end
	
	if nIndex == 14 then
		--??????
		local b = AI:GetArray(10)
		local c = 0
		while c < 12 do
			local r = 314/9*b
			local l = c * 2
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+174, math.cos(r/100)*l+136)
			AI:SummonMonsterByPos(55335, math.sin((r+209)/100)*l+174, math.cos((r+209)/100)*l+136)
			AI:SummonMonsterByPos(55335, math.sin((r+419)/100)*l+174, math.cos((r+419)/100)*l+136)
			c = c+1
		end
		if b == 8 then
			AI:SetArray(10,0)
		else
			AI:SetArray(10,b+1)
		end
	end
	
	if nIndex == 15 then
		--??????
		local b = AI:GetArray(11)
		local plus = AI:GetArray(12)
		local c = 0
		while c < 8 do
			local r = 628/8*c + plus
			local l = b * 2
			AI:SummonMonsterByPos(55335, math.sin(r/100)*l+174, math.cos(r/100)*l+136)
			c = c+1
		end
		if b == 11 then
			AI:SetArray(11,0)
		else
			AI:SetArray(11,b+1)
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	
	if a == 0 then
		AI:SetTimer(0,500000,5)
		Bufflv = AI:GetEctypeVarShort(mapid,95)
		if Bufflv == 3 then
			AI:SetTimer(1,10000,65535)
		else
			AI:SetTimer(1,20000,65535)
		end
		AI:SetArray(0 ,1)
	end
	
	SavedPid = AI:GetArray(14)
	if  SavedPid == 0 then
		AI:GetRandTarget()
		isPornot = AI:GetTargetCharType()
		if isPornot == 1 then
			Targetpid = AI:GetTargetID()
			AI:SetArray(14,Targetpid)
		end
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
end