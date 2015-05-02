	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55375-lv.lua
	--		Remark:?????-?????
	----------------------------------------------------
	--????11-14:??????,15??????1,16??????1,21-24??????1
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????
		P = AI:GetRand(7)
		if P == 0 then
			AI:AddSkill(2451, 4)
			AI:UseSkill(2451, 4)
			AI:Say("...")
		end
	end
	
	if nIndex == 1 then
		P = AI:GetRand(7)
		if P == 0 then
			AI:AddSkill(2452, 4)
			AI:UseSkill(2452, 4)
			Def4 = AI:GetEctypeVarShort(mapid,24)
			ttype = AI:GetTargetCharType()
			if ttype == 2 then
				AI:AddSkill(2432, 3)
				AI:UseSkill(2432, 3)--??
				AI:Say("...!!!")
			else
				if Def4 ~= 1 then
					AI:AddSkill(2432, 2)
					AI:UseSkill(2432, 2)--??
					AI:Say("!!!")
				end
			end
		end
	end
	
	if nIndex == 2 then
		--????
		P = AI:GetRand(7)
			if P == 0 then
			AI:AddSkill(2453, 4)
			AI:UseSkill(2453, 4)
			AI:Say("...!")
		end
	end
	
	if nIndex == 3 then
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
	
	if nIndex == 4 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	kongzhi1 = AI:GetEctypeVarShort(mapid,16)
	if kongzhi1 == 1 then
	
		a = AI:GetArray(0)
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
		
		if a == 0 then
--			AI:SetTimer(0,2000,65535)
--			AI:SetTimer(1,7000,65535)
--			AI:SetTimer(2,3000,65535)
--			AI:SetTimer(3,10000,65535)
--			AI:SetTimer(4,300000,5)
			AI:PlayAction("skill\\Common\\common_debuff\\keep\\tx_common_debuff_keep_70zhuxianrenwu.ini", 1, 1)
			AI:ChangeFaction(1)
			AI:SetArray(0 ,1)
		end
		
		mapid = AI:GetMapID()
--		Def1 = AI:GetEctypeVarShort(mapid,21)
--		Def4 = AI:GetEctypeVarShort(mapid,24)
--		AI:AddSkill(2455,1)
--		AI:UseSkill(2455,1)
--		AI:AddSkill(2454,1)
--		AI:UseSkill(2454,1)--??
--		if Def4 == 1 then
--			AI:AddSkill(2455,2)
--			AI:UseSkill(2455,2)--???
--		elseif Def1 == 1 then
--			AI:AddSkill(2454,2)
--			AI:UseSkill(2454,2)--???
--		end
		
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
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:ScreenText("Baranshee: You've made the right choice. I'll become your ally. Take this with you, Breath of Soulreaper!", 2)
	
	mapid = AI:GetMapID()
	AI:SetEctypeVarShort(mapid,14,0)
	AI:SetEctypeVarShort(mapid,24,1)
	SavedPid = AI:GetArray(11)
	AI:AddPlayerStatus(SavedPid, 6461, 1)
	AI:AddPlayerStatus(SavedPid, 6451, 1)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:SetArray(0, 0)
	AI:SetArray(10, 0)
	AI:SetArray(11, 0)
	AI:SetArray(12, 0)
	
end