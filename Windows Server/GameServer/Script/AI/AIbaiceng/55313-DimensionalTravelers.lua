	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55313-DimensionalTravelers.lua
	--		Remark:?????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????????
		AI:Say("I will torture your spirit!")
		AI:AddSkill(2193, 1)
		AI:UseSkill(2193, 1)
	end
	
	if nIndex == 1 then
		--????????
		AI:Say("I will wear you down!")
		AI:AddSkill(2194, 1)
		AI:UseSkill(2194, 1)
		AI:AddSkill(2277,3)
		AI:UseSkill(2277,3)
	end
	
	if nIndex == 2 then
		--????????
		R = AI:GetRand(1)
		if R == 1 then
		AI:Say("I will show you my pain!")
		AI:AddSkill(2195, 1)
		AI:UseSkill(2195, 1)
		end
	end
	
	if nIndex == 3 then
		--????????
		AI:ScreenText("I will drain your life!",2)
		AI:Say("I will drain your life!")
		HPMAX = AI:GetHPMax()
		PlayerHP = AI:GetTargetHP()
		PlayerHPMAX = AI:GetTargetHPMax()
		AI:RestoreHPInstant(HPMAX*PlayerHP/PlayerHPMAX/2)
		AI:AddSkill(2197, 1)
		AI:UseSkill(2197, 1)
		AI:SetTimer(8,55000,1)
	end
	
	if nIndex == 4 then
		--????????????
		D = AI:GetArray(1)
		if D >= 3 then
			AI:ScreenText("Stop struggling and just give up your pathetic life!", 2)
			AI:Say("Stop struggling and just give up your pathetic life!")
			woli1 = AI:GetTargetHP()
			woli2 = AI:GetTargetHPMax()
			AI:RestoreHPInstant( woli1/woli2*2000000 )
			AI:AddSkill(2199, 1)
			AI:UseSkill(2199, 1)
			AI:SetArray(1, 0)
		else
			AI:SetArray(1,D+1)
			AI:ScreenText("Destruction will occur in " .. tostring(3-D) .. " sec."  , 2)
		end
	end
	
	if nIndex == 5 then
		--???????CD
		AI:SetArray(0,1)
	end
	
	if nIndex == 6 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
	if nIndex == 7 then
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
	
	if nIndex == 8 then
		--??:????????!
		AI:Say("The smell of your blood is making me hungry!")
		AI:ScreenText("The smell of your blood is making me hungry!", 2)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	
	t = AI:HaveAttackTarget()
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	PlayerHP = AI:GetTargetHP()
	PlayerHPMAX = AI:GetTargetHPMax()

	if t == false then
		if a > 0 then
			if HP == HPMAX then
				AI:DelTimer(0)
				AI:DelTimer(1)
				AI:DelTimer(2)
				AI:DelTimer(4)
				AI:DelTimer(5)
				AI:DelTimer(6)
				AI:SetArray(0,0)
				AI:SetArray(1,0)
			end
		end
	end
	
	if a == 0 then
		if HP < HPMAX then
			AI:Say("More prey arrives!")
			AI:AddSkill(2193, 1)
			AI:UseSkill(2193, 1)
			AI:SetTimer(0,15000,65535)
			AI:SetTimer(1,20000,65535)
			AI:SetTimer(2,10000,65535)
			AI:SetTimer(3,60000,65535)
			AI:SetTimer(6,240000,5)
			AI:SetTimer(7,10000,65535)
			AI:SetArray(0,1)
		end
	end
	
	if a == 1 then
		if PlayerHP < PlayerHPMAX*0.1 then
			AI:SetTimer(4,2000,4)
			AI:SetTimer(5,30000,1)
			AI:SetArray(0,2)
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
	
	AI:Say("The Void awaits my return..")
	AI:SetArray(0,0)
	AI:SetArray(1,0)
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:DelTimer(7)
	AI:DelTimer(8)
	
end