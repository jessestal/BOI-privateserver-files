	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55319-LordOfIceAndFire.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--?????????
		id = AI:GetTargetID()
		Xo = AI:GetPlayerX(id)
		Yo = AI:GetPlayerY(id)
		
		P = AI:GetRand(1)
		if P == 0 then
			AI:SummonMonsterByPos(55317, Xo, Yo)
		else
			AI:SummonMonsterByPos(55318, Xo, Yo)
		end
	
	end
	
	if nIndex == 1 then
		--????????
		AI:Say("The elements become my shield!")
		AI:AddSkill(2205, 1)
		AI:UseSkill(2205, 1)
	end
	
	if nIndex == 2 then
		--????????
		AI:Say("Winter Roars! Respond to me, the Spirit of Ice!")
		AI:AddSkill(2206, 1)
		AI:UseSkill(2206, 1)
		AI:SetTimer(3,200,6)
		AI:AddSkill(2277,4)
		AI:UseSkill(2277,4)
	end
	
	if nIndex == 3 then
		--??????????
		X1 = AI:GetRand(50)
		X2 = X1 + 128
		Y1 = AI:GetRand(50)
		Y2 = Y1 + 131
		AI:SummonMonsterByPos(55320, X2, Y2)
	end
	
	if nIndex == 4 then
		--????CD
		AI:SetTimer(5, 2000, 4)
	end
	
	if nIndex == 5 then
		--???
		D = AI:GetArray(1)
		if D >= 3 then
			AI:ScreenText("Hellfire!", 2)
			AI:Say("Hellfire!")
			AI:AddSkill(2205, 2)
			AI:UseSkill(2205, 2)
			AI:SetTimer(6,1500,4)
			AI:SetArray(1, 0)
		else
			AI:SetArray(1,D+1)
			AI:ScreenText("Destruction will occur in " .. tostring(3-D) .. " sec."  , 2)
		end
	end
	
	if nIndex == 6 then
		--????????
		M = AI:GetArray(2)
		AI:SetTimer( M+8 ,500,3)
		AI:SetArray(2, M+1)
		if M == 4 then
			AI:SetArray(2, 0)
		end
	end
	
	if nIndex == 8 then
		--????1?
		AI:AddSkill(2207, 1)
		AI:UseSkill(2207, 1)
	end
	
	if nIndex == 9 then
		--????2?
		AI:AddSkill(2207, 2)
		AI:UseSkill(2207, 2)
	end
	
	if nIndex == 10 then
		--????3?
		AI:AddSkill(2207, 3)
		AI:UseSkill(2207, 3)
	end
	
	if nIndex == 11 then
		--????4?
		AI:AddSkill(2207, 4)
		AI:UseSkill(2207, 4)
	end
	
	if nIndex == 12 then
		--??1
		AI:AddSkill(2278,1)
		AI:UseSkill(2278,1)
	end
	
	if nIndex == 13 then
		--??2
		AI:AddSkill(2278,2)
		AI:UseSkill(2278,2)
	end
	
	if nIndex == 14 then
		--??3
		AI:AddSkill(2278,3)
		AI:UseSkill(2278,3)
	end
	
	if nIndex == 15 then
		--??4
		AI:AddSkill(2278,4)
		AI:UseSkill(2278,4)
	end
	
	if nIndex == 17 then
		--??5
		AI:AddSkill(2278,5)
		AI:UseSkill(2278,5)
	end
	
	if nIndex == 16 then
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
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	t = AI:HaveAttackTarget()
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	
	if a > 0 then
		Memory = AI:GetEctypeVarInteger(mapid,110)
		if HP > Memory then
			AI:LoseHPInstant( HP - Memory )
		else
			AI:SetEctypeVarInteger(mapid,110,HP)
		end
	end
	
	if a == 0 then
		if HP < HPMAX then
			AI:Say("How dare you approach me!")
			AI:Say("May the blizzards and firestorms herald the Apocalypse!")
			AI:ScreenText("May the blizzards and firestorms herald the Apocalypse!", 2)
			AI:PlayAction("common\\daxue\\tx_daxue.ini",1,1)
			AI:SetTimer(0,5000,65535)
			AI:AddSkill(2205, 1)
			AI:UseSkill(2205, 1)
			AI:SetTimer(1,45000,65535)
			AI:SetTimer(2,20000,65535)
			AI:SetTimer(4,45000,65535)
			AI:SetTimer(12,300000,1)
			AI:SetTimer(13,600000,1)
			AI:SetTimer(14,900000,1)
			AI:SetTimer(15,1200000,1)
			AI:SetTimer(17,1500000,1)
			AI:SetTimer(16,10000,65535)
			AI:SetEctypeVarInteger(mapid,110,HP)
			AI:SetArray(0 ,1)
		end
	end
		
	if HP < HPMAX*0.92 then
		if a == 1 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,2)
		end
	end
		
	if HP < HPMAX*0.9 then
		if a == 2 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,3)
		end
	end
		
	if HP < HPMAX*0.82 then
		if a == 3 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,4)
		end
	end
		
	if HP < HPMAX*0.8 then
		if a == 4 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,5)
		end
	end
		
	if HP < HPMAX*0.72 then
		if a == 5 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,6)
		end
	end
		
	if HP < HPMAX*0.7 then
		if a == 6 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,7)
		end
	end
		
	if HP < HPMAX*0.62 then
		if a == 7 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,8)
		end
	end
		
	if HP < HPMAX*0.6 then
		if a == 8 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,9)
		end
	end
		
	if HP < HPMAX*0.52 then
		if a == 9 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,10)
		end
	end
		
	if HP < HPMAX*0.5 then
		if a == 10 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,11)
		end
	end
		
	if HP < HPMAX*0.42 then
		if a == 11 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,12)
		end
	end
		
	if HP < HPMAX*0.4 then
		if a == 12 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,13)
		end
	end
		
	if HP < HPMAX*0.32 then
		if a == 13 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,14)
		end
	end
		
	if HP < HPMAX*0.3 then
		if a == 14 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,15)
		end
	end
		
	if HP < HPMAX*0.22 then
		if a == 15 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,16)
		end
	end
		
	if HP < HPMAX*0.2 then
		if a == 16 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,17)
		end
	end
		
	if HP < HPMAX*0.12 then
		if a == 17 then
			AI:Say("Fire and Ice!")
			AI:ScreenText("Fire and Ice!", 2)	
			AI:SetArray(0 ,18)
		end
	end
		
	if HP < HPMAX*0.1 then
		if a == 18 then
			AI:Say("Dust unto dust...")
			AI:ScreenText("Dust unto dust...", 2)
			AI:AddSkill(2208, 1)
			AI:UseSkill(2208, 1)
			AI:SetArray(0 ,19)
		end
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
	
	AI:Say("Your attempts.will end up...futile.")
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
	AI:DelTimer(11)
	AI:SetArray(0, 0)
	AI:SetArray(1, 0)
	AI:SetArray(2, 0)
	
end