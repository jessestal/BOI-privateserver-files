	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:tona.lua
	--		Remark:??????-????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????
		P = AI:GetRand(2)
		if P == 0 then
			AI:AddSkill(2473, 1)
			AI:UseSkill(2473, 1)
			AI:Say("Super attack!")
		end
	end
	
	if nIndex == 1 then
		--?????1
		P = AI:GetRand(2)
		if P == 0 then
			AI:SetTimer(6,500,4)
			AI:Say("Plasma spray!")
		end
	end
	
	if nIndex == 2 then
		--????
		P = AI:GetRand(2)
		if P == 0 then
			AI:AddSkill(2472, 1)
			AI:UseSkill(2472, 1)
			AI:Say("Sunspot blow up!")
		end
	end
	
	if nIndex == 3 then
		--?????1??
		P = AI:GetRand(2)
		if P == 0 then
			id = AI:GetTargetID()
			Xo = AI:GetPlayerX(id)
			Yo = AI:GetPlayerY(id)
			AI:SummonMonsterByPos(55383, Xo, Yo)
			crossrad = AI:GetRand(2)
			i = 0
			while i < 3 do
				x1 = math.cos(crossrad+i)
				y1 = math.sin(crossrad+i)
				AI:SummonMonsterByPos(55383, Xo + 8*x1, Yo + 8*y1)
				i = i + 1 
			end
			AI:Say("Haha, try the temperature on the surfaces of the Sun!")
		end
	end
	
	if nIndex == 4 then
		--?????2??
		P = AI:GetRand(2)
		if P == 0 then
			id = AI:GetTargetID()
			Xo = AI:GetPlayerX(id)
			Yo = AI:GetPlayerY(id)
			Xi = AI:GetPosX()
			Yi = AI:GetPosY()
			ARad = math.atan2(Yo-Yi,Xo-Xi)
			i = 0
			while i < 10 do
				x0 = math.cos(ARad)
				y0 = math.sin(ARad)
				x1 = math.cos(ARad+0.35)
				y1 = math.sin(ARad+0.35)
				x2 = math.cos(ARad-0.35)
				y2 = math.sin(ARad-0.35)
				AI:SummonMonsterByPos(55383, Xi + 3*i*x0, Yi + 3*i*y0)
				AI:SummonMonsterByPos(55383, Xi + 3*i*x1, Yi + 3*i*y1)
				AI:SummonMonsterByPos(55383, Xi + 3*i*x2, Yi + 3*i*y2)
				i = i + 1
			end
			AI:Say("Sun Roaring!")
		end
	end
	
	if nIndex == 5 then
		--???
		P = AI:GetRand(2)
		if P == 0 then
			AI:AddSkill(2475, 1)
			AI:UseSkill(2475, 1)
			AI:Say("Solar Wind!")
		end
	end
	
	if nIndex == 6 then
		--?????2
			AI:AddSkill(2474, 1)
			AI:UseSkill(2474, 1)
	end
	
	if nIndex == 7 then
		--????
		talk = AI:GetArray(13)
		if talk == 0 then
			AI:Say("What?! A human being?")
			AI:ScreenText("What?! A human being?", 2)
			AI:SetArray(13,talk+1)
		elseif talk == 1 then
			AI:Say("How dare you to interrupt me during the Sacrifice ceremony!")
			AI:ScreenText("How dare you to interrupt me during the Sacrifice ceremony!", 2)
			AI:SetArray(13,talk+1)
		elseif talk == 2 then
			AI:Say("You look delicious! I could use some dessert.")
			AI:ScreenText("You look delicious! I could use some dessert.", 2)
			AI:SetArray(13,talk+1)
		elseif talk == 3 then
			AI:Say("Burn to ashes under the fury of the sun, human being!")
			AI:ScreenText("Burn to ashes under the fury of the sun, human being!", 2)
			AI:SetArray(13,talk+1)
		elseif talk == 4 then
			AI:Say("I'm serious!")
			AI:ScreenText("I'm serious!", 2)
			AI:SetArray(13,talk+1)
		end
	end
	
	if nIndex == 8 then
		--????
		Ttyp = AI:GetTargetCharType()
		if Ttyp == 2 then
			HPMAX = AI:GetHPMax()
			SavedPid = AI:GetArray(11)
			AI:AddCharToEnmityList(SavedPid, HPMAX/3)
			petcheat = AI:GetArray(12)
			petcheat = petcheat + 1
			AI:SetArray(12 ,petcheat)
			if petcheat >= 5 then
				AI:RestoreHPInstant(HPMAX)
				AI:Say("Hahaha! Run, you coward! I'm invincible!")
				AI:ScreenText("Hahaha! Run, you coward! I'm invincible!", 2)
			end
		end
		if Ttyp == 1 then
			petcheat = AI:GetArray(12)
			petcheat = petcheat - 1
			AI:SetArray(12 ,petcheat)
			if petcheat < 0 then
				AI:SetArray(12 ,0)
			end
		end
	end
	
	if nIndex == 9 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
	if nIndex == 10 then
		--??????
		mapid = AI:GetMapID()
		xianjing = AI:GetEctypeVarInteger(mapid,119)
		AI:SetEctypeVarInteger(mapid,119,xianjing + 1)
	end
	
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:Say("Who interrupted me?")
		AI:ScreenText("Who interrupted me?", 2)
		AI:SetTimer(0,5000,65535)
		AI:SetTimer(1,9000,65535)
		AI:SetTimer(2,21000,65535)
		AI:SetTimer(3,14000,65535)
		AI:SetTimer(4,19000,65535)
		AI:SetTimer(5,16000,65535)
		AI:SetTimer(7,15000,5)
		AI:SetTimer(8,10000,65535)
		AI:SetTimer(9,600000,5)
		AI:SetTimer(10,1000,65535)
		AI:SetArray(0,1)
	end
	
	SavedPid = AI:GetArray(11)
	if  SavedPid == 0 then
		AI:GetRandTarget()
		isPornot = AI:GetTargetCharType()
		if isPornot == 1 then
			Targetpid = AI:GetTargetID()
			AI:SetArray(11,Targetpid)
		end
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
		
	AI:Say("Impossible! I curse that you'll never see the sun again!")
	AI:ScreenText("Impossible! I curse that you'll never see the sun again!", 2)
	
	mapid = AI:GetMapID()
	AI:SetEctypeVarShort(mapid,99,1)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:DelTimer(7)
	AI:DelTimer(8)
	AI:DelTimer(9)
	AI:DelTimer(10)
	AI:SetArray(0, 0)
	AI:SetArray(1, 0)
	AI:SetArray(2, 0)
	AI:SetArray(3, 0)
	AI:SetArray(4, 0)
	AI:SetArray(5, 0)
	AI:SetArray(10, 0)
	AI:SetArray(11, 0)
	AI:SetArray(12, 0)
	AI:SetArray(13, 0)
	
end