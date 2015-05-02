	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55351-haimudaer.lua
	--		Remark:????-????
	----------------------------------------------------
	
	--????94-99:??????
	--????93:????????
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Say("Heed my advice, go no further my friend!")
		AI:ScreenText("Heed my advice, go no further my friend!", 2)
	end
	
	if nIndex == 1 then
		--????????
		AI:Say("In the name of the Allfather, I punish you!")
		AI:UseSkill(2301, 1)
	end
	
	if nIndex == 2 then
		--????????
		AI:Say("In the name of the Aesir, I judge you!")
		AI:UseSkill(2302, 1)
		AI:UseSkill(2277, 4)
	end
	
	if nIndex == 3 then
		--????????
		AI:Say("Angels, recover in the Holy Rain!")
		AI:UseSkill(2303, 1)
	end
	
	if nIndex == 4 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
	if nIndex == 5 then
		--??Buff
		mapid = AI:GetMapID()
		buffjishu = AI:GetArray(9)
		AI:SetArray(9,buffjishu+1)
		buffrate = buffjishu % 6
		mapid = AI:GetMapID()
		bufflv = AI:GetEctypeVarShort(mapid,99-buffrate)
		if bufflv == 0 then
			bufflv = 7
		end
		AI:AddSkill(2305+buffrate,bufflv)
		AI:UseSkill(2305+buffrate,bufflv)
	end
	
	if nIndex == 6 then
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
	
	if nIndex == 7 then
		--??????
		AI:SummonMonsterByPos(55352,182,126)
		AI:SummonMonsterByPos(55352,172,124)
		AI:SummonMonsterByPos(55352,163,129)
		AI:SummonMonsterByPos(55352,183,144)
		AI:SummonMonsterByPos(55352,173,148)
		AI:SummonMonsterByPos(55352,163,142)
	end
	
	if nIndex == 8 then
		--??Buff??
		a1 = AI:GetEctypeVarShort(mapid,99)
		a2 = AI:GetEctypeVarShort(mapid,98)
		a3 = AI:GetEctypeVarShort(mapid,97)
		a4 = AI:GetEctypeVarShort(mapid,96)
		a5 = AI:GetEctypeVarShort(mapid,95)
		a6 = AI:GetEctypeVarShort(mapid,94)
		AI:Say("Caritas: "..a1..", Industria: "..a2..", Temperantia: "..a3..", Humanitas: "..a4..", Humilitas: "..a5..", Patientia: "..a6)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	start = AI:GetEctypeVarShort(mapid,93)
	
	if a == 0 then
		AI:Say("How have you reached me?")
		AI:ScreenText("How have you reached me?", 2)
		AI:SetTimer(0,15000,65535)
		AI:SetArray(0 ,1)
	end
	
	if a == 1 then
		if HP < HPMAX * 0.95 then
			AI:ChangeFaction(1)
			AI:Say("You leave me no choice! You shall not pass!")
			AI:ScreenText("You leave me no choice! You shall not pass!", 2)
			AI:DelTimer(0)
			AI:SummonMonsterByPos(55352,182,126)
			AI:SummonMonsterByPos(55352,172,124)
			AI:SummonMonsterByPos(55352,163,129)
			AI:SummonMonsterByPos(55352,183,144)
			AI:SummonMonsterByPos(55352,173,148)
			AI:SummonMonsterByPos(55352,163,142)
			AI:AddSkill(2301, 1)
			AI:AddSkill(2302, 1)
			AI:AddSkill(2303, 1)
			AI:AddSkill(2277, 4)
			AI:SetTimer(1,14000,65535)
			AI:SetTimer(2,19000,65535)
			AI:SetTimer(3,59000,65535)
			AI:SetTimer(4,600000,5)
			AI:SetTimer(5,1000,65535)
			AI:SetTimer(6,10000,65535)
			AI:SetTimer(8,12000,65535)
			AI:SetArray(0 ,2)
		end
	end
	
	if start == 6 then
		AI:Say("How have you damaged the Heavenly Circle?")
		AI:ScreenText("How have you damaged the Heavenly Circle?", 2)
		AI:AddSkill(2304, 1)
		AI:UseSkill(2304, 1)
		AI:SetTimer(7,15000,1)
		AI:SetEctypeVarShort(mapid,93,0)
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
	
	AI:Say("How could a human fell a god..")
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:DelTimer(7)
	AI:DelTimer(8)
	AI:SetArray(0, 0)
	AI:SetArray(9, 0)
	AI:SetArray(10, 0)
	AI:SetArray(11, 0)
	
end