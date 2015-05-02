	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/10
	--		Author:???
	--		Class:	.Lua
	--		AIName:55316-TripleAngleChaos.lua
	--		Remark:????(??????)
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??????
		AI:Say("Rhapsody of Chaos!")
		AI:UseSkill(2200, 1)
		AI:AddSkill(2277,1)
		AI:UseSkill(2277,1)
	end
	
	if nIndex == 1 then
		--??????
		AI:Say("Etude of Chaos!")
		AI:UseSkill(2201, 1)
	end
	
	if nIndex == 2 then
		--??????
		AI:Say("Requiem of Chaos!")
		AI:UseSkill(2202, 1)
	end
	
	if nIndex == 3 then
		--??????
		AI:Say("There is no Chaos without Light! Revive, my brother!")
		mapid = AI:GetMapID()
		x1 = AI:GetEctypeVarShort(mapid , 91)
		y1 = AI:GetEctypeVarShort(mapid , 92)
		AI:SummonMonsterByPos(55314, x1, y1)
		AI:SetEctypeVarShort(mapid, 97, 2)
	end
	
	if nIndex == 4 then
		--??????
		AI:Say("There is no Chaos without Darkness! Revive, my brother!")
		mapid = AI:GetMapID()
		x2 = AI:GetEctypeVarShort(mapid , 93)
		y2 = AI:GetEctypeVarShort(mapid , 94)
		AI:SummonMonsterByPos(55315, x2, y2)
		AI:SetEctypeVarShort(mapid, 98, 2)
	end
	
	if nIndex == 5 then
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
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	
	r = AI:GetEctypeVarShort(mapid, 99);
	if r == 2 then
		AI:Say("The chaos will shatter your soul!")
		AI:PlayAction("specialidle", 1, 0)
		AI:PlayAction("skill\\Common\\fuhuo\\fire\\tx_common_fuhuo_fire.ini", 1, 1)
		AI:SetEctypeVarShort(mapid, 99, 0)
		fuhuoro = AI:GetEctypeVarShort(mapid,97)
		if fuhuoro == 3 then 
			AI:SetTimer(3,90000,1)
		end
		fuhuoroo = AI:GetEctypeVarShort(mapid,98)
		if fuhuoroo == 3 then 
			AI:SetTimer(4,90000,1)
		end
	end
	
	ro = AI:GetEctypeVarShort(mapid, 97)
	if ro == 1 then
		AI:SetTimer(3,90000,1)
		AI:SetEctypeVarShort(mapid, 97, 3)
	end
	if ro == 2 then
		AI:DelTimer(3)
	end
	
	roo = AI:GetEctypeVarShort(mapid, 98)
	if roo == 1 then
		AI:SetTimer(4,90000,1)
		AI:SetEctypeVarShort(mapid, 98, 3)
	end
	if roo == 2 then
		AI:DelTimer(4)
	end
	
	t = AI:HaveAttackTarget()
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	
	if t == false then
		if a > 0 then
			if HP == HPMAX then
				AI:DelTimer(0)
				AI:DelTimer(1)
				AI:DelTimer(2)
				AI:SetArray(0,1)
			end
		end
	end
	
	if a == 0 then
		AI:PlayAction("Common\\guangquan3\\tx_guangquan3_1.ini", 1, 1)
		AI:SetArray(0,1)
		AI:SetTimer(5,120000,5)
		AI:SetTimer(7,10000,65535)
	end
	
	if a == 1 then
		if HP < HPMAX * 0.95 then
			AI:Say("Follow the chaos, follow the Requiem!")
			AI:SetArray(0,2)
		end
	end
	
	if a == 2 then
		if HP < HPMAX * 0.90 then
			AI:Say("Rhapsody of Chaos!")
			AI:AddSkill(2200, 1)
			AI:UseSkill(2200, 1)
			AI:SetTimer(0,30000,65535)
			AI:SetArray(0,3)
		end
	end
	
	if a == 3 then
		if HP < HPMAX * 0.65 then
			AI:Say("Those who betray the chaos will be punished!")
			AI:SetArray(0,4)
		end
	end
	
	if a == 4 then
		if HP < HPMAX * 0.60 then
			AI:Say("Etude of Chaos!")
			AI:AddSkill(2201, 1)
			AI:UseSkill(2201, 1)
			AI:SetTimer(1,35000,65535)
			AI:SetArray(0,5)
		end
	end
	
	if a == 5 then
		if HP < HPMAX * 0.35 then
			AI:Say("Sing it, the Requiem of Chaos!")
			AI:SetArray(0,6)
		end
	end
	
	if a == 6 then
		if HP < HPMAX * 0.30 then
			AI:Say("Requiem of Chaos!")
			AI:AddSkill(2202, 1)
			AI:UseSkill(2202, 1)
			AI:SetTimer(2,40000,65535)
			AI:SetArray(0,7)
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
	
	mapid = AI:GetMapID()
	AI:Say("The chaos..has settled.")
	AI:SetEctypeVarShort(mapid, 99, 1)
	x = AI:GetPosX()
	y = AI:GetPosY()
	AI:SetEctypeVarShort(mapid, 95 , x)
	AI:SetEctypeVarShort(mapid, 96 , y)
	AI:SummonMonsterByPos(55519 , x ,y)
	AI:SetArray(0,0)
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	
end